import { createContext, useContext, useMemo } from "react";
import { CheckCircle2, HelpCircle, KeyRound, Lightbulb, ChevronLeft, X } from "lucide-react";
import { ListenButton } from "./lib/reader.jsx";
import { explainSpeech } from "./lib/quiz.js";

export const AppCtx = createContext(null);
export function useApp() { return useContext(AppCtx); }

// Chunky progress ring: ink outline, flat colour fill.
export function Ring({ pct, size = 120, stroke = 12, color = "var(--brand-2)", track = "var(--surface-2)", children }) {
  const r = (size - stroke) / 2;
  const c = 2 * Math.PI * r;
  const off = c - (Math.min(100, Math.max(0, pct)) / 100) * c;
  return (
    <div style={{ position: "relative", width: size, height: size, flexShrink: 0 }}>
      <svg width={size} height={size} style={{ transform: "rotate(-90deg)" }} aria-hidden="true">
        <circle cx={size / 2} cy={size / 2} r={r} fill="none" stroke={track} strokeWidth={stroke} />
        <circle cx={size / 2} cy={size / 2} r={r} fill="none" stroke={color} strokeWidth={stroke} strokeLinecap="round"
          strokeDasharray={c} strokeDashoffset={pct > 0 ? off : c} style={{ transition: "stroke-dashoffset .9s cubic-bezier(.2,.8,.2,1)" }} />
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
      <div className={`sheet${wide ? " wide" : ""}`} onClick={e => e.stopPropagation()} role="dialog">{children}</div>
    </div>
  );
}

export function SheetHead({ title, onClose }) {
  return (
    <div className="between" style={{ marginBottom: 16 }}>
      <div className="h2">{title}</div>
      <button className="icon-btn" onClick={onClose} aria-label="Close"><X size={18} /></button>
    </div>
  );
}

export function Empty({ icon: Icon, title, sub, children }) {
  return (
    <div className="empty">
      {Icon && <div className="tile-icon"><Icon size={28} /></div>}
      <div className="h2" style={{ color: "var(--text)" }}>{title}</div>
      {sub && <div style={{ fontSize: 15, marginTop: 6 }}>{sub}</div>}
      {children && <div style={{ marginTop: 18 }}>{children}</div>}
    </div>
  );
}

// Page title: mono eyebrow, big grotesk headline with an optional italic serif word.
export function PageHead({ eyebrow, title, sub, action, back }) {
  return (
    <div style={{ marginBottom: 26 }}>
      {back && (
        <button onClick={back.onClick} className="btn sm" style={{ marginBottom: 18 }}>
          <ChevronLeft size={16} /> {back.label}
        </button>
      )}
      <div className="between" style={{ alignItems: "flex-end", flexWrap: "wrap" }}>
        <div style={{ minWidth: 0 }}>
          {eyebrow && <div className="eyebrow" style={{ marginBottom: 8 }}>{eyebrow}</div>}
          <h1 className="h1">{title}</h1>
          {sub && <div className="muted" style={{ marginTop: 10, fontSize: 16.5, maxWidth: 640 }}>{sub}</div>}
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
      <div className="eyebrow">📌 The situation</div>
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
        <div className="explain-box fill-green rise">
          <div className="between">
            <span className="stamp"><CheckCircle2 size={13} /> The answer</span>
            <ListenButton text={explainSpeech(q)} id={`exp-${q.id}`} title="The answer" />
          </div>
          <div style={{ fontWeight: 600, fontSize: 16.5, marginTop: 8 }}>{q.ans}</div>
        </div>
      )}
      <div className="explain-box fill-violet">
        <div className="between">
          <div className="eyebrow"><HelpCircle size={14} /> Why (explained simply)</div>
          {!showAnswer && <ListenButton text={explainSpeech(q).slice(1)} id={`exp-${q.id}`} title="Why" />}
        </div>
        <div style={{ fontSize: 15.5 }}>{q.why}</div>
      </div>
      <div className="explain-box fill-yellow">
        <div className="eyebrow"><KeyRound size={14} /> Key word</div>
        <div style={{ fontSize: 15.5 }}><b className="display">{q.kw}</b> — {q.km}</div>
      </div>
      <div className="row" style={{ alignItems: "flex-start", padding: "2px 4px", fontSize: 15 }}>
        <Lightbulb size={18} style={{ flexShrink: 0, marginTop: 2 }} />
        <div><span className="serif" style={{ fontSize: 19 }}>Remember:</span> {q.simple}</div>
      </div>
    </div>
  );
}

export function Confetti() {
  const pieces = useMemo(() => Array.from({ length: 60 }, (_, i) => ({
    left: (i * 37) % 100, delay: ((i * 13) % 20) / 20, color: ["#D4A657", "#1B6B53", "#E9C98B", "#0F4C3A", "#F7EEDC", "#7FB8A0"][i % 6],
  })), []);
  return (
    <div className="confetti" aria-hidden="true">
      {pieces.map((p, i) => <i key={i} style={{ left: `${p.left}%`, background: p.color, animationDelay: `${p.delay}s` }} />)}
    </div>
  );
}

const TONE_FILL = { brand: "violet", mint: "green", sun: "yellow", coral: "pink", sky: "blue", lime: "lime", orange: "orange" };

export function StatTile({ icon: Icon, label, value, tone = "brand" }) {
  return (
    <div className="card pad" style={{ display: "flex", flexDirection: "column", gap: 14 }}>
      <div className={`tile-icon fill-${TONE_FILL[tone] || tone}`}><Icon size={21} /></div>
      <div>
        <div className="mono" style={{ fontSize: 28, fontWeight: 700, lineHeight: 1 }}>{value}</div>
        <div className="faint" style={{ fontSize: 13.5, marginTop: 4, lineHeight: 1.3 }}>{label}</div>
      </div>
    </div>
  );
}

// Coloured icon square.
export function Ico({ icon: Icon, fill = "violet", size = 46 }) {
  return <div className={`tile-icon fill-${fill}`} style={{ width: size, height: size }}><Icon size={size * 0.46} /></div>;
}
