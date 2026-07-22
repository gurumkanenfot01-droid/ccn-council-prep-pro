import { LifeBuoy, MessageCircle, Mail, HelpCircle, Clock } from "lucide-react";
import { Card, SectionHeader, useApp } from "../ui/kit.jsx";

const WHATSAPP_NUMBER = "2349031853995";
const WHATSAPP_DISPLAY = "+234 903 185 3995";
const SUPPORT_EMAIL = "gurumkanenfot01@gmail.com";

const FAQS = [
  { q: "My payment went through but the app still shows locked content", a: "This usually clears itself within a minute of a successful payment. If it doesn't, reach out with your payment reference (from the Paystack receipt email) and we'll fix it manually." },
  { q: "I want to change my subscription plan", a: "Subscribing again before your current plan expires extends your access rather than replacing it — no need to cancel first." },
  { q: "I found a wrong answer or a bug", a: "Send the question text or a screenshot via WhatsApp or email — every report helps improve the question bank." },
  { q: "My school isn't in the Profile dropdown", a: "Choose \"Other\" and type it in, then let us know so it can be added for everyone." },
];

export default function SupportScreen() {
  const { t } = useApp();
  const waHref = `https://wa.me/${WHATSAPP_NUMBER}?text=${encodeURIComponent("Hi, I need help with CCN Council Prep Pro.")}`;

  return (
    <div className="fade-in">
      <SectionHeader icon={LifeBuoy} title="Customer Care" />

      <Card style={{ padding: 18, marginBottom: 16 }}>
        <div style={{ fontSize: 13, color: t.textMuted, lineHeight: 1.6 }}>
          Questions about your subscription, a payment issue, a wrong answer, or anything else — reach out directly and
          we'll get back to you as soon as possible.
        </div>
      </Card>

      <a href={waHref} target="_blank" rel="noopener noreferrer" style={{ textDecoration: "none" }}>
        <Card style={{ padding: 18, marginBottom: 14, display: "flex", alignItems: "center", gap: 14, background: t.navySoft, border: `1px solid ${t.navy}22` }}>
          <div style={{ width: 44, height: 44, borderRadius: 12, background: "#25D366", display: "flex", alignItems: "center", justifyContent: "center", flexShrink: 0 }}>
            <MessageCircle size={22} color="#fff" />
          </div>
          <div>
            <div style={{ fontSize: 11.5, fontWeight: 700, color: t.textFaint, textTransform: "uppercase", letterSpacing: 0.4 }}>WhatsApp</div>
            <div style={{ fontSize: 15, fontWeight: 700, color: t.text }}>{WHATSAPP_DISPLAY}</div>
          </div>
        </Card>
      </a>

      <a href={`mailto:${SUPPORT_EMAIL}`} style={{ textDecoration: "none" }}>
        <Card style={{ padding: 18, marginBottom: 20, display: "flex", alignItems: "center", gap: 14 }}>
          <div style={{ width: 44, height: 44, borderRadius: 12, background: t.navy, display: "flex", alignItems: "center", justifyContent: "center", flexShrink: 0 }}>
            <Mail size={20} color="#fff" />
          </div>
          <div>
            <div style={{ fontSize: 11.5, fontWeight: 700, color: t.textFaint, textTransform: "uppercase", letterSpacing: 0.4 }}>Email</div>
            <div style={{ fontSize: 14.5, fontWeight: 700, color: t.text }}>{SUPPORT_EMAIL}</div>
          </div>
        </Card>
      </a>

      <Card style={{ padding: "12px 16px", marginBottom: 20, display: "flex", alignItems: "center", gap: 10 }}>
        <Clock size={14} color={t.textFaint} />
        <div style={{ fontSize: 12, color: t.textFaint }}>Typical response time: within 24 hours</div>
      </Card>

      <Card style={{ padding: 18 }}>
        <div style={{ display: "flex", alignItems: "center", gap: 8, marginBottom: 12 }}>
          <HelpCircle size={16} color={t.navy} />
          <div style={{ fontSize: 13, fontWeight: 700, color: t.text }}>Common Questions</div>
        </div>
        {FAQS.map((f, i) => (
          <div key={i} style={{ padding: "10px 0", borderTop: i > 0 ? `1px solid ${t.cardBorder}` : "none" }}>
            <div style={{ fontSize: 12.5, fontWeight: 700, color: t.text, marginBottom: 4 }}>{f.q}</div>
            <div style={{ fontSize: 12, color: t.textMuted, lineHeight: 1.5 }}>{f.a}</div>
          </div>
        ))}
      </Card>
    </div>
  );
}
