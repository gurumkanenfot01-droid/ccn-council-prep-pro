import { createContext, useContext, useEffect, useRef, useState } from "react";
import { Headphones, Volume2, Square, Pause, Play, SkipBack, SkipForward, X } from "lucide-react";
import { useApp } from "../ui/kit.jsx";
import { loadJSON, saveJSON } from "./store.js";

// The AI Reader: reads any text out loud with the device's built-in voice
// (Web Speech API), so it is free, needs no account and works offline on most
// phones. Text is spoken one sentence at a time; that keeps Chrome from cutting
// long speech off, lets us show the sentence being read, and makes pause /
// back / next reliable on every browser (pause = stop and remember the place).

const ReaderCtx = createContext(null);
export function useReader() { return useContext(ReaderCtx); }

export const SPEEDS = [0.75, 0.9, 1, 1.15, 1.3];

function cleanForSpeech(text) {
  return String(text || "")
    .replace(/₦\s?([\d,.]+)/g, "$1 naira")
    .replace(/×/g, " times ")
    .replace(/÷/g, " divided by ")
    .replace(/(\d)\s?°\s?C/g, "$1 degrees Celsius")
    .replace(/°/g, " degrees")
    .replace(/²/g, " squared")
    .replace(/π/g, "pi")
    .replace(/\be\.g\./gi, "for example")
    .replace(/\bi\.e\./gi, "that is")
    .replace(/&/g, " and ")
    .replace(/\p{Extended_Pictographic}/gu, "")
    .replace(/\s+/g, " ")
    .trim();
}

