import { useMemo, useState } from "react";
import { PlayCircle, ShieldCheck, Crown, History, Video, Info } from "lucide-react";
import { CameraView, SoundMeter, FacePill, MicPill, CameraPill, fmtTime, focusLabel } from "../ui.jsx";
import { loadHistory } from "../lib/questions.js";

const PAID_COUNTS = [10, 20, 50, 100];
const FREE_COUNTS = [10, 20];
const CCN_APP_URL = "https://ccn-council-prep-pro.vercel.app";

function PermissionHelp({ camera, mic }) {
  const blocked = camera === "denied" || mic === "denied";
  const missing = camera === "unavailable" || mic === "unavailable";
  if (!blocked && !missing && camera !== "error" && mic !== "error") return null;
  return (
    <div className="card" style={{ background: "var(--amber-soft)", borderColor: "var(--amber)", boxShadow: "none", padding: 14, fontSize: 13.5 }}>
      {blocked && (
        <>
          <strong>Camera or microphone was blocked.</strong> Allow both, then tap “Allow camera &amp; microphone” again:
          <ul style={{ margin: "6px 0 0", paddingLeft: 18 }}>
            <li><strong>iPhone / iPad:</strong> tap <strong>aA</strong> in Safari’s address bar → Website Settings → Camera and Microphone → Allow.</li>
            <li><strong>Android Chrome:</strong> tap the icon left of the web address → Permissions → turn on Camera and Microphone.</li>
            <li><strong>Computer:</strong> click the camera icon in the address bar and choose Allow.</li>
          </ul>
        </>
      )}
      {!blocked && missing && <><strong>No camera or microphone found.</strong> Use a phone, tablet or laptop that has both.</>}
      {!blocked && !missing && <><strong>The camera or microphone couldn’t start.</strong> Close other apps using it (WhatsApp or Zoom calls), then try again.</>}
    </div>
  );
}

