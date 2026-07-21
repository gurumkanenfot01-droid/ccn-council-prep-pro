import { Lock, Crown } from "lucide-react";
import { Card, Button, useApp } from "../ui/kit.jsx";

export default function PaywallGate({ title, description, go, children }) {
  const { t, hasGrandfatheredAccess } = useApp();
  if (hasGrandfatheredAccess) return children;
  return (
    <div className="fade-in">
      <Card style={{ padding: 32, textAlign: "center", maxWidth: 420, margin: "40px auto 0" }}>
        <div style={{ width: 52, height: 52, borderRadius: 16, background: t.navy, display: "flex", alignItems: "center", justifyContent: "center", margin: "0 auto 16px" }}>
          <Lock size={24} color="#fff" />
        </div>
        <div style={{ fontSize: 16, fontWeight: 700, color: t.text, marginBottom: 8 }}>{title} is a subscriber feature</div>
        <div style={{ fontSize: 13, color: t.textMuted, lineHeight: 1.5, marginBottom: 20 }}>{description}</div>
        <Button variant="primary" full icon={Crown} onClick={() => go("subscribe")}>View Plans</Button>
      </Card>
    </div>
  );
}
