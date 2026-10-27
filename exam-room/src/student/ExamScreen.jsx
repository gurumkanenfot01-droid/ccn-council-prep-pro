import { useCallback, useEffect, useRef, useState } from "react";
import { AlertTriangle, Calculator as CalcIcon, Eye, ArrowRight, CheckCircle2, XCircle, Clock, PauseCircle, MessageSquare, WifiOff, Send, VolumeX } from "lucide-react";
import { api, serverNow, fmtClock } from "../lib/api.js";
import { useProctor, VIOLATION_LABELS, pauseSoundChecks } from "../lib/proctor.js";
import { useLiveShare } from "../lib/live.js";
import Calculator from "./Calculator.jsx";
import { isReloading } from "../lib/update.js";
import { CameraView, FacePill, MicPill, PhonePill, SoundMeter, Watermark, Spinner } from "../ui.jsx";

const LETTERS = ["A", "B", "C", "D"];
const HEARTBEAT_MS = 25000;
const CAMERA_TYPES = ["multiple_faces", "no_face", "looking_away", "phone", "dark", "camera_off"];

// Two short beeps + a vibration so a warning can't be missed.
let beepCtx = null;
function alertStudent() {
  try { navigator.vibrate && navigator.vibrate([250, 120, 250]); } catch (e) { /* not supported */ }
  try {
    const AC = window.AudioContext || window.webkitAudioContext;
    if (!AC) return;
    beepCtx = beepCtx || new AC();
    pauseSoundChecks(1500); // don't let our own beep count as noise
    [0, 0.3].forEach(start => {
      const osc = beepCtx.createOscillator();
      const gain = beepCtx.createGain();
      osc.frequency.value = 880;
      gain.gain.setValueAtTime(0.25, beepCtx.currentTime + start);
      gain.gain.exponentialRampToValueAtTime(0.001, beepCtx.currentTime + start + 0.22);
      osc.connect(gain).connect(beepCtx.destination);
      osc.start(beepCtx.currentTime + start);
      osc.stop(beepCtx.currentTime + start + 0.25);
    });
  } catch (e) { /* sound is a bonus */ }
}

