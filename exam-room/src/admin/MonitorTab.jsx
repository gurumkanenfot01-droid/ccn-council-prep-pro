import { useCallback, useEffect, useMemo, useRef, useState } from "react";
import {
  Eye, MessageSquare, XCircle, PauseCircle, PlayCircle, Camera, AlertTriangle, X, Lock, RotateCcw,
  LayoutGrid, List, Bell, BellOff, Clock, ScanFace, EyeOff, Users, Moon, Mic, Volume2, Smartphone, WifiOff, Maximize, Flag,
} from "lucide-react";
import { supabase } from "../lib/supabase.js";
import { fmtClock } from "../lib/api.js";
import { Spinner } from "../ui.jsx";
import { examState } from "./ExamsTab.jsx";

const POLL_MS = 5000;
const PHOTO_POLL_MS = 20000;
const ONLINE_MS = 40000;

export const EVENT_TEXT = {
  start: "Started (face matched)", resume: "Re-entered (face matched)", retake_allowed: "Retake allowed by administrator", start_face_mismatch: "Face did NOT match at start",
  face_mismatch: "Face did not match", no_face: "Face not visible", multiple_faces: "Another person in view",
  looking_away: "Looking away", phone: "Phone seen by camera", dark: "Camera covered / dark", noise: "Talking or noise",
  tab_away: "Left the exam screen", window_blur: "Opened another app or panel", fullscreen_exit: "Left full screen",
  screenshot_key: "Screenshot attempt", copy_attempt: "Copy / print / right-click", camera_off: "Camera turned off",
  mic_off: "Microphone turned off", admin_warning: "Warning from administrator", time_added: "Extra time added",
  resumed_by_admin: "Allowed to continue by administrator",
};

export function statusPill(s) {
  if (!s) return <span className="pill pill-off">Not started</span>;
  if (s.status === "in_progress") return <span className="pill pill-ok">Writing</span>;
  if (s.status === "submitted") return <span className="pill pill-ok">Submitted</span>;
  if (s.status === "auto_submitted") return <span className="pill pill-warn">Auto-submitted</span>;
  return <span className="pill pill-bad">Ended</span>;
}

export function useExamPicker() {
  const [exams, setExams] = useState(null);
  const [examId, setExamId] = useState("");
  useEffect(() => {
    supabase.from("exam_exams").select("*").order("starts_at", { ascending: false }).then(({ data }) => {
      setExams(data || []);
      const now = Date.now();
      const open = (data || []).find(e => !e.closed && new Date(e.starts_at) <= now && new Date(e.ends_at) > now);
      // Otherwise the most recent exam that has already started (the one just
      // closed), not a future one with no results yet.
      const started = (data || []).find(e => new Date(e.starts_at) <= now);
      setExamId((open || started || (data || [])[0] || {}).id || "");
    });
  }, []);
  return { exams, examId, setExamId, exam: (exams || []).find(e => e.id === examId) };
}

