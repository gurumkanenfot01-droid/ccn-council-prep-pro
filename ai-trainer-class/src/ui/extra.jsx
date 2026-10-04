import { ChevronLeft } from "lucide-react";
import { useApp } from "./kit.jsx";

// Theme tokens, global CSS and small widgets copied from the CCN app so both
// apps look and feel the same.

export const THEME = {
  light: {
    bg: "#F4F6F8", bgAlt: "#FFFFFF", card: "#FFFFFF", cardBorder: "#E4E8EC",
    text: "#0B1F33", textMuted: "#5B6B7C", textFaint: "#8B98A6",
    navy: "#0B3C5D", navyDark: "#082C45", navySoft: "#EAF2F8",
    emerald: "#1B8A5A", emeraldSoft: "#E6F5EE",
    red: "#C0392B", redSoft: "#FCEAE8",
    amber: "#B8860B", amberSoft: "#FBF3DF",
    shadow: "0 1px 2px rgba(11,31,51,0.06), 0 4px 16px rgba(11,31,51,0.06)",
    shadowLg: "0 8px 30px rgba(11,31,51,0.10)",
  },
  dark: {
    bg: "#0B1420", bgAlt: "#111C2B", card: "#131E2E", cardBorder: "#233246",
    text: "#EAF0F6", textMuted: "#9FB0C2", textFaint: "#6C7C8D",
    navy: "#4A9CD6", navyDark: "#0B3C5D", navySoft: "#132B3E",
    emerald: "#39C88B", emeraldSoft: "#0F2A20",
    red: "#F0685C", redSoft: "#2E1616",
    amber: "#E0B84A", amberSoft: "#2B2412",
    shadow: "0 1px 2px rgba(0,0,0,0.3), 0 4px 20px rgba(0,0,0,0.35)",
    shadowLg: "0 8px 34px rgba(0,0,0,0.45)",
  },
};

export function GlobalStyle({ t }) {
  return (
    <style>{`
      @import url('https://fonts.googleapis.com/css2?family=Manrope:wght@400;500;600;700;800&family=Lora:wght@500;600;700&family=JetBrains+Mono:wght@500;700&display=swap');
      * { box-sizing: border-box; }
      body { margin: 0; background: ${t.bg}; }
      .f-sans { font-family: 'Manrope', system-ui, sans-serif; }
      .f-serif { font-family: 'Lora', Georgia, serif; }
      .f-mono { font-family: 'JetBrains Mono', monospace; }
      .scroll-thin::-webkit-scrollbar { width: 6px; height: 6px; }
      .scroll-thin::-webkit-scrollbar-thumb { background: ${t.cardBorder}; border-radius: 3px; }
      .card-hover { transition: transform 0.18s ease, box-shadow 0.18s ease, border-color 0.18s ease; }
      .card-hover:hover { transform: translateY(-2px); box-shadow: ${t.shadowLg}; }
      .press { transition: transform 0.1s ease; }
      .press:active { transform: scale(0.97); }
      .fade-in { animation: fadeIn 0.3s ease; }
      .slide-up { animation: slideUp 0.35s cubic-bezier(0.16,1,0.3,1); }
      .pop { animation: pop 0.25s cubic-bezier(0.34,1.56,0.64,1); }
      @keyframes fadeIn { from { opacity: 0; } to { opacity: 1; } }
      @keyframes slideUp { from { opacity: 0; transform: translateY(14px); } to { opacity: 1; transform: translateY(0); } }
      @keyframes pop { from { opacity: 0; transform: scale(0.92); } to { opacity: 1; transform: scale(1); } }
      .wave-pulse { stroke-dasharray: 34 480; animation: waveTravel 3.6s linear infinite; }
      @keyframes waveTravel { from { stroke-dashoffset: 480; } to { stroke-dashoffset: -34; } }
      .tile-watermark { transition: transform 0.25s ease, opacity 0.25s ease; }
      .card-hover:hover .tile-watermark { transform: scale(1.08) rotate(-4deg); opacity: 0.12 !important; }
      ::selection { background: ${t.navy}33; }
      button { font-family: inherit; }
      input, textarea, select { font-family: inherit; }
      button:focus-visible, [tabindex]:focus-visible { outline: 2px solid ${t.navy}; outline-offset: 2px; }
      @media (prefers-reduced-motion: reduce) { .card-hover, .press, .fade-in, .slide-up, .pop, .wave-pulse { animation: none !important; transition: none !important; } }
    `}</style>
  );
}