export default function ExamScreen({ cam, session, onFinished }) {
  const token = session.token;
  const [q, setQ] = useState(null);              // current question payload
  const [feedback, setFeedback] = useState(null); // { chosen, correct, correct_index, explanation }
  const [busy, setBusy] = useState(false);
  const [paused, setPaused] = useState(false);
  const [warnings, setWarnings] = useState(session.warnings || 0);
  const [deadline, setDeadline] = useState(new Date(session.deadline).getTime());
  const [message, setMessage] = useState("");
  const [toast, setToast] = useState(null);
  const [offline, setOffline] = useState(false);
  const [hidden, setHidden] = useState(false);
  const [confirmSubmit, setConfirmSubmit] = useState(false);
  const [showCalc, setShowCalc] = useState(false);
  const [warning, setWarning] = useState(null); // { count, max, label } — must be acknowledged
  const [faceMode, setFaceMode] = useState(session.face_mode || "full"); // admin can change it mid-exam
  const [, setTick] = useState(0);
  const ended = useRef(false);
  const maxWarnings = session.max_warnings;

  const finish = useCallback(result => {
    if (ended.current) return;
    ended.current = true;
    onFinished(result);
  }, [onFinished]);

  // Handles any server reply: finished, pause state, warnings, admin message.
  const absorb = useCallback(data => {
    if (!data) return data;
    setOffline(false);
    if (data.finished) { finish(data); return data; }
    if (typeof data.paused === "boolean") setPaused(data.paused);
    if (typeof data.warnings === "number") setWarnings(data.warnings);
    if (data.deadline) setDeadline(new Date(data.deadline).getTime());
    if (data.face_mode) setFaceMode(data.face_mode);
    if (data.message) {
      if (data.message.startsWith("Warning from the administrator")) {
        setWarning({ count: data.warnings, max: maxWarnings, label: data.message.replace(/^Warning from the administrator:\s*/, ""), type: "admin" });
        alertStudent();
      } else {
        setMessage(data.message);
      }
    }
    return data;
  }, [finish, maxWarnings]);

  const onError = useCallback(e => {
    if (e.code === "network") setOffline(true);
    else if (e.code === "invalid_session") finish({ finished: true, status: "terminated", reason: "Your exam session ended.", answered: 0, total: session.total, warnings });
    else setToast({ text: e.message, n: Date.now() });
  }, [finish, session.total, warnings]);

  const loading = useRef(false);
  const loadQuestion = useCallback(async () => {
    if (ended.current || loading.current) return;
    loading.current = true;
    try {
      const data = absorb(await api.question(token));
      if (!data || data.finished) return;
      if (data.paused) { setQ(null); return; }
      setQ(data);
      setFeedback(data.answered ? { chosen: data.chosen, correct: data.correct, correct_index: data.correct_index, explanation: data.explanation } : null);
    } catch (e) { onError(e); } finally { loading.current = false; }
  }, [token, absorb, onError]);

  useEffect(() => { loadQuestion(); }, [loadQuestion]);

  // Proctoring: violations go straight to the server, which counts them.
  const report = useCallback(async (type, detail, photo) => {
    if (ended.current || isReloading()) return; // refreshing for an update isn't leaving the exam
    if (noFaceChecks.current && CAMERA_TYPES.includes(type)) return;
    setToast({ text: VIOLATION_LABELS[type] || "Rule broken", n: Date.now(), warn: true });
    try {
      const data = absorb(await api.report(token, type, detail, photo));
      if (data && !data.finished && !data.ignored) {
        setToast(null);
        setWarning({ count: data.warnings, max: data.max_warnings, label: VIOLATION_LABELS[type], type });
        alertStudent();
      }
    } catch (e) { onError(e); }
  }, [token, absorb, onError]);

  const identity = useCallback(async (descriptor, photo) => {
    if (ended.current || noFaceChecks.current) return;
    try {
      const data = absorb(await api.heartbeat(token, descriptor, photo, liveStatus.current));
      if (data && data.face_fail_streak > 0) {
        setToast({ text: "Your face didn't match. Face the camera — a second mismatch ends the exam.", n: Date.now(), warn: true });
      }
    } catch (e) { onError(e); }
  }, [token, absorb, onError]);

  const micOnly = faceMode === "mic";
  // "Face at start": the camera picture stays on screen, but nothing is
  // detected, captured or reported — only the microphone gives warnings.
  const watchFace = faceMode !== "mic" && faceMode !== "start";
  const noFaceChecks = useRef(!watchFace);
  noFaceChecks.current = !watchFace;
  const proctor = useProctor({ cam, active: true, report, identity, level: session.proctor_level, video: watchFace });

  // The administrator can watch (and listen) live; nothing is recorded.
  const watchers = useLiveShare({ token, getTracks: cam.getTracks, getVideo: cam.getVideo });

  // Switched to microphone-only during the exam: turn the camera off.
  useEffect(() => {
    if (micOnly && cam.camera === "on") cam.stopVideo();
  }, [micOnly, cam]);

  // What the admin's live monitor shows for this student (sent with each heartbeat).
  const liveStatus = useRef(null);
  liveStatus.current = {
    face: proctor.face, noise: proctor.noisy || false, phone: proctor.phone,
    fullscreen: !!(document.fullscreenElement || document.webkitFullscreenElement),
    camera: cam.camera === "on", mic: cam.mic === "on",
  };

  // Heartbeat: keeps the admin's live view current and picks up admin actions.
  useEffect(() => {
    const t = setInterval(async () => {
      if (ended.current) return;
      try { absorb(await api.heartbeat(token, null, null, liveStatus.current)); } catch (e) { onError(e); }
    }, HEARTBEAT_MS);
    return () => clearInterval(t);
  }, [token, absorb, onError]);

  // Clock: the server decides when time is up; ask it as soon as we think so.
  useEffect(() => {
    const t = setInterval(() => {
      setTick(x => x + 1);
      const now = serverNow();
      if (now >= deadline) loadQuestion();
      else if (q && q.question_deadline && !feedback && now >= new Date(q.question_deadline).getTime() + 1500) loadQuestion();
    }, 1000);
    return () => clearInterval(t);
  }, [deadline, q, feedback, loadQuestion]);

  // Was paused: poll for resume.
  useEffect(() => {
    if (!paused) return undefined;
    const t = setInterval(loadQuestion, 5000);
    return () => clearInterval(t);
  }, [paused, loadQuestion]);

  // Hide the question whenever the page isn't in front (app switcher,
  // notification shade, control centre).
  useEffect(() => {
    const hide = () => setHidden(true);
    const show = () => { if (document.visibilityState === "visible") setHidden(false); };
    const vis = () => (document.visibilityState === "hidden" ? hide() : show());
    window.addEventListener("blur", hide);
    window.addEventListener("focus", show);
    document.addEventListener("visibilitychange", vis);
    return () => {
      window.removeEventListener("blur", hide);
      window.removeEventListener("focus", show);
      document.removeEventListener("visibilitychange", vis);
    };
  }, []);

  useEffect(() => {
    if (!toast) return undefined;
    const t = setTimeout(() => setToast(null), 5000);
    return () => clearTimeout(t);
  }, [toast]);

  async function choose(i) {
    if (!q || feedback || busy) return;
    setBusy(true);
    try {
      const data = absorb(await api.answer(token, q.question.id, i));
      if (data && !data.finished) setFeedback({ chosen: data.chosen, correct: data.correct, correct_index: data.correct_index, explanation: data.explanation });
    } catch (e) { onError(e); } finally { setBusy(false); }
  }

  async function next() {
    setBusy(true);
    try {
      const data = absorb(await api.next(token));
      if (data && !data.finished) {
        setFeedback(null);
        // Newer databases send the next question with the reply.
        if (data.question && !data.paused) setQ(data);
        else { setQ(null); await loadQuestion(); }
      }
    } catch (e) { onError(e); } finally { setBusy(false); }
  }

  async function submitNow() {
    setConfirmSubmit(false);
    try { absorb(await api.submit(token)); } catch (e) { onError(e); }
  }

  const now = serverNow();
  const left = deadline - now;
  const qLeft = q && q.question_deadline && !feedback ? new Date(q.question_deadline).getTime() - now : null;
  const watermarkText = `${session.name} · ${session.code} · ${new Date(now).toLocaleString(undefined, { day: "numeric", month: "short", hour: "2-digit", minute: "2-digit" })}`;
  const isLast = q && q.index + 1 >= q.total;

  return (
    <main className="wrap no-select">
      <Watermark text={watermarkText} />

      <header className="topbar" style={{ flexWrap: "wrap" }}>
        <div className="row">
          <strong>{session.title}</strong>
          {q && <span className="pill pill-off">Question {q.index + 1} / {q.total}</span>}
        </div>
        <div className="row">
          <span className={`timer ${left < 5 * 60000 ? "low" : ""}`} aria-label="Time left"><Clock size={16} /> {fmtClock(left)}</span>
          <span className={`pill ${warnings ? "pill-warn" : "pill-ok"}`}><AlertTriangle size={13} /> {warnings}/{maxWarnings}</span>
          <button className={`btn btn-sm ${showCalc ? "btn-primary" : "btn-ghost"}`} onClick={() => setShowCalc(v => !v)} aria-pressed={showCalc}><CalcIcon size={14} /> Calculator</button>
          <button className="btn btn-ghost btn-sm" onClick={() => setConfirmSubmit(true)}><Send size={14} /> Submit</button>
        </div>
      </header>

      {proctor.noisy && (
        <div className="banner banner-bad" role="alert">
          <VolumeX size={18} /> {proctor.noisy === "talking" ? "Talking detected" : "Noise detected"} — keep completely quiet. If it continues you get a warning.
        </div>
      )}
      {offline && <div className="banner banner-warn"><WifiOff size={16} /> Reconnecting… your answers so far are saved. Stay on this page.</div>}
      {message && (
        <div className="banner banner-info">
          <MessageSquare size={16} /> <span style={{ flex: 1 }}>Administrator: {message}</span>
          <button className="btn btn-sm btn-ghost" onClick={() => setMessage("")}>OK</button>
        </div>
      )}

      <div className="session">
        <section className={`card ${hidden ? "shield" : ""}`} aria-live="polite">
          {paused ? (
            <div style={{ textAlign: "center", padding: "30px 0" }}>
              <PauseCircle size={36} color="var(--amber)" />
              <h2 style={{ fontSize: 18 }}>The exam is paused</h2>
              <p className="muted">The administrator has paused the exam. Stay on this page — it continues automatically.</p>
            </div>
          ) : !q ? (
            <div style={{ textAlign: "center", padding: 30 }}><Spinner /></div>
          ) : (
            <>
              <div className="row" style={{ marginBottom: 8 }}>
                <span className="faint" style={{ fontSize: 12.5, fontWeight: 700, textTransform: "uppercase", letterSpacing: "0.04em" }}>{q.question.category}</span>
                <span className="spacer" />
                {qLeft != null && <span className={`pill ${qLeft < 10000 ? "pill-bad" : "pill-off"}`}><Clock size={13} /> {fmtClock(qLeft)}</span>}
              </div>
              <h2 style={{ fontSize: 18, lineHeight: 1.45, margin: "0 0 16px" }}>{q.question.q}</h2>
              <div style={{ display: "flex", flexDirection: "column", gap: 10 }}>
                {q.question.opts.map((opt, i) => {
                  let cls = "";
                  if (feedback) {
                    if (feedback.correct_index != null) cls = i === feedback.correct_index ? "correct" : i === feedback.chosen ? "wrong" : "";
                    else if (i === feedback.chosen) cls = "chosen";
                  }
                  return (
                    <button key={i} className={`option ${cls}`} disabled={!!feedback || busy} onClick={() => choose(i)}>
                      <span className="letter">{LETTERS[i]}</span>
                      <span style={{ flex: 1 }}>{opt}</span>
                      {cls === "correct" && <CheckCircle2 size={18} color="var(--emerald)" />}
                      {cls === "wrong" && <XCircle size={18} color="var(--red)" />}
                    </button>
                  );
                })}
              </div>
              {feedback && feedback.correct_index != null && (
                <div style={{ marginTop: 16, padding: 14, borderRadius: 12, background: feedback.correct ? "var(--emerald-soft)" : "var(--red-soft)" }}>
                  <strong style={{ color: feedback.correct ? "var(--emerald)" : "var(--red)" }}>
                    {feedback.correct ? "Correct!" : `Wrong — the answer is ${LETTERS[feedback.correct_index]}.`}
                  </strong>
                  {feedback.explanation && <p style={{ margin: "6px 0 0", fontSize: 14 }}>{feedback.explanation}</p>}
                </div>
              )}
              {feedback && feedback.correct_index == null && (
                <p className="muted" style={{ marginTop: 14 }}>Answer recorded.</p>
              )}
              <div style={{ display: "flex", justifyContent: "flex-end", marginTop: 16 }}>
                <button className={`btn ${isLast ? "btn-success" : "btn-primary"}`} disabled={!feedback || busy} onClick={next}>
                  {isLast ? "Finish exam" : "Next question"} <ArrowRight size={16} />
                </button>
              </div>
            </>
          )}
        </section>

        <aside className="monitor card" style={{ padding: 12 }} aria-label="Proctoring">
          {!micOnly && <CameraView stream={cam.stream} status={cam.camera} label="Proctored" />}
          <div className="monitor-info" style={{ display: "flex", flexDirection: "column", gap: 8 }}>
            <div className="chip-row" style={{ gap: 6 }}>
              {watchFace && <FacePill face={proctor.face} />}
              <MicPill mic={cam.mic} noisy={proctor.noisy} />
              {watchFace && <PhonePill phone={proctor.phone} />}
            </div>
            {cam.mic === "on" && <SoundMeter level={proctor.level} noisy={proctor.noisy} />}
            {watchers > 0 && <span className="pill pill-warn" style={{ alignSelf: "flex-start" }}><Eye size={13} /> Administrator is watching live</span>}
            <div className="faint" style={{ fontSize: 12 }}>{micOnly ? "Microphone on. Your administrator may listen live. Nothing is recorded." : !watchFace ? "Camera and microphone on. Your administrator may watch live. Nothing is recorded." : "Identity checked every minute. Your administrator may watch live. Video is not recorded."}</div>
          </div>
        </aside>
      </div>

      {showCalc && <Calculator onClose={() => setShowCalc(false)} />}

      {toast && <div className="toast" role="alert" key={toast.n}><AlertTriangle size={16} /> {toast.text}</div>}

      {warning && (
        <div className="overlay" role="alertdialog" aria-modal="true" aria-labelledby="warn-h">
          <div className="card" style={{ borderColor: "var(--red)", textAlign: "center" }}>
            <AlertTriangle size={40} color="var(--red)" />
            <h2 id="warn-h" style={{ fontSize: 22, margin: "8px 0 4px", color: "var(--red)" }}>Warning {warning.count} of {warning.max}</h2>
            <p style={{ fontWeight: 700, margin: "0 0 6px" }}>{warning.label}</p>
            <p className="muted" style={{ marginTop: 0 }}>
              {warning.type === "noise" ? "Keep your surroundings quiet and don't talk to anyone. " : ""}
              {warning.type === "admin" ? "This warning was given by your administrator, who is watching the exam. " : ""}
              {warning.max - warning.count === 1
                ? "One more warning and your exam is submitted automatically."
                : `${warning.max - warning.count} more warnings and your exam is submitted automatically.`}
              {" "}Your administrator has been notified and a photo was saved.
            </p>
            <button className="btn btn-primary btn-full" onClick={() => setWarning(null)}>I understand</button>
          </div>
        </div>
      )}

      {confirmSubmit && (
        <div className="overlay" role="dialog" aria-modal="true" aria-labelledby="submit-h">
          <div className="card">
            <h2 id="submit-h" style={{ fontSize: 18, marginTop: 0 }}>Submit your exam now?</h2>
            <p className="muted">Questions you haven’t answered will score zero. You can’t come back after submitting.</p>
            <div className="row" style={{ justifyContent: "flex-end" }}>
              <button className="btn btn-ghost" onClick={() => setConfirmSubmit(false)}>Keep going</button>
              <button className="btn btn-primary" onClick={submitNow}>Submit</button>
            </div>
          </div>
        </div>
      )}
    </main>
  );
}
