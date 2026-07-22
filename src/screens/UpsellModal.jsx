import { X, CheckCircle2, Crown, Gift } from "lucide-react";
import { Card, Button, Modal, useApp } from "../ui/kit.jsx";
import { PLANS } from "../lib/paystack.js";

const FEATURES = [
  { title: "Full question bank", desc: "Thousands of questions across every category" },
  { title: "Paper 1 / Paper 2 mock exams", desc: "Full-length, timed, curriculum-weighted" },
  { title: "OSCE Prep", desc: "Step-by-step procedures with marks and diagrams" },
  { title: "Viva / Instruments", desc: "Labeled diagrams and identification prep" },
];

export default function UpsellModal({ onClose, go }) {
  const { t, freeTrialRemaining, freeTrialLimit } = useApp();
  const used = freeTrialLimit - freeTrialRemaining;
  const pct = Math.min(100, Math.round((used / freeTrialLimit) * 100));

  return (
    <Modal onClose={onClose} width={420}>
      <div style={{ display: "flex", justifyContent: "flex-end", marginBottom: -6 }}>
        <button onClick={onClose} className="press" style={{ background: "none", border: "none", cursor: "pointer", padding: 4 }}>
          <X size={18} color={t.textFaint} />
        </button>
      </div>

      <div style={{ textAlign: "center", marginBottom: 18 }}>
        <div style={{ width: 52, height: 52, borderRadius: 16, background: t.navy, display: "flex", alignItems: "center", justifyContent: "center", margin: "0 auto 12px" }}>
          <Crown size={24} color="#fff" />
        </div>
        <div className="f-serif" style={{ fontSize: 18, fontWeight: 700, color: t.text, marginBottom: 4 }}>Unlock CCN Council Prep Pro</div>
        <div style={{ fontSize: 12.5, color: t.textMuted }}>Upgrade to unlock the full exam-prep experience</div>
      </div>

      <Card style={{ padding: 16, marginBottom: 16 }}>
        {FEATURES.map((f, i) => (
          <div key={i} style={{ display: "flex", gap: 10, padding: "7px 0", borderTop: i > 0 ? `1px solid ${t.cardBorder}` : "none" }}>
            <CheckCircle2 size={15} color={t.emerald || t.navy} style={{ flexShrink: 0, marginTop: 2 }} />
            <div>
              <div style={{ fontSize: 12.5, fontWeight: 700, color: t.text }}>{f.title}</div>
              <div style={{ fontSize: 11.5, color: t.textFaint }}>{f.desc}</div>
            </div>
          </div>
        ))}
      </Card>

      <Card style={{ padding: 14, marginBottom: 16, background: t.navySoft, border: `1px solid ${t.navy}22` }}>
        <div style={{ display: "flex", alignItems: "center", gap: 8, marginBottom: 8 }}>
          <Gift size={15} color={t.navy} />
          <div style={{ fontSize: 12.5, fontWeight: 700, color: t.text }}>Free Trial — {freeTrialRemaining} of {freeTrialLimit} questions left</div>
        </div>
        <div style={{ height: 6, borderRadius: 4, background: t.cardBorder, overflow: "hidden" }}>
          <div style={{ height: "100%", width: `${pct}%`, background: t.navy, borderRadius: 4 }} />
        </div>
        <div style={{ fontSize: 11, color: t.textFaint, marginTop: 8 }}>Try up to {freeTrialLimit} questions free, no card required — then subscribe to keep going.</div>
      </Card>

      <div style={{ display: "flex", gap: 10, marginBottom: 10 }}>
        <div style={{ flex: 1, border: `1px solid ${t.cardBorder}`, borderRadius: 12, padding: "12px 10px", textAlign: "center" }}>
          <div style={{ fontSize: 10.5, fontWeight: 700, color: t.textFaint, textTransform: "uppercase" }}>{PLANS["6month"].label}</div>
          <div className="f-serif" style={{ fontSize: 19, fontWeight: 700, color: t.text }}>₦{PLANS["6month"].amountNaira.toLocaleString()}</div>
        </div>
        <div style={{ flex: 1, border: `2px solid ${t.navy}`, borderRadius: 12, padding: "12px 10px", textAlign: "center" }}>
          <div style={{ fontSize: 10.5, fontWeight: 700, color: t.navy, textTransform: "uppercase" }}>{PLANS["1year"].label}</div>
          <div className="f-serif" style={{ fontSize: 19, fontWeight: 700, color: t.text }}>₦{PLANS["1year"].amountNaira.toLocaleString()}</div>
        </div>
      </div>

      <Button variant="primary" full icon={Crown} onClick={() => { onClose(); go("subscribe"); }}>View Subscription Plans</Button>
      <div style={{ textAlign: "center", marginTop: 10 }}>
        <button onClick={onClose} className="press" style={{ background: "none", border: "none", cursor: "pointer", fontSize: 12.5, color: t.textFaint, fontWeight: 600 }}>
          Continue with Free Trial
        </button>
      </div>
    </Modal>
  );
}
