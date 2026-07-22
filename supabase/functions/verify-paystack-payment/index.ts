// Supabase Edge Function: verify-paystack-payment
//
// Called by the client after a Paystack Inline checkout completes. This is the
// ONLY place a subscription row is ever written — it independently re-verifies
// the payment with Paystack's secret key (never trust the client-side "success"
// callback alone, since that can be spoofed) before writing anything, using the
// service_role key which bypasses RLS.
//
// Required secrets (set via `supabase secrets set NAME=value`):
//   PAYSTACK_SECRET_KEY      - Paystack secret key (sk_test_... or sk_live_...)
//   SUPABASE_URL              - auto-provided by Supabase, no need to set manually
//   SUPABASE_SERVICE_ROLE_KEY - auto-provided by Supabase, no need to set manually

import { createClient } from "https://esm.sh/@supabase/supabase-js@2";

const CORS_HEADERS = {
  "Access-Control-Allow-Origin": "*",
  "Access-Control-Allow-Headers": "authorization, x-client-info, apikey, content-type",
};

// amount in kobo -> plan
const PLAN_AMOUNTS = {
  200000: { plan: "6month", days: 182 },
  400000: { plan: "1year", days: 365 },
};

Deno.serve(async (req) => {
  if (req.method === "OPTIONS") return new Response("ok", { headers: CORS_HEADERS });

  try {
    const authHeader = req.headers.get("Authorization");
    if (!authHeader) throw new Error("Missing Authorization header");

    // Client scoped to the caller's JWT — used only to securely identify who is calling.
    const userClient = createClient(
      Deno.env.get("SUPABASE_URL"),
      Deno.env.get("SUPABASE_ANON_KEY"),
      { global: { headers: { Authorization: authHeader } } }
    );
    const { data: userData, error: userErr } = await userClient.auth.getUser();
    if (userErr || !userData?.user) throw new Error("Could not authenticate caller");
    const user = userData.user;

    const { reference } = await req.json();
    if (!reference || typeof reference !== "string") throw new Error("Missing payment reference");

    const paystackSecret = Deno.env.get("PAYSTACK_SECRET_KEY");
    if (!paystackSecret) throw new Error("Server misconfigured: PAYSTACK_SECRET_KEY not set");

    const verifyRes = await fetch(`https://api.paystack.co/transaction/verify/${encodeURIComponent(reference)}`, {
      headers: { Authorization: `Bearer ${paystackSecret}` },
    });
    const verifyJson = await verifyRes.json();

    if (!verifyRes.ok || !verifyJson.status || verifyJson.data?.status !== "success") {
      return json({ success: false, error: "Payment not verified as successful" }, 402);
    }

    const tx = verifyJson.data;

    // Extra sanity check: the paying customer's email should match the caller's account.
    if (tx.customer?.email && user.email && tx.customer.email.toLowerCase() !== user.email.toLowerCase()) {
      return json({ success: false, error: "Payment email does not match account" }, 400);
    }

    const planInfo = PLAN_AMOUNTS[tx.amount];
    if (!planInfo) {
      return json({ success: false, error: "Payment amount does not match a known plan" }, 400);
    }

    const admin = createClient(Deno.env.get("SUPABASE_URL"), Deno.env.get("SUPABASE_SERVICE_ROLE_KEY"));

    // Extend from an existing still-active subscription's expiry, if any, so renewals stack.
    const { data: existing } = await admin
      .from("subscriptions")
      .select("expires_at")
      .eq("user_id", user.id)
      .eq("status", "active")
      .gt("expires_at", new Date().toISOString())
      .order("expires_at", { ascending: false })
      .limit(1)
      .maybeSingle();

    const base = existing?.expires_at ? new Date(existing.expires_at) : new Date();
    const expiresAt = new Date(base.getTime() + planInfo.days * 24 * 60 * 60 * 1000);

    const { error: upsertErr } = await admin.from("subscriptions").upsert(
      {
        user_id: user.id,
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

    return json({ success: true, plan: planInfo.plan, expires_at: expiresAt.toISOString() }, 200);
  } catch (err) {
    return json({ success: false, error: err.message || "Unknown error" }, 500);
  }
});

function json(body, status) {
  return new Response(JSON.stringify(body), {
    status,
    headers: { ...CORS_HEADERS, "Content-Type": "application/json" },
  });
}
