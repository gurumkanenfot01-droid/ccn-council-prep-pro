import { useCallback, useEffect, useMemo, useState } from "react";
import { Eye, MessageSquare, XCircle, PauseCircle, PlayCircle, Camera, AlertTriangle, X, Lock } from "lucide-react";
import { supabase } from "../lib/supabase.js";
import { fmtClock } from "../lib/api.js";
import { Spinner } from "../ui.jsx";
import { examState } from "./ExamsTab.jsx";

const POLL_MS = 5000;
const PHOTO_POLL_MS = 30000;
const ONLINE_MS = 40000;

export const EVENT_TEXT = {
  start: "Started (face matched)", resume: "Re-entered (face matched)", start_face_mismatch: "Face did NOT match at start",
  face_mismatch: "Face did not match", no_face: "Face not visible", multiple_faces: "Another person in view",
  looking_away: "Looking away", phone: "Phone seen by camera", dark: "Camera covered / dark", noise: "Talking or noise",
  tab_away: "Left the exam screen", window_blur: "Opened another app or panel", fullscreen_exit: "Left full screen",
  screenshot_key: "Screenshot attempt", copy_attempt: "Copy / print / right-click", camera_off: "Camera turned off",
  mic_off: "Microphone turned off",
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
      setExamId((open || (data || [])[0] || {}).id || "");
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

export default function MonitorTab() {
  const { exams, examId, setExamId, exam } = useExamPicker();
  const [sessions, setSessions] = useState([]);
  const [candidates, setCandidates] = useState([]);
  const [feed, setFeed] = useState([]);
  const [livePhotos, setLivePhotos] = useState(false);
  const [photos, setPhotos] = useState({});
  const [open, setOpen] = useState(null);
  const [examRow, setExamRow] = useState(null);
  const [error, setError] = useState("");
  const [, setTick] = useState(0);

  useEffect(() => {
    supabase.from("exam_candidates").select("id, full_name, access_code, active").order("full_name").then(({ data }) => setCandidates(data || []));
  }, []);
  useEffect(() => { setExamRow(exam || null); }, [exam]);

  const poll = useCallback(async () => {
    if (!examId) return;
    const [{ data: s, error: err }, { data: ev }, { data: ex }] = await Promise.all([
      supabase.from("exam_sessions")
        .select("id, candidate_id, status, ended_reason, current_index, answered, score, total, warnings, face_fail_streak, last_seen_at, started_at, deadline")
        .eq("exam_id", examId),
      supabase.from("exam_events").select("id, candidate_id, type, counted, created_at").eq("exam_id", examId).eq("counted", true)
        .order("created_at", { ascending: false }).limit(15),
      supabase.from("exam_exams").select("*").eq("id", examId).maybeSingle(),
    ]);
    if (err) setError(err.message); else { setError(""); setSessions(s || []); }
    setFeed(ev || []);
    if (ex) setExamRow(ex);
    setTick(x => x + 1);
  }, [examId]);

  useEffect(() => {
    poll();
    const t = setInterval(poll, POLL_MS);
    return () => clearInterval(t);
  }, [poll]);

  // Live photos are opt-in: each is ~10 KB, refreshed every 30 s.
  useEffect(() => {
    if (!livePhotos || !examId) { setPhotos({}); return undefined; }
    const load = async () => {
      const { data } = await supabase.from("exam_sessions").select("id, last_photo").eq("exam_id", examId).eq("status", "in_progress");
      setPhotos(Object.fromEntries((data || []).map(r => [r.id, r.last_photo])));
    };
    load();
    const t = setInterval(load, PHOTO_POLL_MS);
    return () => clearInterval(t);
  }, [livePhotos, examId]);

  const byCandidate = useMemo(() => Object.fromEntries(candidates.map(c => [c.id, c])), [candidates]);
  const rows = useMemo(() => {
    const list = sessions.map(s => ({ s, c: byCandidate[s.candidate_id] }));
    if (examRow && examRow.all_candidates) {
      const started = new Set(sessions.map(s => s.candidate_id));
      candidates.filter(c => c.active && !started.has(c.id)).forEach(c => list.push({ s: null, c }));
    }
    const rank = r => (!r.s ? 3 : r.s.status === "in_progress" ? (r.s.warnings ? 0 : 1) : 2);
    return list.sort((a, b) => rank(a) - rank(b) || (b.s?.warnings || 0) - (a.s?.warnings || 0));
  }, [sessions, candidates, byCandidate, examRow]);

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
  async function setExam(values) {
    await supabase.from("exam_exams").update(values).eq("id", examId);
    poll();
  }

  const now = Date.now();
  const writing = sessions.filter(s => s.status === "in_progress");
  const online = writing.filter(s => now - new Date(s.last_seen_at).getTime() < ONLINE_MS).length;
  const flagged = sessions.filter(s => s.warnings > 0).length;
  const done = sessions.filter(s => s.status !== "in_progress").length;

  if (!exams) return <Spinner />;
  if (!exams.length) return <div className="card muted">Create an exam first (Exams tab).</div>;
  const [cls, label] = examRow ? examState(examRow) : ["pill-off", ""];

  return (
    <div style={{ display: "flex", flexDirection: "column", gap: 14 }}>
      <div className="row">
        <select value={examId} onChange={e => setExamId(e.target.value)} className="field" style={{ padding: "9px 12px", borderRadius: 10, border: "1px solid var(--border)", background: "var(--surface)", maxWidth: 320 }} aria-label="Exam">
          {exams.map(e => <option key={e.id} value={e.id}>{e.title}</option>)}
        </select>
        <span className={`pill ${cls}`}>{label}</span>
        <span className="spacer" />
        {examRow && !examRow.closed && (examRow.paused
          ? <button className="btn btn-sm btn-success" onClick={() => setExam({ paused: false })}><PlayCircle size={14} /> Resume questions</button>
          : <button className="btn btn-sm btn-ghost" onClick={() => setExam({ paused: true })}><PauseCircle size={14} /> Pause (hide questions)</button>)}
        {examRow && !examRow.closed && <button className="btn btn-sm btn-ghost" onClick={() => confirm("Close this exam for everyone now?") && setExam({ closed: true })}><Lock size={14} /> Close exam</button>}
        <label className="toggle-row"><input type="checkbox" checked={livePhotos} onChange={e => setLivePhotos(e.target.checked)} /> <Camera size={14} /> Live photos</label>
      </div>

      <div className="stat-grid">
        <div className="stat"><div className="num">{writing.length}</div><div className="lbl">Writing now · {online} online</div></div>
        <div className="stat"><div className="num" style={{ color: flagged ? "var(--amber)" : undefined }}>{flagged}</div><div className="lbl">With warnings</div></div>
        <div className="stat"><div className="num">{done}</div><div className="lbl">Finished</div></div>
        <div className="stat"><div className="num">{rows.filter(r => !r.s).length}</div><div className="lbl">Not started</div></div>
      </div>
      {error && <div className="error">{error}</div>}

      <div className="table-wrap">
        <table className="data">
          <thead><tr>{livePhotos && <th>Camera</th>}<th>Student</th><th>Status</th><th>Progress</th><th>Score</th><th>Warnings</th><th>Time left</th><th>Actions</th></tr></thead>
          <tbody>
            {rows.map(({ s, c }) => {
              const name = c?.full_name || "Unknown";
              const isOnline = s && s.status === "in_progress" && now - new Date(s.last_seen_at).getTime() < ONLINE_MS;
              return (
                <tr key={s ? s.id : c.id}>
                  {livePhotos && <td>{s && photos[s.id] ? <img className="thumb" src={photos[s.id]} alt={`Live photo of ${name}`} /> : <div className="thumb" />}</td>}
                  <td>
                    <div className="row" style={{ gap: 6 }}>
                      {s && s.status === "in_progress" && <span className="dot" style={{ background: isOnline ? "var(--emerald)" : "var(--red)" }} title={isOnline ? "Online" : "Not responding"} />}
                      <strong>{name}</strong>
                    </div>
                    <div className="faint num" style={{ fontSize: 12 }}>{c?.access_code}</div>
                  </td>
                  <td>{statusPill(s)}{s && s.status !== "in_progress" && s.ended_reason && <div className="faint" style={{ fontSize: 11.5 }}>{s.ended_reason}</div>}</td>
                  <td className="num">{s ? `${s.answered}/${s.total}` : "–"}</td>
                  <td className="num">{s ? s.score : "–"}</td>
                  <td>{s ? <span className={`pill ${s.warnings ? "pill-warn" : "pill-ok"}`}><AlertTriangle size={12} /> {s.warnings}/{examRow?.max_warnings}</span> : "–"}
                    {s && s.face_fail_streak > 0 && <div className="error" style={{ fontSize: 11.5 }}>Face mismatch</div>}</td>
                  <td className="num">{s && s.status === "in_progress" ? fmtClock(new Date(s.deadline).getTime() - now) : "–"}</td>
                  <td>
                    {s && (
                      <div className="row" style={{ gap: 6 }}>
                        <button className="btn btn-sm btn-ghost" onClick={() => setOpen({ s, c })}><Eye size={13} /> View</button>
                        {s.status === "in_progress" && <>
                          <button className="btn btn-sm btn-ghost" onClick={() => message(s, name)}><MessageSquare size={13} /> Message</button>
                          <button className="btn btn-sm btn-ghost" style={{ color: "var(--red)" }} onClick={() => endSession(s, name)}><XCircle size={13} /> End</button>
                        </>}
                      </div>
                    )}
                  </td>
                </tr>
              );
            })}
            {rows.length === 0 && <tr><td colSpan={8} className="muted">No students for this exam yet.</td></tr>}
          </tbody>
        </table>
      </div>

      {feed.length > 0 && (
        <section className="card">
          <h3 style={{ fontSize: 15, marginTop: 0 }}><AlertTriangle size={15} /> Latest warnings</h3>
          <ul className="list" style={{ fontSize: 13.5 }}>
            {feed.map(e => (
              <li key={e.id} className="row" style={{ gap: 8 }}>
                <span className="faint num">{new Date(e.created_at).toLocaleTimeString()}</span>
                <strong>{byCandidate[e.candidate_id]?.full_name || "?"}</strong>
                <span>{EVENT_TEXT[e.type] || e.type}</span>
              </li>
            ))}
          </ul>
        </section>
      )}

      {open && <Drawer session={open.s} candidate={open.c} onClose={() => setOpen(null)} />}
    </div>
  );
}
