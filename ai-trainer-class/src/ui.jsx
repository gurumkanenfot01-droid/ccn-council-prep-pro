import { createContext, useContext, useMemo } from "react";
import { CheckCircle2, HelpCircle, KeyRound, Lightbulb, ChevronLeft, X } from "lucide-react";
import { ListenButton } from "./lib/reader.jsx";
import { explainSpeech } from "./lib/quiz.js";

export const AppCtx = createContext(null);
export function useApp() { return useContext(AppCtx); }

export function Ring({ pct, size = 120, stroke = 12, color = "url(#ringGrad)", track = "var(--surface-2)", children }) {
  const r = (size - stroke) / 2;
  const c = 2 * Math.PI * r;
  const off = c - (Math.min(100, Math.max(0, pct)) / 100) * c;
  return (
    <div style={{ position: "relative", width: size, height: size, flexShrink: 0 }}>
      <svg width={size} height={size} style={{ transform: "rotate(-90deg)" }} aria-hidden="true">
        <defs>
          <linearGradient id="ringGrad" x1="0" y1="0" x2="1" y2="1"><stop offset="0" stopColor="#5B4BFF" /><stop offset="1" stopColor="#D946EF" /></linearGradient>
          <linearGradient id="ringMint" x1="0" y1="0" x2="1" y2="1"><stop offset="0" stopColor="#0FA97A" /><stop offset="1" stopColor="#22C3A6" /></linearGradient>
        </defs>
        <circle cx={size / 2} cy={size / 2} r={r} fill="none" stroke={track} strokeWidth={stroke} />
        <circle cx={size / 2} cy={size / 2} r={r} fill="none" stroke={color} strokeWidth={stroke} strokeLinecap="round"
          strokeDasharray={c} strokeDashoffset={off} style={{ transition: "stroke-dashoffset .9s cubic-bezier(.2,.8,.2,1)" }} />
      </svg>
      <div style={{ position: "absolute", inset: 0, display: "grid", placeItems: "center", textAlign: "center" }}>{children}</div>
    </div>
  );
}

export function Bar({ pct, brand, style }) {
  return <div className={`bar${brand ? " brand" : ""}`} style={style}><i style={{ width: `${Math.min(100, Math.max(0, pct))}%` }} /></div>;
}

export function Sheet({ onClose, children, wide }) {
  return (
    <div className="scrim" onClick={onClose}>
      <div className={`sheet${wide ? " wide" : ""}`} onClick={e => e.stopPropagation()} role="dialog">
        <div className="grabber" />
        {children}
      </div>
    </div>
  );
}

export function SheetHead({ title, onClose }) {
  return (
    <div className="between" style={{ marginBottom: 14 }}>
      <div className="h2">{title}</div>
      <button className="icon-btn" onClick={onClose} aria-label="Close"><X size={18} /></button>
    </div>
  );
}

export function Empty({ icon: Icon, title, sub, children }) {
  return (
    <div className="empty">
      {Icon && <div className="tile-icon" style={{ background: "var(--brand-soft)", color: "var(--brand-ink)" }}><Icon size={26} /></div>}
      <div className="h3" style={{ color: "var(--text)" }}>{title}</div>
      {sub && <div style={{ fontSize: 14, marginTop: 4 }}>{sub}</div>}
      {children && <div style={{ marginTop: 16 }}>{children}</div>}
    </div>
  );
}

export function PageHead({ eyebrow, title, sub, action, back }) {
  return (
    <div style={{ marginBottom: 22 }}>
      {back && (
        <button onClick={back.onClick} className="row" style={{ border: "none", background: "none", padding: 0, color: "var(--brand-ink)", fontWeight: 700, fontSize: 14, marginBottom: 14, gap: 4 }}>
          <ChevronLeft size={18} /> {back.label}
        </button>
      )}
      <div className="between" style={{ alignItems: "flex-end" }}>
        <div style={{ minWidth: 0 }}>
          {eyebrow && <div className="eyebrow" style={{ marginBottom: 6 }}>{eyebrow}</div>}
          <h1 className="h1">{title}</h1>
          {sub && <div className="muted" style={{ marginTop: 6 }}>{sub}</div>}
        </div>
        {action}
      </div>
    </div>
  );
}

export function Picture({ src, alt, style }) {
  if (!src) return null;
  return <div className="picture" style={style}><img src={src} alt={alt || ""} loading="lazy" /></div>;
}

export function Situation({ q, size = 15.5 }) {
  return (
    <div className="situation" style={{ fontSize: size }}>
      <div className="eyebrow">Situation</div>
      {q.sit}
    </div>
  );
}

// After answering: the model answer, "Why (explained simply)", the key word
// and a one-line rule to remember.
export function Explanation({ q, showAnswer = true }) {
  return (
    <div className="explain">
      {showAnswer && (
        <div className="explain-box" style={{ background: "var(--mint-soft)" }}>
          <div className="between">
            <div className="eyebrow" style={{ color: "var(--mint)" }}><CheckCircle2 size={14} /> The answer</div>
            <ListenButton text={explainSpeech(q)} id={`exp-${q.id}`} title="The answer" />
          </div>
          <div style={{ fontWeight: 600 }}>{q.ans}</div>
        </div>
      )}
      <div className="explain-box" style={{ background: "var(--brand-soft)" }}>
        <div className="between">
          <div className="eyebrow" style={{ color: "var(--brand-ink)" }}><HelpCircle size={14} /> Why (explained simply)</div>
          {!showAnswer && <ListenButton text={explainSpeech(q).slice(1)} id={`exp-${q.id}`} title="Why" />}
        </div>
        <div>{q.why}</div>
      </div>
      <div className="explain-box" style={{ background: "var(--sun-soft)" }}>
        <div className="eyebrow" style={{ color: "var(--sun)" }}><KeyRound size={14} /> Key word</div>
        <div><b>{q.kw}</b> — {q.km}</div>
      </div>
      <div className="row" style={{ alignItems: "flex-start", padding: "2px 4px", fontSize: 14.5 }}>
        <Lightbulb size={17} color="var(--sun)" style={{ flexShrink: 0, marginTop: 2 }} />
        <div><b>Remember:</b> {q.simple}</div>
      </div>
    </div>
  );
}

export function Confetti() {
  const pieces = useMemo(() => Array.from({ length: 70 }, (_, i) => ({
    left: (i * 37) % 100, delay: ((i * 13) % 20) / 20, color: ["#5B4BFF", "#D946EF", "#0FA97A", "#FFC14D", "#1E95EA", "#F04E5E"][i % 6], rot: (i * 47) % 360,
  })), []);
  return (
    <div className="confetti" aria-hidden="true">
      {pieces.map((p, i) => <i key={i} style={{ left: `${p.left}%`, background: p.color, animationDelay: `${p.delay}s`, transform: `rotate(${p.rot}deg)` }} />)}
    </div>
  );
}

export function StatTile({ icon: Icon, label, value, tone = "brand" }) {
  return (
    <div className="card pad" style={{ display: "flex", alignItems: "center", gap: 14 }}>
      <div className="tile-icon" style={{ background: `var(--${tone}-soft)`, color: `var(--${tone === "brand" ? "brand-ink" : tone})` }}><Icon size={21} /></div>
      <div style={{ minWidth: 0 }}>
        <div className="display mono" style={{ fontSize: 24, fontWeight: 800, lineHeight: 1.1 }}>{value}</div>
        <div className="faint" style={{ fontSize: 13, lineHeight: 1.3 }}>{label}</div>
      </div>
    </div>
  );
}