function splitChunks(parts) {
  const out = [];
  (Array.isArray(parts) ? parts : [parts]).flat(Infinity).forEach(p => {
    const text = cleanForSpeech(p);
    if (!text) return;
    text.split(/(?<=[.!?:])\s+(?=["“(A-Z0-9])/).forEach(sentence => {
      let s = sentence.trim();
      while (s.length > 220) {
        const cut = Math.max(s.lastIndexOf(", ", 200), s.lastIndexOf("; ", 200));
        const at = cut > 60 ? cut + 1 : 200;
        out.push(s.slice(0, at).trim());
        s = s.slice(at).trim();
      }
      if (s) out.push(s);
    });
  });
  return out;
}

export function ReaderProvider({ children }) {
  const supported = typeof window !== "undefined" && "speechSynthesis" in window && "SpeechSynthesisUtterance" in window;
  const [settings, setSettings] = useState(() => ({ rate: 0.9, voiceURI: "", autoRead: false, ...loadJSON("reader", {}) }));
  const [voices, setVoices] = useState([]);
  const [status, setStatus] = useState("idle"); // idle | playing | paused
  const [label, setLabel] = useState(null);
  const [chunks, setChunks] = useState([]);
  const [index, setIndex] = useState(0);
  const chunksRef = useRef([]);
  const indexRef = useRef(0);
  const tokenRef = useRef(0);
  const settingsRef = useRef(settings);
  settingsRef.current = settings;

  useEffect(() => {
    if (!supported) return;
    function load() {
      const all = window.speechSynthesis.getVoices();
      const english = all.filter(v => /^en/i.test(v.lang));
      setVoices(english.length ? english : all);
    }
    load();
    window.speechSynthesis.addEventListener("voiceschanged", load);
    return () => {
      window.speechSynthesis.removeEventListener("voiceschanged", load);
      window.speechSynthesis.cancel();
    };
  }, [supported]);

  function updateSettings(patch) {
    setSettings(s => { const next = { ...s, ...patch }; saveJSON("reader", next); return next; });
  }

  function pickVoice() {
    const all = window.speechSynthesis.getVoices();
    const wanted = settingsRef.current.voiceURI;
    return (wanted && all.find(v => v.voiceURI === wanted))
      || all.find(v => /^en[-_](NG|GB)/i.test(v.lang))
      || all.find(v => /^en/i.test(v.lang) && v.localService)
      || all.find(v => /^en/i.test(v.lang))
      || null;
  }

  function playFrom(i) {
    const synth = window.speechSynthesis;
    const token = ++tokenRef.current;
    synth.cancel();
    if (i < 0) i = 0;
    if (i >= chunksRef.current.length) { setStatus("idle"); setLabel(null); return; }
    indexRef.current = i;
    setIndex(i);
    setStatus("playing");
    const u = new SpeechSynthesisUtterance(chunksRef.current[i]);
    const voice = pickVoice();
    if (voice) { u.voice = voice; u.lang = voice.lang; } else u.lang = "en-GB";
    u.rate = settingsRef.current.rate;
    u.onend = () => { if (token === tokenRef.current) playFrom(i + 1); };
    u.onerror = e => {
      if (token !== tokenRef.current || e.error === "interrupted" || e.error === "canceled") return;
      playFrom(i + 1);
    };
    // A short gap after cancel() stops some Android/Chrome builds from dropping the next utterance.
    setTimeout(() => { if (token === tokenRef.current) synth.speak(u); }, 60);
  }

  function speak(parts, newLabel) {
    if (!supported) return;
    const list = splitChunks(parts);
    if (!list.length) return;
    chunksRef.current = list;
    setChunks(list);
    setLabel(newLabel || "Reading");
    playFrom(0);
  }

  function stop() {
    if (!supported) return;
    tokenRef.current++;
    window.speechSynthesis.cancel();
    setStatus("idle");
    setLabel(null);
  }

  function pause() {
    if (!supported) return;
    tokenRef.current++;
    window.speechSynthesis.cancel();
    setStatus("paused");
  }

  function resume() { playFrom(indexRef.current); }
  function next() { playFrom(indexRef.current + 1); }
  function prev() { playFrom(indexRef.current - 1); }

  // Tap once to read, tap the same button again to stop.
  function toggle(parts, key) {
    if (label === key && status !== "idle") stop();
    else speak(parts, key);
  }

  const value = { supported, settings, updateSettings, voices, status, label, chunks, index, speak, stop, pause, resume, next, prev, toggle };
  return <ReaderCtx.Provider value={value}>{children}</ReaderCtx.Provider>;
}

// Small "Listen" button that sits next to any text.
export function ListenButton({ text, id, label = "Listen", size = "sm", light, style }) {
  const { t } = useApp();
  const reader = useReader();
  if (!reader?.supported) return null;
  const active = reader.label === id && reader.status !== "idle";
  const color = light ? "#fff" : active ? "#fff" : t.navy;
  const bg = light ? "rgba(255,255,255,0.15)" : active ? t.navy : t.navySoft;
  return (
    <button onClick={e => { e.stopPropagation(); reader.toggle(text, id); }} className="press"
      aria-label={active ? "Stop reading" : `${label}: read this out loud`}
      style={{
        display: "inline-flex", alignItems: "center", gap: 6, flexShrink: 0,
        padding: size === "sm" ? "6px 11px" : "9px 15px", borderRadius: 999, border: "none",
        background: bg, color, fontSize: size === "sm" ? 12 : 13.5, fontWeight: 700, cursor: "pointer", ...style,
      }}>
      {active ? <Square size={size === "sm" ? 12 : 14} fill={color} /> : <Volume2 size={size === "sm" ? 14 : 16} />}
      {active ? "Stop" : label}
    </button>
  );
}

// Floating player shown while the AI Reader is reading or paused.
export function ReaderBar() {
  const { t, isMobile } = useApp();
  const r = useReader();
  if (!r?.supported || r.status === "idle") return null;
  const speedIdx = Math.max(0, SPEEDS.indexOf(r.settings.rate));
  const nextSpeed = SPEEDS[(speedIdx + 1) % SPEEDS.length];
  const btn = { background: "rgba(255,255,255,0.14)", border: "none", borderRadius: 10, width: 36, height: 36, display: "flex", alignItems: "center", justifyContent: "center", cursor: "pointer", color: "#fff", flexShrink: 0 };
  return (
    <div className="slide-up" role="region" aria-label="AI Reader"
      style={{
        position: "fixed", left: 12, right: 12, bottom: isMobile ? 70 : 18, zIndex: 35,
        maxWidth: 640, margin: "0 auto", background: t.navyDark, color: "#fff", borderRadius: 16,
        boxShadow: "0 10px 30px rgba(0,0,0,0.3)", padding: "10px 12px", display: "flex", alignItems: "center", gap: 10,
      }}>
      <div style={{ width: 36, height: 36, borderRadius: 10, background: "#C0392B", display: "flex", alignItems: "center", justifyContent: "center", flexShrink: 0 }}>
        <Headphones size={18} />
      </div>
      <div style={{ flex: 1, minWidth: 0 }}>
        <div style={{ fontSize: 10.5, fontWeight: 800, opacity: 0.7, textTransform: "uppercase", letterSpacing: 0.5 }}>
          AI Reader · {r.index + 1}/{r.chunks.length}
        </div>
        <div style={{ fontSize: 12.5, lineHeight: 1.35, whiteSpace: "nowrap", overflow: "hidden", textOverflow: "ellipsis" }}>{r.chunks[r.index]}</div>
      </div>
      <button style={btn} onClick={r.prev} aria-label="Back one sentence"><SkipBack size={15} /></button>
      {r.status === "playing"
        ? <button style={btn} onClick={r.pause} aria-label="Pause"><Pause size={16} /></button>
        : <button style={btn} onClick={r.resume} aria-label="Play"><Play size={16} /></button>}
      {!isMobile && <button style={btn} onClick={r.next} aria-label="Next sentence"><SkipForward size={15} /></button>}
      <button style={{ ...btn, width: "auto", padding: "0 10px", fontSize: 12, fontWeight: 800 }} className="f-mono"
        onClick={() => r.updateSettings({ rate: nextSpeed })} aria-label="Change reading speed">{r.settings.rate}x</button>
      <button style={btn} onClick={r.stop} aria-label="Stop reading"><X size={16} /></button>
    </div>
  );
}