function Drawer({ session, candidate, onClose }) {
  const [events, setEvents] = useState(null);
  const [photos, setPhotos] = useState({});
  useEffect(() => {
    let alive = true;
    const load = async () => {
      const [{ data: ev }, { data: s }, { data: c }] = await Promise.all([
        supabase.from("exam_events").select("id, type, detail, photo, counted, created_at").eq("session_id", session.id).order("created_at", { ascending: false }).limit(60),
        supabase.from("exam_sessions").select("last_photo, last_photo_at").eq("id", session.id).maybeSingle(),
        supabase.from("exam_candidates").select("face_photo").eq("id", session.candidate_id).maybeSingle(),
      ]);
      if (!alive) return;
      setEvents(ev || []);
      setPhotos({ live: s?.last_photo, liveAt: s?.last_photo_at, registered: c?.face_photo });
    };
    load();
    const t = setInterval(load, 15000);
    return () => { alive = false; clearInterval(t); };
  }, [session.id, session.candidate_id]);

  return (
    <aside className="drawer" aria-label={`Details for ${candidate?.full_name}`}>
      <div className="row" style={{ marginBottom: 12 }}>
        <h2 style={{ fontSize: 17, margin: 0 }}>{candidate?.full_name}</h2>
        <span className="faint num">{candidate?.access_code}</span>
        <span className="spacer" />
        <button className="btn btn-ghost btn-sm" onClick={onClose} aria-label="Close"><X size={14} /></button>
      </div>
      <div className="two-col" style={{ gridTemplateColumns: "1fr 1fr", gap: 10 }}>
        <figure style={{ margin: 0 }}>
          {photos.registered ? <img src={photos.registered} alt="Registered face" style={{ width: "100%", borderRadius: 10 }} /> : <div className="cam" />}
          <figcaption className="faint" style={{ fontSize: 12 }}>Registered face</figcaption>
        </figure>
        <figure style={{ margin: 0 }}>
          {photos.live ? <img src={photos.live} alt="Latest camera photo" style={{ width: "100%", borderRadius: 10 }} /> : <div className="cam" />}
          <figcaption className="faint" style={{ fontSize: 12 }}>Latest check {photos.liveAt ? new Date(photos.liveAt).toLocaleTimeString() : ""}</figcaption>
        </figure>
      </div>
      <h3 style={{ fontSize: 15, margin: "16px 0 8px" }}>Timeline</h3>
      {!events ? <Spinner /> : events.length === 0 ? <p className="muted">Nothing yet.</p> : (
        <ul className="list" style={{ gap: 10 }}>
          {events.map(e => (
            <li key={e.id} style={{ borderTop: "1px solid var(--border)", paddingTop: 8 }}>
              <div className="row" style={{ gap: 8 }}>
                <span className="faint num" style={{ fontSize: 12 }}>{new Date(e.created_at).toLocaleTimeString()}</span>
                <strong style={{ fontSize: 13.5, color: e.counted ? "var(--red)" : "var(--text)" }}>{EVENT_TEXT[e.type] || e.type}</strong>
              </div>
              {e.detail && <div className="muted" style={{ fontSize: 12.5 }}>{e.detail}</div>}
              {e.photo && <img src={e.photo} alt={`Photo at ${EVENT_TEXT[e.type] || e.type}`} style={{ width: 160, borderRadius: 8, marginTop: 6 }} />}
            </li>
          ))}
        </ul>
      )}
    </aside>
  );
}


// Live face / sound / phone status sent by the student's browser every ~15 s.
function LiveStatus({ s, online }) {
  if (!s || s.status !== "in_progress") return null;
  if (!online) return <span className="pill pill-bad"><WifiOff size={12} /> Not responding</span>;
  const st = s.live_status || {};
  const face = {
    ok: ["pill-ok", ScanFace, "Face OK"], none: ["pill-bad", EyeOff, "No face"], multiple: ["pill-bad", Users, "2+ people"],
    away: ["pill-warn", EyeOff, "Looking away"], dark: ["pill-bad", Moon, "Dark"],
  }[st.face] || ["pill-off", ScanFace, "Checking"];
  const [cls, Icon, label] = face;
  return (
    <div className="row" style={{ gap: 4 }}>
      <span className={`pill ${cls}`}><Icon size={12} /> {label}</span>
      {st.noise
        ? <span className="pill pill-bad"><Volume2 size={12} /> {st.noise === "talking" ? "Talking" : "Noise"}</span>
        : <span className="pill pill-ok"><Mic size={12} /> Quiet</span>}
      {st.phone && <span className="pill pill-bad"><Smartphone size={12} /> Phone</span>}
      {st.camera === false && <span className="pill pill-bad">Camera off</span>}
    </div>
  );
}

// Two-tone chime for new warnings (admin side).
let chimeCtx = null;
function chime() {
  try {
    const AC = window.AudioContext || window.webkitAudioContext;
    chimeCtx = chimeCtx || new AC();
    [[660, 0], [880, 0.18]].forEach(([f, t]) => {
      const o = chimeCtx.createOscillator(); const g = chimeCtx.createGain();
      o.frequency.value = f;
      g.gain.setValueAtTime(0.2, chimeCtx.currentTime + t);
      g.gain.exponentialRampToValueAtTime(0.001, chimeCtx.currentTime + t + 0.3);
      o.connect(g).connect(chimeCtx.destination);
      o.start(chimeCtx.currentTime + t); o.stop(chimeCtx.currentTime + t + 0.32);
    });
  } catch (e) { /* sound is optional */ }
}

const FILTERS = [
  ["all", "All"], ["writing", "Writing"], ["flagged", "With warnings"], ["offline", "Not responding"], ["finished", "Finished"], ["not_started", "Not started"],
];