export default function HomeScreen({ name, access, bank, monitor, onStart, onSignOut }) {
  const [count, setCount] = useState(20);
  const [category, setCategory] = useState("All");
  const history = useMemo(() => loadHistory(), []);

  const pool = useMemo(() => (access.fullAccess ? bank : bank.filter(q => q.isLegacy)), [bank, access.fullAccess]);
  const categories = useMemo(() => {
    const counts = new Map();
    pool.forEach(q => counts.set(q.category, (counts.get(q.category) || 0) + 1));
    return [...counts.entries()].sort((a, b) => a[0].localeCompare(b[0]));
  }, [pool]);
  const scoped = category === "All" ? pool : pool.filter(q => q.category === category);
  const counts = access.fullAccess ? PAID_COUNTS : FREE_COUNTS;
  const chosen = Math.min(count, scoped.length);
  const ready = monitor.camera === "on" && monitor.mic === "on";

  return (
    <main className="wrap">
      <header className="topbar">
        <div className="brand">
          <span className="brand-mark"><Video size={20} /></span>
          <div>
            <div className="serif" style={{ fontWeight: 700, fontSize: 17 }}>CCN Study Room</div>
            <div className="faint" style={{ fontSize: 12 }}>Monitored practice</div>
          </div>
        </div>
        <button className="btn btn-ghost btn-sm" onClick={onSignOut}>Sign out</button>
      </header>

      <h1 className="serif" style={{ fontSize: 26, margin: "0 0 4px" }}>{name ? `Welcome, ${name.split(" ")[0]}` : "Welcome"}</h1>
      <p className="muted" style={{ margin: "0 0 18px" }}>
        Pick your questions, switch on your camera and microphone, and study without distractions.
      </p>

      <div className="two-col">
        <section className="card" aria-labelledby="setup-h">
          <h2 id="setup-h" style={{ fontSize: 16, margin: "0 0 4px" }}>1. Choose your practice</h2>
          <div style={{ marginBottom: 14 }}>
            {access.fullAccess
              ? <span className="pill pill-ok"><Crown size={13} /> Full access · {bank.length.toLocaleString()} live questions</span>
              : <span className="pill pill-warn"><Info size={13} /> Free practice · {pool.length.toLocaleString()} questions</span>}
          </div>

          <div className="field" style={{ marginBottom: 14 }}>
            <label htmlFor="cat">Topic</label>
            <select id="cat" value={category} onChange={e => setCategory(e.target.value)}>
              <option value="All">All topics ({pool.length})</option>
              {categories.map(([c, n]) => <option key={c} value={c}>{c} ({n})</option>)}
            </select>
          </div>

          <div className="field" style={{ marginBottom: 16 }}>
            <label>Number of questions</label>
            <div className="chip-row">
              {counts.map(n => (
                <button key={n} type="button" className="chip" aria-pressed={count === n} onClick={() => setCount(n)}>{n}</button>
              ))}
            </div>
          </div>

          {!access.fullAccess && (
            <p className="faint" style={{ fontSize: 12.5, margin: "0 0 4px" }}>
              Subscribers get every new question and sessions of up to 100.{" "}
              <a href={CCN_APP_URL} target="_blank" rel="noreferrer" style={{ color: "var(--navy)", fontWeight: 700 }}>Subscribe in the CCN app</a>
            </p>
          )}
        </section>

        <section className="card" aria-labelledby="check-h">
          <h2 id="check-h" style={{ fontSize: 16, margin: "0 0 10px" }}>2. Camera &amp; microphone check</h2>
          <CameraView stream={monitor.videoStream} status={monitor.camera} />
          <div className="chip-row" style={{ margin: "12px 0 8px", gap: 6 }}>
            <CameraPill camera={monitor.camera} />
            {monitor.camera === "on" && <FacePill face={monitor.face} faceModel={monitor.faceModel} camera={monitor.camera} />}
            <MicPill mic={monitor.mic} noisy={monitor.noisy} />
          </div>
          {monitor.mic === "on" && (
            <div style={{ marginBottom: 10 }}>
              <div className="faint" style={{ fontSize: 12, marginBottom: 4 }}>Surrounding sound</div>
              <SoundMeter level={monitor.level} noisy={monitor.noisy} />
            </div>
          )}
          {!ready && (
            <button className="btn btn-primary btn-full" onClick={monitor.start}
              disabled={monitor.camera === "starting" || monitor.mic === "starting"}>
              <Video size={16} /> Allow camera &amp; microphone
            </button>
          )}
          <div style={{ marginTop: 10 }}><PermissionHelp camera={monitor.camera} mic={monitor.mic} /></div>
          <p className="faint" style={{ fontSize: 12.5, display: "flex", gap: 6, margin: "10px 0 0" }}>
            <ShieldCheck size={15} style={{ flex: "none", marginTop: 1 }} />
            Your video and sound stay on this device. Nothing is recorded or uploaded; the site only counts warnings
            like “face not visible” or “noise detected”.
          </p>
        </section>
      </div>

      <div style={{ marginTop: 16 }}>
        <button className="btn btn-primary btn-full" style={{ padding: "15px 18px", fontSize: 16 }}
          disabled={!ready || chosen === 0}
          onClick={() => onStart({ count: chosen, category, pool: scoped })}>
          <PlayCircle size={18} />
          {chosen === 0 ? "No questions in this topic" : ready ? `Start monitored practice · ${chosen} questions` : "Allow camera & microphone to start"}
        </button>
      </div>

      {history.length > 0 && (
        <section className="card" style={{ marginTop: 18 }} aria-labelledby="hist-h">
          <h2 id="hist-h" style={{ fontSize: 16, margin: "0 0 10px", display: "flex", alignItems: "center", gap: 8 }}>
            <History size={17} /> Recent sessions on this device
          </h2>
          <ul className="list">
            {history.slice(0, 6).map(h => (
              <li key={h.id} style={{ display: "flex", justifyContent: "space-between", gap: 10, flexWrap: "wrap", fontSize: 14, borderTop: "1px solid var(--border)", paddingTop: 8 }}>
                <span>
                  <strong>{new Date(h.date).toLocaleDateString(undefined, { day: "numeric", month: "short" })}</strong>
                  <span className="muted"> · {h.category === "All" ? "All topics" : h.category} · {h.total} Qs · {fmtTime(h.seconds)}</span>
                </span>
                <span style={{ display: "flex", gap: 6 }}>
                  <span className={`pill ${h.pct >= 60 ? "pill-ok" : "pill-bad"}`}>{h.pct}%</span>
                  <span className={`pill ${h.focus >= 70 ? "pill-ok" : h.focus >= 50 ? "pill-warn" : "pill-bad"}`}>{focusLabel(h.focus)}</span>
                </span>
              </li>
            ))}
          </ul>
        </section>
      )}
    </main>
  );
}