export function ProgressRing({ pct, size = 148, stroke = 14, color, trackColor, label, sub }) {
  const { t } = useApp();
  const r = (size - stroke) / 2;
  const c = 2 * Math.PI * r;
  const offset = c - (Math.min(100, Math.max(0, pct)) / 100) * c;
  const ringColor = color || (pct >= 50 ? t.emerald : t.red);
  return (
    <div style={{ position: "relative", width: size, height: size, flexShrink: 0 }}>
      <svg width={size} height={size} style={{ transform: "rotate(-90deg)" }}>
        <circle cx={size / 2} cy={size / 2} r={r} fill="none" stroke={trackColor || t.cardBorder} strokeWidth={stroke} />
        <circle cx={size / 2} cy={size / 2} r={r} fill="none" stroke={ringColor} strokeWidth={stroke}
          strokeDasharray={c} strokeDashoffset={offset} strokeLinecap="round"
          style={{ transition: "stroke-dashoffset 0.9s cubic-bezier(0.16,1,0.3,1)" }} />
      </svg>
      <div style={{ position: "absolute", inset: 0, display: "flex", flexDirection: "column", alignItems: "center", justifyContent: "center" }}>
        <div className="f-mono" style={{ fontSize: size * 0.22, fontWeight: 800, color: t.text, lineHeight: 1 }}>{pct}%</div>
        {label && <div style={{ fontSize: 11, color: t.textMuted, marginTop: 4, fontWeight: 600, textAlign: "center" }}>{label}</div>}
        {sub && <div style={{ fontSize: 10.5, color: t.textFaint, marginTop: 1 }}>{sub}</div>}
      </div>
    </div>
  );
}

export function Toggle({ on, onClick, label }) {
  const { t } = useApp();
  return (
    <div onClick={onClick} role="switch" aria-checked={on} tabIndex={0}
      onKeyDown={e => { if (e.key === "Enter" || e.key === " ") { e.preventDefault(); onClick(); } }}
      style={{ display: "flex", alignItems: "center", gap: 10, cursor: "pointer" }}>
      {label && <span style={{ fontSize: 13.5, color: t.text, fontWeight: 600 }}>{label}</span>}
      <div style={{ width: 40, height: 22, borderRadius: 999, background: on ? t.navy : t.cardBorder, position: "relative", transition: "background 0.2s", flexShrink: 0 }}>
        <div style={{ width: 18, height: 18, borderRadius: "50%", background: "#fff", position: "absolute", top: 2, left: on ? 20 : 2, transition: "left 0.2s", boxShadow: "0 1px 3px rgba(0,0,0,0.3)" }} />
      </div>
    </div>
  );
}

export function ProgressBar({ pct, color, height = 8 }) {
  const { t } = useApp();
  return (
    <div style={{ height, background: t.cardBorder, borderRadius: height / 2, overflow: "hidden" }}>
      <div style={{ height: "100%", width: `${Math.min(100, Math.max(0, pct))}%`, background: color || t.emerald, transition: "width 0.5s ease" }} />
    </div>
  );
}

export function BackButton({ onClick, children }) {
  const { t } = useApp();
  return (
    <button onClick={onClick} className="press" style={{ display: "flex", alignItems: "center", gap: 6, background: "none", border: "none", color: t.navy, fontWeight: 700, fontSize: 13.5, cursor: "pointer", marginBottom: 16, padding: 0 }}>
      <ChevronLeft size={16} /> {children}
    </button>
  );
}

// The course pictures are diagrams on a white background, so they always sit
// on a white frame (also in dark mode).
export function Picture({ src, alt, maxHeight = 320, style }) {
  const { t } = useApp();
  if (!src) return null;
  return (
    <div style={{ background: "#fff", borderRadius: 14, border: `1px solid ${t.cardBorder}`, overflow: "hidden", display: "flex", justifyContent: "center", ...style }}>
      <img src={src} alt={alt || ""} loading="lazy" style={{ width: "100%", maxHeight, objectFit: "contain", display: "block" }} />
    </div>
  );
}

// Small labelled box used for "Why (explained simply)", "Key word", etc.
export function InfoBox({ icon: Icon, title, color, bg, children, action }) {
  const { t } = useApp();
  return (
    <div style={{ background: bg || t.bgAlt, border: `1px solid ${(color || t.cardBorder)}33`, borderRadius: 12, padding: "12px 14px" }}>
      <div style={{ display: "flex", alignItems: "center", justifyContent: "space-between", gap: 8, marginBottom: 6 }}>
        <div style={{ display: "flex", alignItems: "center", gap: 7, fontSize: 11.5, fontWeight: 800, color: color || t.navy, textTransform: "uppercase", letterSpacing: 0.5 }}>
          {Icon && <Icon size={14} />} {title}
        </div>
        {action}
      </div>
      <div style={{ fontSize: 14, color: t.text, lineHeight: 1.6 }}>{children}</div>
    </div>
  );
}
