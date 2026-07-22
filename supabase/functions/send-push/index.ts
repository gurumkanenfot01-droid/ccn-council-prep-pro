// Supabase Edge Function: send-push
//
// Broadcasts a web push notification to every stored subscription. Two ways
// to call it:
//   1. As a signed-in admin (from the Admin > Notifications screen) — the
//      caller's JWT is checked against profiles.role = 'admin'.
//   2. As a scheduled job (e.g. pg_cron + pg_net for a daily reminder) —
//      send header `x-cron-secret: <CRON_SECRET>` instead of a user JWT.
//
// Required secrets (set via the Supabase Dashboard's Edge Functions > Secrets UI):
//   VAPID_PUBLIC_KEY          - from the web-push VAPID keypair
//   VAPID_PRIVATE_KEY         - from the web-push VAPID keypair (keep secret)
//   VAPID_SUBJECT              - "mailto:gurumkanenfot01@gmail.com"
//   CRON_SECRET                 - any random string, only needed for scheduled sends
//   SUPABASE_URL / SUPABASE_SERVICE_ROLE_KEY / SUPABASE_ANON_KEY - auto-provided

import { createClient } from "https://esm.sh/@supabase/supabase-js@2";
import webpush from "npm:web-push@3";

const CORS_HEADERS = {
  "Access-Control-Allow-Origin": "*",
  "Access-Control-Allow-Headers": "authorization, x-client-info, apikey, content-type, x-cron-secret",
};

Deno.serve(async (req) => {
  if (req.method === "OPTIONS") return new Response("ok", { headers: CORS_HEADERS });

  try {
    const admin = createClient(Deno.env.get("SUPABASE_URL"), Deno.env.get("SUPABASE_SERVICE_ROLE_KEY"));

    const cronSecret = req.headers.get("x-cron-secret");
    const isCron = cronSecret && cronSecret === Deno.env.get("CRON_SECRET");

    if (!isCron) {
      const authHeader = req.headers.get("Authorization");
      if (!authHeader) throw new Error("Missing Authorization header");
      const userClient = createClient(
        Deno.env.get("SUPABASE_URL"),
        Deno.env.get("SUPABASE_ANON_KEY"),
        { global: { headers: { Authorization: authHeader } } }
      );
      const { data: userData, error: userErr } = await userClient.auth.getUser();
      if (userErr || !userData?.user) throw new Error("Could not authenticate caller");
      const { data: profile } = await admin.from("profiles").select("role").eq("id", userData.user.id).single();
      if (profile?.role !== "admin") return json({ success: false, error: "Admins only" }, 403);
    }

    const { title, body, url } = await req.json();
    if (!title || !body) throw new Error("title and body are required");

    webpush.setVapidDetails(
      Deno.env.get("VAPID_SUBJECT") || "mailto:gurumkanenfot01@gmail.com",
      Deno.env.get("VAPID_PUBLIC_KEY"),
      Deno.env.get("VAPID_PRIVATE_KEY")
    );

    const { data: subs, error: subsErr } = await admin.from("push_subscriptions").select("id, endpoint, p256dh, auth");
    if (subsErr) throw subsErr;

    const payload = JSON.stringify({ title, body, url: url || "/" });
    let sent = 0;
    const deadIds = [];

    await Promise.all(
      (subs || []).map(async (s) => {
        try {
          await webpush.sendNotification(
            { endpoint: s.endpoint, keys: { p256dh: s.p256dh, auth: s.auth } },
            payload
          );
          sent++;
        } catch (err) {
          if (err.statusCode === 404 || err.statusCode === 410) deadIds.push(s.id);
        }
      })
    );

    if (deadIds.length) await admin.from("push_subscriptions").delete().in("id", deadIds);

    return json({ success: true, sent, total: (subs || []).length, removed: deadIds.length }, 200);
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
