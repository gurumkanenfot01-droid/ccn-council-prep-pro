import { createContext, useContext, useEffect, useRef, useState } from "react";
import { Headphones, Volume2, Square, Pause, Play, SkipBack, SkipForward, X, Settings2 } from "lucide-react";
import { loadJSON, saveJSON } from "./store.js";

// The AI Reader reads any text out loud with the device's own voice (Web
// Speech API): free, no account, and it works offline on most phones. Text is
// spoken one sentence at a time. That stops Chrome cutting long speech off,
// lets the player show the sentence being read as a caption, and makes pause /
// back / next work the same on every browser.

const ReaderCtx = createContext(null);
export function useReader() { return useContext(ReaderCtx); }

export const SPEEDS = [0.75, 0.9, 1, 1.15, 1.3];
export const SPEED_NAMES = { 0.75: "Slow", 0.9: "Calm", 1: "Normal", 1.15: "Quick", 1.3: "Fast" };

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
    text.split(/(?<=[.!?])\s+(?=["“(A-Z0-9])/).forEach(sentence => {
      let s = sentence.trim();
      while (s.length > 220) {
        const cut = Math.max(s.lastIndexOf(", ", 200), s.lastIndexOf("; ", 200));
        const at = cut > 60 ? cut + 1 : 200;
        out.push(s.slice(0, at).trim());
        s = s.slice(at).trim();
      }
      if (!s) return;
      if (out.length && /^(Step|Option|Example|Question|Task) [\w]+[.:]?$/.test(out[out.length - 1])) out[out.length - 1] += " " + s;
      else out.push(s);
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
  const [title, setTitle] = useState("");
  const [chunks, setChunks] = useState([]);
  const [index, setIndex] = useState(0);
  const chunksRef = useRef([]);
  const indexRef = useRef(0);
  const tokenRef = useRef(0);
  const onDoneRef = useRef(null);
  const startedRef = useRef(false);
  const [problem, setProblem] = useState(null); // null | "novoice" | "blocked"
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

  function finish() {
    setStatus("idle");
    setLabel(null);
    const done = onDoneRef.current;
    onDoneRef.current = null;
    if (done) done();
  }

  function playFrom(i) {
    const synth = window.speechSynthesis;
    const token = ++tokenRef.current;
    const wasBusy = synth.speaking || synth.pending;
    // Android Chrome ignores speak() right after cancel(), so only cancel when needed.
    if (wasBusy) synth.cancel();
    if (i < 0) i = 0;
    if (i >= chunksRef.current.length) { finish(); return; }
    indexRef.current = i;
    setIndex(i);
    setStatus("playing");
    const u = new SpeechSynthesisUtterance(chunksRef.current[i]);
    const voice = pickVoice();
    if (voice) { u.voice = voice; u.lang = voice.lang; } else u.lang = "en-US";
    u.rate = settingsRef.current.rate;
    u.onstart = () => { if (token === tokenRef.current) { startedRef.current = true; setProblem(null); } };
    u.onend = () => { if (token === tokenRef.current) playFrom(i + 1); };
    u.onerror = e => {
      if (token !== tokenRef.current || e.error === "interrupted" || e.error === "canceled") return;
      if (!startedRef.current) { setProblem(e.error === "not-allowed" ? "blocked" : "novoice"); setStatus("paused"); return; }
      playFrom(i + 1);
    };
    const go = () => {
      if (token !== tokenRef.current) return;
      synth.resume(); // Chrome can get stuck "paused" after the phone sleeps
      synth.speak(u);
    };
    // Speak straight away (inside the tap), so phones allow the sound.
    if (wasBusy) setTimeout(go, 80); else go();
    // If no sound starts at all, the phone probably has no reading voice.
    if (!startedRef.current) {
      setTimeout(() => {
        if (token === tokenRef.current && !startedRef.current && !synth.speaking) { setProblem("novoice"); setStatus("paused"); }
      }, 4000);
    }
  }

  // speak(textOrParts, id, { title, onDone }): onDone runs only when reading
  // reaches the end by itself (not when the learner stops it).
  function speak(parts, id, opts = {}) {
    if (!supported) return;
    const list = splitChunks(parts);
    if (!list.length) return;
    chunksRef.current = list;
    onDoneRef.current = opts.onDone || null;
    startedRef.current = false;
    setProblem(null);
    setChunks(list);
    setLabel(id || "reading");
    setTitle(opts.title || "");
    playFrom(0);
  }

  function stop() {
    if (!supported) return;
    tokenRef.current++;
    onDoneRef.current = null;
    window.speechSynthesis.cancel();
    setStatus("idle");
    setLabel(null);
    setProblem(null);
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
  function toggle(parts, id, opts) {
    if (label === id && status !== "idle") stop();
    else speak(parts, id, opts);
  }

  const value = { problem, setProblem, supported, settings, updateSettings, voices, status, label, title, chunks, index, speak, stop, pause, resume, next, prev, toggle };
  return <ReaderCtx.Provider value={value}>{children}</ReaderCtx.Provider>;
}

export function ListenButton({ text, id, label = "Listen", title, style }) {
  const r = useReader();
  if (!r?.supported) return null;
  const active = r.label === id && r.status !== "idle";
  return (
    <button className={`listen${active ? " on" : ""}`} style={style}
      onClick={e => { e.stopPropagation(); r.toggle(text, id, { title: title || label }); }}
      aria-label={active ? "Stop reading" : `${label || "Listen"}: read out loud`}>
      {active ? <Square size={12} fill="currentColor" /> : <Volume2 size={15} />}
      {active ? (label ? "Stop" : null) : label}
    </button>
  );
}

export function Wave({ on }) {
  return <div className={`wave${on ? " on" : ""}`} aria-hidden="true"><i /><i /><i /><i /><i /></div>;
}

// Reader settings, used in the dock sheet and on the Me screen.
export function ReaderSettings() {
  const r = useReader();
  if (!r?.supported) return <div className="soft muted">The AI Reader does not work in this browser. Try Chrome, Edge or Safari.</div>;
  return (
    <div className="stack" style={{ gap: 16 }}>
      <div>
        <label className="label" htmlFor="voice">Voice</label>
        <select id="voice" className="input" value={r.settings.voiceURI} onChange={e => r.updateSettings({ voiceURI: e.target.value })}>
          <option value="">Best voice for me (automatic)</option>
          {r.voices.map(v => <option key={v.voiceURI} value={v.voiceURI}>{v.name} ({v.lang})</option>)}
        </select>
      </div>
      <div>
        <span className="label">Speed</span>
        <div className="chips">
          {SPEEDS.map(s => <button key={s} className={`chip${r.settings.rate === s ? " on" : ""}`} onClick={() => r.updateSettings({ rate: s })}>{SPEED_NAMES[s]}</button>)}
        </div>
      </div>
      <div className="between">
        <div>
          <div style={{ fontWeight: 700 }}>Read each task to me</div>
          <div className="faint" style={{ fontSize: 13 }}>Starts reading by itself when a new task or question opens</div>
        </div>
        <button className={`switch${r.settings.autoRead ? " on" : ""}`} role="switch" aria-checked={r.settings.autoRead} aria-label="Read each task to me" onClick={() => r.updateSettings({ autoRead: !r.settings.autoRead })} />
      </div>
      <button className="btn soft" onClick={() => r.speak("Hello! I am your AI Reader. Tap Listen on any card, and I will read it to you.", "test-voice", { title: "Voice test" })}>
        <Volume2 size={17} /> Test the voice
      </button>
    </div>
  );
}

// Shown when the phone did not start speaking, with the usual fixes.
function VoiceHelp({ problem }) {
  const android = /android/i.test(navigator.userAgent);
  const ios = /iphone|ipad|ipod/i.test(navigator.userAgent);
  return (
    <div style={{ margin: "10px 2px 12px", fontSize: 14.5, lineHeight: 1.5 }}>
      <div style={{ fontWeight: 800, marginBottom: 6 }}>{problem === "blocked" ? "Tap Play to start the voice." : "No sound? Try this:"}</div>
      <ol style={{ margin: 0, paddingLeft: 20 }}>
        <li>Turn up the <b>media volume</b> (press the volume button while the app is open).</li>
        {android && <li>Install or update <a href="https://play.google.com/store/apps/details?id=com.google.android.tts" target="_blank" rel="noopener noreferrer" style={{ color: "inherit", fontWeight: 800 }}>Speech Services by Google</a>, then open the app again.</li>}
        {android && <li>Use <b>Google Chrome</b> to open the app.</li>}
        {ios && <li>Turn off <b>Silent mode</b> (the switch on the side of the iPhone).</li>}
        <li>Then tap <b>Play</b> ▶ below.</li>
      </ol>
    </div>
  );
}

// Floating AI Reader: a round button when idle (opens settings), and a
// player with a moving wave and live caption while reading.
export function ReaderDock({ inFocus }) {
  const r = useReader();
  const [open, setOpen] = useState(false);
  if (!r?.supported) return null;
  const busy = r.status !== "idle";
  // In full-screen lessons, tasks and tests the cards have their own Listen
  // buttons, so the round button only shows while something is being read.
  if (inFocus && !busy && !open) return null;
  const speedIdx = Math.max(0, SPEEDS.indexOf(r.settings.rate));

  return (
    <>
      <div className={`dock${inFocus ? " in-focus" : ""}`}>
        {busy ? (
          <div className="player" role="region" aria-label="AI Reader">
            <div className="between">
              <div className="row" style={{ gap: 10, minWidth: 0 }}>
                <span className={`on-air${r.status === "playing" ? "" : " paused"}`}>{r.status === "playing" ? "ON AIR" : "PAUSED"}</span>
                <div style={{ minWidth: 0 }}>
                  <div style={{ fontSize: 14, fontWeight: 700, whiteSpace: "nowrap", overflow: "hidden", textOverflow: "ellipsis" }}>{r.title || "AI Reader"}</div>
                  <div className="mono" style={{ fontSize: 11.5, opacity: .7 }}>sentence {r.index + 1} of {r.chunks.length}</div>
                </div>
              </div>
              <button className="pbtn" onClick={r.stop} aria-label="Stop reading"><X size={17} /></button>
            </div>
            {r.problem
              ? <VoiceHelp problem={r.problem} />
              : <div className="row" style={{ alignItems: "flex-start", gap: 10 }}><Wave on={r.status === "playing"} /><div className="caption" style={{ flex: 1 }}>“{r.chunks[r.index]}”</div></div>}
            <div className="between">
              <button className="pbtn mono" style={{ width: "auto", padding: "0 12px", fontSize: 12.5, fontWeight: 700 }} onClick={() => r.updateSettings({ rate: SPEEDS[(speedIdx + 1) % SPEEDS.length] })} aria-label="Change speed">
                {SPEED_NAMES[r.settings.rate] || `${r.settings.rate}x`}
              </button>
              <div className="row">
                <button className="pbtn" onClick={r.prev} aria-label="Back one sentence"><SkipBack size={17} /></button>
                {r.status === "playing"
                  ? <button className="pbtn main" onClick={r.pause} aria-label="Pause"><Pause size={20} fill="currentColor" /></button>
                  : <button className="pbtn main" onClick={r.resume} aria-label="Play"><Play size={20} fill="currentColor" /></button>}
                <button className="pbtn" onClick={r.next} aria-label="Next sentence"><SkipForward size={17} /></button>
              </div>
              <button className="pbtn" onClick={() => setOpen(true)} aria-label="Reader settings"><Settings2 size={17} /></button>
            </div>
          </div>
        ) : (
          <button className="orb" onClick={() => setOpen(true)} aria-label="AI Reader settings" title="AI Reader">
            <Headphones size={22} /> <span className="orb-label">AI Reader</span>
          </button>
        )}
      </div>
      {open && (
        <div className="scrim" onClick={() => setOpen(false)}>
          <div className="sheet" onClick={e => e.stopPropagation()}>
            <div className="grabber" />
            <div className="row" style={{ marginBottom: 6 }}>
              <div className="tile-icon fill-pink"><Headphones size={22} /></div>
              <div>
                <div className="h2">AI Reader</div>
                <div className="faint" style={{ fontSize: 13 }}>Tap <b>Listen</b> on any card to hear it. Uses your phone's voice, so it is free.</div>
              </div>
            </div>
            <div style={{ marginTop: 16 }}><ReaderSettings /></div>
            <button className="btn ghost full" style={{ marginTop: 14 }} onClick={() => setOpen(false)}>Done</button>
          </div>
        </div>
      )}
    </>
  );
}
