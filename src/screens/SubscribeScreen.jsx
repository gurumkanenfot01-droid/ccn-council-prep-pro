import { useState } from "react";
import { Crown, CheckCircle2, Lock, Loader2 } from "lucide-react";
import { Card, Button, SectionHeader, useApp } from "../ui/kit.jsx";
import { PLANS, openPaystackCheckout, verifyPaystackPayment } from "../lib/paystack.js";

const UNLOCKS = [
  "The full question bank (thousands of questions across every category)",
  "Paper 1 / Paper 2 full-length mock exams",
  "OSCE Prep — step-by-step procedures with marks and diagrams",
  "Viva / Instruments — labeled diagrams and identification prep",
];

function PlanCard({ id, onSubscribe, busy }) {
  const { t } = useApp();
  const p = PLANS[id];
  const perMonth = id === "1year" ? (p.amountNaira / 12).toFixed(0) : (p.amountNaira / 6).toFixed(0);
  return (
    <Card style={{ padding: 22, marginBottom: 14, border: id === "1year" ? `2px solid ${t.navy}` : `1px solid ${t.cardBorder}`, position: "relative" }}>
      {id === "1year" && (
        <div style={{ position: "absolute", top: -10, right: 16, background: t.navy, color: "#fff", fontSize: 10.5, fontWeight: 700, padding: "3px 10px", borderRadius: 20 }}>
          BEST VALUE
        </div>
      )}
      <div style={{ fontSize: 13, fontWeight: 700, color: t.navy, textTransform: "uppercase", letterSpacing: 0.5, marginBottom: 4 }}>{p.label}</div>
      <div style={{ display: "flex", alignItems: "baseline", gap: 6, marginBottom: 2 }}>
        <div className="f-serif" style={{ fontSize: 30, fontWeight: 700, color: t.text }}>₦{p.amountNaira.toLocaleString()}</div>
      </div>
      <div style={{ fontSize: 12, color: t.textFaint, marginBottom: 16 }}>≈ ₦{perMonth}/month</div>
      <Button variant={id === "1year" ? "primary" : "soft"} full disabled={busy} icon={busy ? Loader2 : Crown} onClick={() => onSubscribe(id)}>
        {busy ? "Processing…" : `Subscribe — ₦${p.amountNaira.toLocaleString()}`}
      </Button>
    </Card>
  );
}

export default function SubscribeScreen() {
  const { t, session, subscription, setSubscription } = useApp();
  const [busyPlan, setBusyPlan] = useState(null);
  const [error, setError] = useState("");
  const [success, setSuccess] = useState("");

  const isActive = subscription && new Date(subscription.expiresAt) > new Date();

  async function handleSubscribe(planId) {
    setError(""); setSuccess("");
    const email = session?.user?.email;
    if (!email) { setError("No account email found — please re-log in."); return; }
    setBusyPlan(planId);
    try {
      const reference = await openPaystackCheckout({ email, plan: planId });
      const result = await verifyPaystackPayment(reference);
      setSubscription({ plan: result.plan, status: "active", expiresAt: result.expires_at });
      setSuccess(`Subscribed! Access until ${new Date(result.expires_at).toLocaleDateString()}.`);
    } catch (err) {
      setError(err.message || "Payment failed — please try again.");
    } finally {
      setBusyPlan(null);
    }
  }

  return (
    <div className="fade-in">
      <SectionHeader icon={Crown} title="Subscription" />

      {isActive ? (
        <Card style={{ padding: 18, marginBottom: 20, background: t.navySoft, border: `1px solid ${t.navy}22` }}>
          <div style={{ display: "flex", alignItems: "center", gap: 8, marginBottom: 6 }}>
            <CheckCircle2 size={17} color={t.emerald || t.navy} />
            <div style={{ fontSize: 14, fontWeight: 700, color: t.text }}>Active — {PLANS[subscription.plan]?.label || subscription.plan} plan</div>
          </div>
          <div style={{ fontSize: 12.5, color: t.textMuted }}>
            Full access until <strong>{new Date(subscription.expiresAt).toLocaleDateString()}</strong>. Subscribing again before this date extends your access rather than replacing it.
          </div>
        </Card>
      ) : (
        <Card style={{ padding: "14px 18px", marginBottom: 20, background: t.navySoft, border: `1px solid ${t.navy}22` }}>
          <div style={{ display: "flex", alignItems: "center", gap: 8, marginBottom: 8 }}>
            <Lock size={15} color={t.navy} />
            <div style={{ fontSize: 13, fontWeight: 700, color: t.text }}>You're on the free preview</div>
          </div>
          <div style={{ fontSize: 12.5, color: t.textMuted, lineHeight: 1.5 }}>
            Mixed Revision, Daily Challenge, Weak Topics review, and your Bookmarks/Wrong Answers are always free.
            Subscribe to unlock everything else.
          </div>
        </Card>
      )}

      <Card style={{ padding: 18, marginBottom: 20 }}>
        <div style={{ fontSize: 13, fontWeight: 700, color: t.navy, marginBottom: 12 }}>What's unlocked</div>
        {UNLOCKS.map((u, i) => (
          <div key={i} style={{ display: "flex", gap: 10, padding: "7px 0", borderTop: i > 0 ? `1px solid ${t.cardBorder}` : "none" }}>
            <CheckCircle2 size={14} color={t.emerald || t.navy} style={{ flexShrink: 0, marginTop: 2 }} />
            <div style={{ fontSize: 12.5, color: t.text, lineHeight: 1.5 }}>{u}</div>
          </div>
        ))}
      </Card>

      {error && <Card style={{ padding: 14, marginBottom: 14, background: `${t.red}11`, border: `1px solid ${t.red}33` }}><div style={{ fontSize: 12.5, color: t.red, fontWeight: 600 }}>{error}</div></Card>}
      {success && <Card style={{ padding: 14, marginBottom: 14, background: `${t.emerald || t.navy}11`, border: `1px solid ${t.emerald || t.navy}33` }}><div style={{ fontSize: 12.5, color: t.emerald || t.navy, fontWeight: 600 }}>{success}</div></Card>}

      <PlanCard id="6month" onSubscribe={handleSubscribe} busy={busyPlan === "6month"} />
      <PlanCard id="1year" onSubscribe={handleSubscribe} busy={busyPlan === "1year"} />

      <div style={{ fontSize: 11, color: t.textFaint, textAlign: "center", marginTop: 8 }}>
        Payments are processed securely by Paystack. Card, bank transfer, and USSD are supported.
      </div>
    </div>
  );
}