export default function MonitorTab() {
  const { exams, examId, setExamId, exam } = useExamPicker();
  const [sessions, setSessions] = useState([]);
  const [candidates, setCandidates] = useState([]);
  const [feed, setFeed] = useState([]);
  const [view, setView] = useState("table"); // table | wall
  const [livePhotos, setLivePhotos] = useState(false);
  const [photos, setPhotos] = useState({});
  const [open, setOpen] = useState(null);
  const [examRow, setExamRow] = useState(null);
  const [error, setError] = useState("");
  const [filter, setFilter] = useState("all");
  const [alertsOn, setAlertsOn] = useState(true);
  const [alerts, setAlerts] = useState([]); // newest warnings since you opened the page
  const seen = useRef(null);
  const alertsOnRef = useRef(alertsOn);
  alertsOnRef.current = alertsOn;
  const [, setTick] = useState(0);

  useEffect(() => {
    supabase.from("exam_candidates").select("id, full_name, access_code, active").order("full_name").then(({ data }) => setCandidates(data || []));
  }, []);
  useEffect(() => { setExamRow(exam || null); seen.current = null; setAlerts([]); }, [exam]);

  const poll = useCallback(async () => {
    if (!examId) return;
    const [{ data: s, error: err }, { data: ev }, { data: ex }] = await Promise.all([
      supabase.from("exam_sessions")
        .select("id, candidate_id, status, ended_reason, current_index, answered, score, total, warnings, face_fail_streak, last_seen_at, started_at, deadline, attempt, live_status")
        .eq("exam_id", examId).eq("archived", false),
      supabase.from("exam_events").select("id, candidate_id, session_id, type, detail, counted, created_at").eq("exam_id", examId)
        .or("counted.eq.true,type.eq.start_face_mismatch")
        .order("created_at", { ascending: false }).limit(25),
      supabase.from("exam_exams").select("*").eq("id", examId).maybeSingle(),
    ]);
    if (err) setError(err.message); else { setError(""); setSessions(s || []); }
    const events = ev || [];
    setFeed(events);
    if (ex) setExamRow(ex);
    // New warnings since the last poll -> alert banner + chime.
    if (seen.current === null) {
      seen.current = new Set(events.map(e => e.id));
    } else {
      const fresh = events.filter(e => !seen.current.has(e.id));
      fresh.forEach(e => seen.current.add(e.id));
      if (fresh.length) {
        setAlerts(prev => [...fresh, ...prev].slice(0, 6));
        if (alertsOnRef.current) chime();
      }
    }
    setTick(x => x + 1);
  }, [examId]);

  useEffect(() => {
    poll();
    const t = setInterval(poll, POLL_MS);
    return () => clearInterval(t);
  }, [poll]);

  // Flash the tab title while there are unseen alerts.
  useEffect(() => {
    const base = "CCN Exam Room";
    if (!alerts.length) { document.title = base; return undefined; }
    let on = false;
    const t = setInterval(() => { on = !on; document.title = on ? `(${alerts.length}) ⚠ Warning` : base; }, 1000);
    return () => { clearInterval(t); document.title = base; };
  }, [alerts.length]);

  // Photos: on for the camera wall, opt-in for the table (each ~10 KB, every 20 s).
  const wantPhotos = view === "wall" || livePhotos;
  useEffect(() => {
    if (!wantPhotos || !examId) { setPhotos({}); return undefined; }
    const load = async () => {
      const { data } = await supabase.from("exam_sessions").select("id, last_photo")
        .eq("exam_id", examId).eq("status", "in_progress").eq("archived", false);
      setPhotos(Object.fromEntries((data || []).map(r => [r.id, r.last_photo])));
    };
    load();
    const t = setInterval(load, PHOTO_POLL_MS);
    return () => clearInterval(t);
  }, [wantPhotos, examId]);

  const byCandidate = useMemo(() => Object.fromEntries(candidates.map(c => [c.id, c])), [candidates]);
  const now = Date.now();
  const isOnline = s => s && s.status === "in_progress" && now - new Date(s.last_seen_at).getTime() < ONLINE_MS;
  const rows = useMemo(() => {
    const list = sessions.map(s => ({ s, c: byCandidate[s.candidate_id] }));
    if (examRow && examRow.all_candidates) {
      const started = new Set(sessions.map(s => s.candidate_id));
      candidates.filter(c => c.active && !started.has(c.id)).forEach(c => list.push({ s: null, c }));
    }
    const rank = r => (!r.s ? 3 : r.s.status === "in_progress" ? (r.s.warnings ? 0 : 1) : 2);
    return list.sort((a, b) => rank(a) - rank(b) || (b.s?.warnings || 0) - (a.s?.warnings || 0));
  }, [sessions, candidates, byCandidate, examRow]);

  const matches = (r, f) => {
    if (f === "all") return true;
    if (f === "writing") return r.s && r.s.status === "in_progress";
    if (f === "flagged") return r.s && r.s.warnings > 0;
    if (f === "offline") return r.s && r.s.status === "in_progress" && !isOnline(r.s);
    if (f === "finished") return r.s && r.s.status !== "in_progress";
    return !r.s;
  };
  const shown = rows.filter(r => matches(r, filter));

  async function act(fn, args, okMsg) {
    const { data, error: err } = await supabase.rpc(fn, args);
    if (err || data?.error) setError(err?.message || data.error);
    else if (okMsg) setError("");
    poll();
  }
  async function endSession(s, name) {
    if (!confirm(`End ${name}'s exam now? They are logged out of the exam and it is submitted as is.`)) return;
    await supabase.from("exam_sessions").update({ status: "terminated", ended_reason: "Ended by the administrator", ended_at: new Date().toISOString() })
      .eq("id", s.id).eq("status", "in_progress");
    poll();
  }
  async function message(s, name) {
    const text = prompt(`Message to ${name} (shown on their screen within 15 seconds):`);
    if (text && text.trim()) await supabase.from("exam_sessions").update({ admin_message: text.trim().slice(0, 300) }).eq("id", s.id);
  }
  function warn(s, name) {
    const reason = prompt(`Give ${name} a warning. Reason (shown to them):`, "Talking during the exam");
    if (reason !== null) act("exam_admin_warn", { p_session: s.id, p_reason: reason });
  }
  function addTime(s, name) {
    const mins = prompt(`Extra minutes for ${name}:`, "5");
    const n = parseInt(mins, 10);
    if (n > 0) act("exam_admin_extend", { p_session: s.id, p_minutes: n });
  }
  function letContinue(s, name) {
    if (confirm(`Let ${name} continue from where they stopped? Their answers are kept, they get back the time they had left (at least 5 minutes) and their warnings start from zero.`)) act("exam_admin_resume", { p_session: s.id });
  }
  function allowRetake(s, name) {
    if (confirm(`Allow ${name} to take this exam again? Their current attempt is kept on record.`)) act("exam_admin_allow_retake", { p_session: s.id });
  }
  async function setExam(values) {
    await supabase.from("exam_exams").update(values).eq("id", examId);
    poll();
  }

  if (!exams) return <Spinner />;
  if (!exams.length) return <div className="card muted">Create an exam first (Exams tab).</div>;
  const [cls, label] = examRow ? examState(examRow) : ["pill-off", ""];
  const writing = sessions.filter(s => s.status === "in_progress");
  const online = writing.filter(isOnline).length;
  const counts = Object.fromEntries(FILTERS.map(([f]) => [f, rows.filter(r => matches(r, f)).length]));

  const Actions = ({ s, c, compact }) => {
    const name = c?.full_name || "student";
    if (!s) return null;
    return (
      <div className="row" style={{ gap: 6 }}>
        <button className="btn btn-sm btn-ghost" onClick={() => setOpen({ s, c })}><Eye size={13} />{!compact && " View"}</button>
        {s.status === "in_progress" ? <>
          <button className="btn btn-sm btn-ghost" onClick={() => message(s, name)} aria-label="Message"><MessageSquare size={13} />{!compact && " Message"}</button>
          <button className="btn btn-sm btn-ghost" style={{ color: "var(--amber)" }} onClick={() => warn(s, name)} aria-label="Give warning"><Flag size={13} />{!compact && " Warn"}</button>
          <button className="btn btn-sm btn-ghost" onClick={() => addTime(s, name)} aria-label="Add time"><Clock size={13} />{!compact && " +Time"}</button>
          <button className="btn btn-sm btn-ghost" style={{ color: "var(--red)" }} onClick={() => endSession(s, name)} aria-label="End exam"><XCircle size={13} />{!compact && " End"}</button>
        </> : (
          <>
            <button className="btn btn-sm btn-primary" onClick={() => letContinue(s, name)}><PlayCircle size={13} /> Continue</button>
            <button className="btn btn-sm btn-ghost" onClick={() => allowRetake(s, name)}><RotateCcw size={13} /> Fresh retake</button>
          </>
        )}
      </div>
    );
  };

  return (
    <div style={{ display: "flex", flexDirection: "column", gap: 14 }}>
      <div className="row">
        <select value={examId} onChange={e => setExamId(e.target.value)} aria-label="Exam"
          style={{ padding: "9px 12px", borderRadius: 10, border: "1px solid var(--border)", background: "var(--surface)", maxWidth: 320 }}>
          {exams.map(e => <option key={e.id} value={e.id}>{e.title}</option>)}
        </select>
        <span className={`pill ${cls}`}>{label}</span>
        {examRow && <span className="pill pill-off">{(examRow.proctor_level || "relaxed").replace(/^./, x => x.toUpperCase())} checks</span>}
        <span className="spacer" />
        {examRow && !examRow.closed && (examRow.paused
          ? <button className="btn btn-sm btn-success" onClick={() => setExam({ paused: false })}><PlayCircle size={14} /> Resume questions</button>
          : <button className="btn btn-sm btn-ghost" onClick={() => setExam({ paused: true })}><PauseCircle size={14} /> Pause (hide questions)</button>)}
        {examRow && !examRow.closed && <button className="btn btn-sm btn-ghost" onClick={() => confirm("Close this exam for everyone now?") && setExam({ closed: true })}><Lock size={14} /> Close exam</button>}
      </div>

      <div className="row">
        <div className="chip-row" role="group" aria-label="View">
          <button className="chip" aria-pressed={view === "table"} onClick={() => setView("table")}><List size={13} /> Table</button>
          <button className="chip" aria-pressed={view === "wall"} onClick={() => setView("wall")}><LayoutGrid size={13} /> Camera wall</button>
        </div>
        {view === "table" && <label className="toggle-row"><input type="checkbox" checked={livePhotos} onChange={e => setLivePhotos(e.target.checked)} /> <Camera size={14} /> Photos</label>}
        <span className="spacer" />
        <button className="btn btn-sm btn-ghost" onClick={() => { setAlertsOn(a => !a); if (!alertsOn) chime(); }}>
          {alertsOn ? <><Bell size={14} /> Alert sound on</> : <><BellOff size={14} /> Alert sound off</>}
        </button>
      </div>

      {alerts.length > 0 && (
        <div className="banner banner-bad" role="alert" style={{ display: "block" }}>
          <div className="row">
            <strong><AlertTriangle size={15} /> New warnings</strong>
            <span className="spacer" />
            <button className="btn btn-sm btn-ghost" onClick={() => setAlerts([])}>Dismiss</button>
          </div>
          <ul className="list" style={{ marginTop: 6, fontWeight: 600 }}>
            {alerts.map(e => (
              <li key={e.id}>
                {new Date(e.created_at).toLocaleTimeString()} · {byCandidate[e.candidate_id]?.full_name || "?"} — {EVENT_TEXT[e.type] || e.type}
                {e.detail ? ` (${e.detail})` : ""}
              </li>
            ))}
          </ul>
        </div>
      )}

      <div className="stat-grid">
        <div className="stat"><div className="num">{writing.length}</div><div className="lbl">Writing now · {online} online</div></div>
        <div className="stat"><div className="num" style={{ color: counts.flagged ? "var(--amber)" : undefined }}>{counts.flagged}</div><div className="lbl">With warnings</div></div>
        <div className="stat"><div className="num" style={{ color: counts.offline ? "var(--red)" : undefined }}>{counts.offline}</div><div className="lbl">Not responding</div></div>
        <div className="stat"><div className="num">{counts.finished}</div><div className="lbl">Finished</div></div>
        <div className="stat"><div className="num">{counts.not_started}</div><div className="lbl">Not started</div></div>
      </div>

      <div className="chip-row" role="group" aria-label="Filter students">
        {FILTERS.map(([f, l]) => (
          <button key={f} className="chip" aria-pressed={filter === f} onClick={() => setFilter(f)}>{l} ({counts[f]})</button>
        ))}
      </div>
      {error && <div className="error">{error}</div>}

      {view === "wall" ? (
        <div className="wall">
          {shown.filter(r => r.s && r.s.status === "in_progress").map(({ s, c }) => {
            const on = isOnline(s);
            return (
              <div key={s.id} className="card wall-card" style={{ borderColor: !on ? "var(--red)" : s.warnings ? "var(--amber)" : undefined }}>
                <button className="wall-photo" onClick={() => setOpen({ s, c })} aria-label={`View ${c?.full_name}`}>
                  {photos[s.id] ? <img src={photos[s.id]} alt={`Live photo of ${c?.full_name}`} /> : <div className="cam" />}
                  <span className="cam-badge"><span className="dot" style={{ background: on ? "var(--emerald)" : "var(--red)" }} /> {on ? "Live" : "Offline"}</span>
                </button>
                <div className="row" style={{ gap: 6, marginTop: 8 }}>
                  <strong style={{ fontSize: 14 }}>{c?.full_name}</strong>
                  <span className="spacer" />
                  <span className={`pill ${s.warnings ? "pill-warn" : "pill-ok"}`}><AlertTriangle size={12} /> {s.warnings}/{examRow?.max_warnings}</span>
                </div>
                <div className="faint" style={{ fontSize: 12, margin: "2px 0 6px" }}>
                  Q {Math.min(s.current_index + 1, s.total)}/{s.total} · {fmtClock(new Date(s.deadline).getTime() - now)} left
                </div>
                <LiveStatus s={s} online={on} />
                <div style={{ marginTop: 8 }}><Actions s={s} c={c} compact /></div>
              </div>
            );
          })}
          {shown.filter(r => r.s && r.s.status === "in_progress").length === 0 && <div className="card muted">Nobody is writing right now{filter !== "all" ? " in this filter" : ""}.</div>}
        </div>
      ) : (
        <div className="table-wrap">
          <table className="data">
            <thead><tr>{livePhotos && <th>Camera</th>}<th>Student</th><th>Status</th><th>Live</th><th>Question</th><th>Score</th><th>Warnings</th><th>Time left</th><th>Actions</th></tr></thead>
            <tbody>
              {shown.map(({ s, c }) => {
                const name = c?.full_name || "Unknown";
                const on = isOnline(s);
                return (
                  <tr key={s ? s.id : c.id}>
                    {livePhotos && <td>{s && photos[s.id] ? <img className="thumb" src={photos[s.id]} alt={`Live photo of ${name}`} /> : <div className="thumb" />}</td>}
                    <td>
                      <div className="row" style={{ gap: 6 }}>
                        {s && s.status === "in_progress" && <span className="dot" style={{ background: on ? "var(--emerald)" : "var(--red)" }} title={on ? "Online" : "Not responding"} />}
                        <strong>{name}</strong>
                      </div>
                      <div className="faint num" style={{ fontSize: 12 }}>{c?.access_code}{s && s.attempt > 1 ? ` · attempt ${s.attempt}` : ""}</div>
                    </td>
                    <td>{statusPill(s)}{s && s.status !== "in_progress" && s.ended_reason && <div className="faint" style={{ fontSize: 11.5 }}>{s.ended_reason}</div>}</td>
                    <td><LiveStatus s={s} online={on} /></td>
                    <td className="num">{s ? (s.status === "in_progress" ? `${Math.min(s.current_index + 1, s.total)}/${s.total}` : `${s.answered}/${s.total} answered`) : "–"}</td>
                    <td className="num">{s ? s.score : "–"}</td>
                    <td>{s ? <span className={`pill ${s.warnings ? "pill-warn" : "pill-ok"}`}><AlertTriangle size={12} /> {s.warnings}/{examRow?.max_warnings}</span> : "–"}
                      {s && s.face_fail_streak > 0 && <div className="error" style={{ fontSize: 11.5 }}>Face mismatch</div>}</td>
                    <td className="num">{s && s.status === "in_progress" ? fmtClock(new Date(s.deadline).getTime() - now) : "–"}</td>
                    <td><Actions s={s} c={c} /></td>
                  </tr>
                );
              })}
              {shown.length === 0 && <tr><td colSpan={9} className="muted">No students in this view.</td></tr>}
            </tbody>
          </table>
        </div>
      )}

      {feed.length > 0 && (
        <section className="card">
          <h3 style={{ fontSize: 15, marginTop: 0 }}><AlertTriangle size={15} /> Warning log</h3>
          <ul className="list" style={{ fontSize: 13.5 }}>
            {feed.map(e => {
              const row = rows.find(r => r.s && r.s.id === e.session_id);
              return (
                <li key={e.id} className="row" style={{ gap: 8 }}>
                  <span className="faint num">{new Date(e.created_at).toLocaleTimeString()}</span>
                  <button className="btn btn-sm" style={{ background: "none", padding: 0, fontWeight: 700 }} disabled={!row}
                    onClick={() => row && setOpen(row)}>{byCandidate[e.candidate_id]?.full_name || "?"}</button>
                  <span>{EVENT_TEXT[e.type] || e.type}</span>
                  {e.detail && <span className="faint">· {e.detail}</span>}
                </li>
              );
            })}
          </ul>
        </section>
      )}

      {open && <Drawer session={open.s} candidate={open.c} onClose={() => setOpen(null)} />}
    </div>
  );
}
