import { createContext, useContext } from "react";

// Shared UI primitives + the app context, extracted out of App.jsx so both
// App.jsx and the newer screens (src/screens/*.jsx) can import them without
// a circular App.jsx <-> screen import.

export const AppCtx = createContext(null);
export function useApp() { return useContext(AppCtx); }

export function Card({ children, style, hover, onClick, glass }) {
  const { t } = useApp();
  return (
    <div onClick={onClick} className={hover ? "card-hover press" : ""}
      style={{
        background: glass ? (t.card + "CC") : t.card,
        backdropFilter: glass ? "blur(12px)" : "none",
        border: `1px solid ${t.cardBorder}`, borderRadius: 16,
        boxShadow: t.shadow, cursor: onClick ? "pointer" : "default",
        ...style,
      }}>
      {children}
    </div>
  );
}

export function IconBadge({ icon: Icon, color, bg, size = 40 }) {
  return (
    <div style={{ width: size, height: size, borderRadius: size * 0.32, background: bg, display: "flex", alignItems: "center", justifyContent: "center", flexShrink: 0 }}>
      <Icon size={size * 0.5} color={color} strokeWidth={2.2} />
    </div>
  );
}

export function StatCard({ icon, label, value, color, bg, onClick }) {
  const { t } = useApp();
  return (
    <Card hover onClick={onClick} style={{ padding: 18, display: "flex", alignItems: "center", gap: 14 }}>
      <IconBadge icon={icon} color={color} bg={bg} />
      <div style={{ minWidth: 0 }}>
        <div className="f-mono" style={{ fontSize: 22, fontWeight: 700, color: t.text, lineHeight: 1.1 }}>{value}</div>
        <div style={{ fontSize: 12.5, color: t.textMuted, marginTop: 2, whiteSpace: "nowrap", overflow: "hidden", textOverflow: "ellipsis" }}>{label}</div>
      </div>
    </Card>
  );
}

export function Button({ children, onClick, variant = "primary", size = "md", icon: Icon, style, disabled, full }) {
  const { t } = useApp();
  const sizes = { sm: "8px 14px", md: "12px 20px", lg: "15px 26px" };
  const fontSizes = { sm: 13, md: 14.5, lg: 16 };
  const variants = {
    primary: { background: t.navy, color: "#fff", border: "none" },
    accent: { background: "#C0392B", color: "#fff", border: "none" },
    ghost: { background: "transparent", color: t.text, border: `1px solid ${t.cardBorder}` },
    soft: { background: t.navySoft, color: t.navy, border: "none" },
    success: { background: t.emerald, color: "#fff", border: "none" },
  };
  return (
    <button onClick={onClick} disabled={disabled} className="press"
      style={{
        ...variants[variant], padding: sizes[size], borderRadius: 12, fontWeight: 700,
        fontSize: fontSizes[size], cursor: disabled ? "default" : "pointer", opacity: disabled ? 0.45 : 1,
        display: "inline-flex", alignItems: "center", justifyContent: "center", gap: 8,
        width: full ? "100%" : "auto", transition: "filter 0.15s",
        ...style,
      }}>
      {Icon && <Icon size={fontSizes[size] + 2} />} {children}
    </button>
  );
}

export function Chip({ children, active, onClick, icon }) {
  const { t } = useApp();
  return (
    <button onClick={onClick} className="press"
      style={{
        padding: "9px 16px", borderRadius: 999, cursor: "pointer", fontSize: 13.5, fontWeight: 700,
        border: active ? `1.5px solid ${t.navy}` : `1px solid ${t.cardBorder}`,
        background: active ? t.navySoft : t.card, color: active ? t.navy : t.textMuted,
        display: "inline-flex", alignItems: "center", gap: 6, whiteSpace: "nowrap",
      }}>
      {icon} {children}
    </button>
  );
}

export function Modal({ children, onClose, width = 400 }) {
  const { t } = useApp();
  return (
    <div onClick={onClose} style={{ position: "fixed", inset: 0, background: "rgba(8,16,26,0.55)", backdropFilter: "blur(3px)", display: "flex", alignItems: "center", justifyContent: "center", zIndex: 50, padding: 18 }}>
      <div onClick={e => e.stopPropagation()} className="pop" style={{ background: t.card, borderRadius: 18, padding: 26, width: "100%", maxWidth: width, boxShadow: t.shadowLg, border: `1px solid ${t.cardBorder}`, maxHeight: "88vh", overflowY: "auto" }}>
        {children}
      </div>
    </div>
  );
}

export function SectionHeader({ icon: Icon, title, action }) {
  const { t } = useApp();
  return (
    <div style={{ display: "flex", alignItems: "center", justifyContent: "space-between", marginBottom: 16 }}>
      <div style={{ display: "flex", alignItems: "center", gap: 9 }}>
        {Icon && <Icon size={18} color={t.navy} />}
        <div className="f-serif" style={{ fontSize: 17, fontWeight: 700, color: t.text }}>{title}</div>
      </div>
      {action}
    </div>
  );
}

export function EmptyState({ icon: Icon, text, sub }) {
  const { t } = useApp();
  return (
    <div style={{ textAlign: "center", padding: "44px 20px", color: t.textMuted }}>
      {Icon && <Icon size={34} style={{ opacity: 0.4, marginBottom: 10 }} />}
      <div style={{ fontSize: 14.5, fontWeight: 600 }}>{text}</div>
      {sub && <div style={{ fontSize: 13, marginTop: 4, color: t.textFaint }}>{sub}</div>}
    </div>
  );
}

export function Field({ label, value, onChange, icon: Icon, type = "text" }) {
  const { t } = useApp();
  return (
    <div>
      <div style={{ fontSize: 11.5, fontWeight: 700, color: t.textMuted, marginBottom: 6, textTransform: "uppercase", letterSpacing: 0.4 }}>{label}</div>
      <div style={{ display: "flex", alignItems: "center", gap: 8, border: `1px solid ${t.cardBorder}`, borderRadius: 10, padding: "9px 12px", background: t.bgAlt }}>
        <Icon size={14} color={t.textFaint} />
        <input type={type} value={value || ""} onChange={e => onChange(e.target.value)} style={{ border: "none", outline: "none", background: "transparent", fontSize: 14, color: t.text, width: "100%" }} />
      </div>
    </div>
  );
}
