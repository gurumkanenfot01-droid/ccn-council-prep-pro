// Supabase Edge Function: paystack-webhook
//
// Paystack calls this URL directly, server-to-server, the moment a payment's
// final status is known — independent of whether the customer's browser is
// still open. This is the fix for bank transfer/USSD/direct-bank payments,
// which confirm asynchronously (often after the customer has already left
// the app), so the client-side verify-paystack-payment call never gets a
// chance to run. Card payments confirm instantly and are usually already
// covered by verify-paystack-payment, but this webhook covers them too as a
// safety net — the paystack_reference unique constraint makes writing the
// same transaction twice a harmless no-op.
//
// SECURITY: unlike the other two functions, this one is called by Paystack's
// servers with no Supabase user JWT at all, so it must be deployed with
// "Verify JWT" turned OFF in the Supabase Dashboard (Edge Functions ->
// paystack-webhook -> Settings). Authenticity is instead verified using
// Paystack's HMAC-SHA512 request signature below — never skip that check.
//
// Required secrets (already set for verify-paystack-payment, reused here):
//   PAYSTACK_SECRET_KEY      - Paystack secret key (sk_test_... or sk_live_...)
//   SUPABASE_URL              - auto-provided by Supabase
//   SUPABASE_SERVICE_ROLE_KEY - auto-provided by Supabase
//
// After deploying, set this URL as the Webhook URL in the Paystack
// Dashboard: Settings -> API Keys & Webhooks ->
//   https://<project-ref>.supabase.co/functions/v1/paystack-webhook

import { createClient } from "https://esm.sh/@supabase/supabase-js@2";
import crypto from "node:crypto";

const PLAN_AMOUNTS = {
  200000: { plan: "6month", days: 182 },
  400000: { plan: "1year", days: 365 },
};

Deno.serve(async (req) => {
  if (req.method !== "POST") return new Response("ok", { status: 200 });

  try {
    const rawBody = await req.text();

    const paystackSecret = Deno.env.get("PAYSTACK_SECRET_KEY");
    if (!paystackSecret) throw new Error("Server misconfigured: PAYSTACK_SECRET_KEY not set");

    // Verify this request genuinely came from Paystack before trusting anything in it.
    const signature = req.headers.get("x-paystack-signature") || "";
    const expected = crypto.createHmac("sha512", paystackSecret).update(rawBody).digest("hex");
    if (signature !== expected) {
      return new Response("invalid signature", { status: 401 });
    }

    const event = JSON.parse(rawBody);

    // Only act on successful charges — ignore everything else (refunds,
    // disputes, subscription events, etc.), but always return 200 so
    // Paystack doesn't keep retrying events we don't care about.
    if (event.event !== "charge.success") {
      return new Response("ignored", { status: 200 });
    }

    const tx = event.data;
    const reference = tx.reference;
    const email = tx.customer?.email;
    if (!reference || !email) return new Response("missing reference/email", { status: 200 });

    const planInfo = PLAN_AMOUNTS[tx.amount];
    if (!planInfo) return new Response("amount does not match a known plan", { status: 200 });

    const admin = createClient(Deno.env.get("SUPABASE_URL"), Deno.env.get("SUPABASE_SERVICE_ROLE_KEY"));

    const { data: profile } = await admin
      .from("profiles")
      .select("id")
      .ilike("email", email)
      .maybeSingle();

    // No matching account (paid before signing up, or paid with a different
    // email than their account) — acknowledge the webhook so Paystack stops
    // retrying, but there's no user to attach this to yet. Falls to the same
    // manual-reconciliation process used for the earlier backlog.
    if (!profile) return new Response("no matching account", { status: 200 });

    const { data: existing } = await admin
      .from("subscriptions")
      .select("expires_at")
      .eq("user_id", profile.id)
      .eq("status", "active")
      .gt("expires_at", new Date().toISOString())
      .order("expires_at", { ascending: false })
      .limit(1)
      .maybeSingle();

    const base = existing?.expires_at ? new Date(existing.expires_at) : new Date();
    const expiresAt = new Date(base.getTime() + planInfo.days * 24 * 60 * 60 * 1000);

    const { error: upsertErr } = await admin.from("subscriptions").upsert(
      {
        user_id: profile.id,
        plan: planInfo.plan,
        status: "active",
        paystack_reference: reference,
        amount_kobo: tx.amount,
        starts_at: new Date().toISOString(),
        expires_at: expiresAt.toISOString(),
      },
      { onConflict: "paystack_reference" }
    );
    if (upsertErr) throw upsertErr;

    return new Response("ok", { status: 200 });
  } catch (err) {
    console.error("paystack-webhook error:", err);
    // Still return 200 so Paystack doesn't hammer this endpoint with retries
    // for an error that a retry won't fix; the failure is visible in logs.
    return new Response("error logged", { status: 200 });
  }
});
