import { useCallback, useEffect, useRef, useState } from "react";
import { AlertTriangle, Calculator as CalcIcon, Eye, VideoOff, ArrowRight, CheckCircle2, XCircle, Clock, PauseCircle, MessageSquare, WifiOff, Send, VolumeX } from "lucide-react";
import { api, serverNow, fmtClock } from "../lib/api.js";
import { useProctor, VIOLATION_LABELS, pauseSoundChecks } from "../lib/proctor.js";
import { useLiveShare } from "../lib/live.js";
import Calculator from "./Calculator.jsx";
import { isReloading } from "../lib/update.js";
import { IN_APP } from "../lib/app.js";
import { CameraView, FacePill, MicPill, PhonePill, SoundMeter, Watermark, Spinner } from "../ui.jsx";

const LETTERS = ["A", "B", "C", "D"];
const HEARTBEAT_MS = 15000;
const CAMERA_TYPES = ["multiple_faces", "no_face", "looking_away", "dark", "camera_off"];

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
  const messageTimer = useRef(null);
  const [toast, setToast] = useState(null);
  const [offline, setOffline] = useState(false);
  const [hidden, setHidden] = useState(false);
  const [confirmSubmit, setConfirmSubmit] = useState(false);
  const [showCalc, setShowCalc] = useState(false);
  const [warning, setWarning] = useState(null); // { count, max, label } — must be acknowledged
  const [faceMode, setFaceMode] = useState(session.face_mode || "full"); // admin can change it mid-exam
  const [dbWatch, setDbWatch] = useState(false); // an admin asked for live pictures (database route)
  const [, setTick] = useState(0);
  const ended = useRef(false);
  const maxWarnings = session.max_warnings;

  // Keep callbacks stable across re-renders (the parent passes a new
  // onFinished each render), so the heartbeat timer and question loader are
  // never reset by an unrelated re-render.
  const onFinishedRef = useRef(onFinished);
  onFinishedRef.current = onFinished;

  // Fast mode (exams that don't show answers): the next few questions are
  // downloaded in advance and answers go to the server in the background, in
  // order, so "Next" is instant even on a slow network. Answers waiting to be
  // sent are kept in this device's storage, so a refresh doesn't lose them.
  const canFast = !session.show_answers;
  const fast = useRef(false);
  const ahead = useRef(new Map()); // index -> { index, total, question }
  const queueKey = `exam-queue-${token}`;
  const queue = useRef(null);
  if (queue.current === null) {
    try { queue.current = JSON.parse(localStorage.getItem(queueKey) || "[]"); } catch (e) { queue.current = []; }
    if (!Array.isArray(queue.current)) queue.current = [];
  }
  const [pending, setPending] = useState(queue.current.length);
  const saveQueue = useCallback(() => {
    try { localStorage.setItem(queueKey, JSON.stringify(queue.current)); } catch (e) { /* storage full or blocked */ }
    setPending(queue.current.length);
  }, [queueKey]);
  const flushRef = useRef(null);

  const finish = useCallback(result => {
    if (ended.current) return;
    // Answers still on their way: send them first, then show the final result.
    if (queue.current.length && flushRef.current) {
      flushRef.current().then(last => {
        if (ended.current) return;
        ended.current = true;
        onFinishedRef.current(last || result);
      });
      return;
    }
    ended.current = true;
    onFinishedRef.current(result);
  }, []);

  // Handles any server reply: finished, pause state, warnings, admin message.
  const absorb = useCallback(data => {
    if (!data) return data;
    setOffline(false);
    if (data.finished) { finish(data); return data; }
    if (typeof data.paused === "boolean") setPaused(data.paused);
    if (typeof data.warnings === "number") setWarnings(data.warnings);
    if (data.deadline) setDeadline(new Date(data.deadline).getTime());
    if (data.face_mode) setFaceMode(data.face_mode);
    if (data.watch) setDbWatch(true);
    if (data.message) {
      if (data.message.startsWith("Warning from the administrator")) {
        setWarning({ count: data.warnings, max: maxWarnings, label: data.message.replace(/^Warning from the administrator:\s*/, ""), type: "admin" });
        alertStudent();
      } else {
        setMessage(data.message);
        // Admin chose a display time: hide it automatically after that.
        if (data.message_seconds > 0) {
          clearTimeout(messageTimer.current);
          const text = data.message;
          messageTimer.current = setTimeout(() => setMessage(m => (m === text ? "" : m)), data.message_seconds * 1000);
        }
      }
    }
    return data;
  }, [finish, maxWarnings]);

  const warningsRef = useRef(warnings);
  warningsRef.current = warnings;
  const onError = useCallback(e => {
    if (e.code === "network") setOffline(true);
    else if (e.code === "invalid_session") finish({ finished: true, status: "terminated", reason: "Your exam session ended.", answered: 0, total: session.total, warnings: warningsRef.current });
    else setToast({ text: e.message, n: Date.now() });
  }, [finish, session.total]);

  const loading = useRef(false);
  const loadQuestion = useCallback(async () => {
    if (ended.current || loading.current) return;
    loading.current = true;
    try {
      const data = absorb(await api.question(token));
      if (!data || data.finished) return;
      if (data.paused) { if (!fast.current) setQ(null); return; }
      // Fast mode: the server may still be behind this page (answers not sent yet).
      if (fast.current && (queue.current.length || (qRef.current && data.index < qRef.current.index))) return;
      setQ(data);
      setFeedback(data.answered ? { chosen: data.chosen, correct: data.correct, correct_index: data.correct_index, explanation: data.explanation } : null);
    } catch (e) { onError(e); } finally { loading.current = false; }
  }, [token, absorb, onError]);

  const qRef = useRef(null);
  qRef.current = q;

  // Send queued answers one by one, retrying until they get through.
  // Resolves with the final result if the exam finished meanwhile.
  const flushing = useRef(null);
  const flush = useCallback(() => {
    if (flushing.current) return flushing.current;
    flushing.current = (async () => {
      let last = null;
      while (queue.current.length) {
        const st = queue.current[0];
        try {
          let data;
          try { data = await api.step(token, st.id, st.choice); } catch (e) {
            if (e.code !== "devices_off") throw e;
            await api.heartbeat(token, null, null, liveStatus.current).catch(() => {});
            data = await api.step(token, st.id, st.choice);
          }
          queue.current.shift(); saveQueue();
          if (data && data.finished) last = data;
          else if (data) { if (data.deadline) setDeadline(new Date(data.deadline).getTime()); if (typeof data.warnings === "number") setWarnings(data.warnings); }
        } catch (e) {
          if (["network", "devices_off", "exam_paused"].includes(e.code)) { await new Promise(r => setTimeout(r, 5000)); continue; }
          queue.current.shift(); saveQueue(); // not accepted (e.g. already moved on): skip it
        }
      }
      return last;
    })().finally(() => { flushing.current = null; });
    return flushing.current;
  }, [token, saveQueue]);
  flushRef.current = flush;

  // Download the next few questions in advance.
  const prefetching = useRef(false);
  const prefetch = useCallback(async from => {
    if (!fast.current || prefetching.current || ended.current) return;
    prefetching.current = true;
    try {
      const data = await api.upcoming(token, from, 10);
      if (data && data.finished) { finish(data); return; }
      if (data && data.paused) { setPaused(true); return; }
      for (const x of (data && data.questions) || []) ahead.current.set(x.index, { index: x.index, total: data.total, question: x.question });
    } catch (e) { /* try again on the next question */ } finally { prefetching.current = false; }
  }, [token, finish]);

  const want = useRef(null); // index waiting to be shown when it arrives
  const showLocal = useCallback(index => {
    const x = ahead.current.get(index);
    if (!x) return false;
    ahead.current.delete(index);
    const per = session.per_question_seconds;
    setQ({ ...x, question_deadline: per ? new Date(serverNow() + per * 1000).toISOString() : null });
    setFeedback(null);
    want.current = null;
    return true;
  }, [session.per_question_seconds]);

  // Move on (fast mode): queue the answer (null = none) and show the next question at once.
  const [sending, setSending] = useState(false); // last question done, sending the answers
  const advance = useCallback(choice => {
    const cur = qRef.current;
    if (!cur || ended.current) return;
    queue.current.push({ id: cur.question.id, choice: choice ?? null });
    saveQueue();
    const wasLast = cur.index + 1 >= cur.total;
    flush().then(last => {
      if (last) finish(last);
      else if (wasLast) { setSending(false); loadQuestion(); } // not finished after all: ask the server where we are
    });
    setFeedback(null);
    if (wasLast) { setQ(null); setSending(true); return; }
    if (!showLocal(cur.index + 1)) { setQ(null); want.current = cur.index + 1; prefetch(cur.index + 1); }
    else if (!ahead.current.has(cur.index + 6)) prefetch(cur.index + 2);
  }, [saveQueue, flush, finish, showLocal, prefetch, loadQuestion]);

  useEffect(() => {
    // Answers left from before a refresh: send them first, then load where the server is.
    if (queue.current.length) { fast.current = true; flush().then(last => { if (last) finish(last); else loadQuestion(); }); }
    else loadQuestion();
    if (canFast) {
      api.upcoming(token, 0, 10).then(data => {
        if (!data || data.finished || data.paused) return;
        fast.current = true;
        for (const x of data.questions || []) ahead.current.set(x.index, { index: x.index, total: data.total, question: x.question });
      }, () => { /* database without fast mode: answer as before */ });
    }
  }, []); // eslint-disable-line react-hooks/exhaustive-deps

  // Proctoring: violations go straight to the server, which counts them.
  const report = useCallback(async (type, detail, photo) => {
    if (ended.current || isReloading()) return; // refreshing for an update isn't leaving the exam
    if (noFaceChecks.current && CAMERA_TYPES.includes(type)) return;
    if (type === "phone" && micOnlyRef.current) return; // no camera in microphone-only mode
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
  const micOnlyRef = useRef(micOnly);
  micOnlyRef.current = micOnly;
  const proctor = useProctor({ cam, active: true, report, identity, level: session.proctor_level, video: watchFace, phoneCheck: !micOnly });

  // The administrator can watch (and listen) live; nothing is recorded.
  const watchers = useLiveShare({ token, getTracks: cam.getTracks, getVideo: cam.getVideo });

  // Live pictures through the database: works even when the Realtime live link
  // can't connect. While an admin is watching, send a small picture every 2 s.
  useEffect(() => {
    if (!dbWatch) return undefined;
    let busy = false;
    const canvas = document.createElement("canvas");
    const tick = async () => {
      if (busy || ended.current) return;
      busy = true;
      let img = "";
      const v = cam.getVideo();
      if (v && v.readyState >= 2 && v.videoWidth) {
        canvas.width = 240;
        canvas.height = Math.round(240 * v.videoHeight / v.videoWidth);
        try { canvas.getContext("2d").drawImage(v, 0, 0, canvas.width, canvas.height); img = canvas.toDataURL("image/jpeg", 0.5); } catch (e) { img = ""; }
      }
      try {
        const r = await api.liveFrame(token, img);
        if (r && r.watch === false) setDbWatch(false);
      } catch (e) { /* network blip — try again next tick */ }
      busy = false;
    };
    tick();
    const t = setInterval(tick, 2000);
    return () => clearInterval(t);
  }, [dbWatch, token]); // eslint-disable-line react-hooks/exhaustive-deps

  // Switched to microphone-only during the exam: turn the camera off.
  useEffect(() => {
    if (micOnly && cam.camera === "on") cam.stopVideo();
  }, [micOnly, cam]);



  // Heartbeat: keeps the admin's live view current and picks up admin actions.
  // On a slow network, never send a new one while the last is still on its way.
  useEffect(() => {
    let inFlight = false;
    const t = setInterval(async () => {
      if (ended.current || inFlight) return;
      inFlight = true;
      try { absorb(await api.heartbeat(token, null, null, liveStatus.current)); } catch (e) { onError(e); } finally { inFlight = false; }
    }, HEARTBEAT_MS);
    return () => clearInterval(t);
  }, [token, absorb, onError]);

  // Answer / next / question calls retry by themselves on a weak network:
  // show "Reconnecting…" while they wait instead of an error.
  useEffect(() => {
    const onNet = e => setOffline(!!(e.detail && e.detail.waiting));
    window.addEventListener("exam-network", onNet);
    return () => window.removeEventListener("exam-network", onNet);
  }, []);

  // Clock: the server decides when time is up; ask it as soon as we think so.
  useEffect(() => {
    const t = setInterval(() => {
      setTick(x => x + 1);
      const now = serverNow();
      if (now >= deadline) { if (!flushing.current) loadQuestion(); }
      else if (fast.current) {
        if (!q && want.current != null && !showLocal(want.current)) prefetch(want.current);
        else if (q && q.question_deadline && !feedback && now >= new Date(q.question_deadline).getTime()) advance(null);
      }
      else if (q && q.question_deadline && !feedback && now >= new Date(q.question_deadline).getTime() + 1500) loadQuestion();
    }, 1000);
    return () => clearInterval(t);
  }, [deadline, q, feedback, loadQuestion, showLocal, prefetch, advance]);

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

  // Camera and microphone must stay on for the whole exam (camera not needed in
  // microphone-only mode). If either goes off — switched off, permission
  // removed, or the phone's privacy toggle — the questions are locked until it's
  // back on. A short grace period ignores brief glitches.
  const needCamera = !micOnly;
  // Phones' privacy switches often keep the camera/mic "on" but send black
  // pictures / pure digital silence. Detect that too: ~5 s of completely black
  // video, or 15 s of exact-zero audio (a working mic always has some noise,
  // even in a silent room), counts as switched off.
  const [camBlocked, setCamBlocked] = useState(false);
  const [micBlocked, setMicBlocked] = useState(false);
  useEffect(() => {
    let blackSecs = 0;
    let silentSecs = 0;
    const canvas = document.createElement("canvas");
    canvas.width = 16; canvas.height = 12;
    const ctx = canvas.getContext("2d", { willReadFrequently: true });
    let buf = null;
    let audioPeak = 0; // loudest sample seen this second (checked 4× a second)
    const sampleAudio = () => {
      const analyser = cam.getAnalyser();
      if (cam.mic !== "on" || !analyser || cam.getAudioState() !== "running" || !analyser.getFloatTimeDomainData) { audioPeak = 1; return; }
      buf = buf && buf.length === analyser.fftSize ? buf : new Float32Array(analyser.fftSize);
      analyser.getFloatTimeDomainData(buf);
      for (let i = 0; i < buf.length; i++) { const a = Math.abs(buf[i]); if (a > audioPeak) audioPeak = a; }
    };
    const a = setInterval(sampleAudio, 250);
    const t = setInterval(() => {
      if (document.visibilityState !== "visible") { audioPeak = 1; return; }
      if (needCamera && cam.camera === "on") {
        const v = cam.getVideo();
        if (v && v.readyState >= 2 && v.videoWidth) {
          try {
            ctx.drawImage(v, 0, 0, 16, 12);
            const px = ctx.getImageData(0, 0, 16, 12).data;
            let sum = 0; let max = 0;
            for (let i = 0; i < px.length; i += 4) { const l = 0.299 * px[i] + 0.587 * px[i + 1] + 0.114 * px[i + 2]; sum += l; if (l > max) max = l; }
            blackSecs = sum / (px.length / 4) < 3 && max < 10 ? blackSecs + 1 : 0;
          } catch (e) { blackSecs = 0; }
        }
      } else blackSecs = 0;
      setCamBlocked(blackSecs >= 5);
      silentSecs = audioPeak < 1e-6 ? silentSecs + 1 : 0;
      audioPeak = 0;
      setMicBlocked(silentSecs >= 15);
    }, 1000);
    return () => { clearInterval(t); clearInterval(a); };
  }, [needCamera, cam.camera, cam.mic, cam.version]); // eslint-disable-line react-hooks/exhaustive-deps

  const devicesOff = cam.mic !== "on" || micBlocked || (needCamera && (cam.camera !== "on" || camBlocked));
  const [locked, setLocked] = useState(false);
  const [relockMsg, setRelockMsg] = useState("");
  useEffect(() => {
    if (!devicesOff) { setLocked(false); setRelockMsg(""); return undefined; }
    const t = setTimeout(() => setLocked(true), 2000);
    return () => clearTimeout(t);
  }, [devicesOff]);
  async function turnBackOn() {
    setRelockMsg("");
    setCamBlocked(false); setMicBlocked(false);
    await cam.restart({ video: needCamera });
  }
  useEffect(() => {
    if (!locked) return;
    if (["denied", "unavailable", "error"].includes(cam.camera) || ["denied", "unavailable", "error"].includes(cam.mic)) {
      setRelockMsg("Your browser is blocking the camera or microphone. Tap the lock (🔒) or ⓘ icon beside the website address → Permissions → allow Camera and Microphone, then tap the button again.");
    }
  }, [locked, cam.camera, cam.mic]);

  // What the admin's live monitor shows for this student (sent with each heartbeat).
  const liveStatus = useRef(null);
  liveStatus.current = {
    face: proctor.face, noise: proctor.noisy || false, phone: proctor.phone,
    fullscreen: IN_APP || !!(document.fullscreenElement || document.webkitFullscreenElement), app: IN_APP,
    camera: cam.camera === "on" && !camBlocked, mic: cam.mic === "on" && !micBlocked, locked,
  };
  // The server refuses answers while the camera/mic is reported off, so tell it
  // straight away whenever that changes (not only on the 15 s heartbeat).
  const deviceKey = `${liveStatus.current.camera}${liveStatus.current.mic}${locked}`;
  const sendStatus = useCallback(() => api.heartbeat(token, null, null, liveStatus.current).then(absorb), [token, absorb]);
  useEffect(() => {
    if (!ended.current) sendStatus().catch(() => {});
  }, [deviceKey, sendStatus]);
  async function choose(i) {
    if (!q || feedback || busy || locked) return;
    if (fast.current) { setFeedback({ chosen: i }); return; } // sent with "Next"
    setBusy(true);
    try {
      let data;
      try { data = await api.answer(token, q.question.id, i); } catch (e) {
        if (e.code !== "devices_off") throw e;
        await sendStatus(); // the server had an old status — update it and try once more
        data = await api.answer(token, q.question.id, i);
      }
      data = absorb(data);
      if (data && !data.finished) setFeedback({ chosen: data.chosen, correct: data.correct, correct_index: data.correct_index, explanation: data.explanation });
    } catch (e) { onError(e); } finally { setBusy(false); }
  }

  async function next() {
    if (locked) return;
    if (fast.current) { advance(feedback ? feedback.chosen : null); return; }
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
    setSending(true);
    try {
      // Send any answers still waiting before submitting.
      const last = await flush();
      if (last) { finish(last); return; }
      absorb(await api.submit(token));
    } catch (e) { onError(e); } finally { setSending(false); }
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
      {offline && <div className="banner banner-warn"><WifiOff size={16} /> Weak network — reconnecting… Your answers are saved and will go through by themselves. Stay on this page.</div>}
      {message && (
        <div className="banner banner-info">
          <MessageSquare size={16} /> <span style={{ flex: 1 }}>Administrator: {message}</span>
          <button className="btn btn-sm btn-ghost" onClick={() => setMessage("")}>OK</button>
        </div>
      )}

      <div className="session">
        <section className={`card ${hidden || locked ? "shield" : ""}`} aria-live="polite">
          {paused ? (
            <div style={{ textAlign: "center", padding: "30px 0" }}>
              <PauseCircle size={36} color="var(--amber)" />
              <h2 style={{ fontSize: 18 }}>The exam is paused</h2>
              <p className="muted">The administrator has paused the exam. Stay on this page — it continues automatically.</p>
            </div>
          ) : sending || left <= 0 ? (
            <div style={{ textAlign: "center", padding: 30 }}>
              <Spinner />
              <p className="muted" style={{ marginTop: 12 }}>{left <= 0 ? "Time is up. " : ""}Sending your answers{pending ? ` (${pending} left)` : ""}… Stay on this page.</p>
            </div>
          ) : !q ? (
            <div style={{ textAlign: "center", padding: 30 }}>
              <Spinner />
              {offline && <p className="muted" style={{ marginTop: 12 }}>Loading the next question… (weak network)</p>}
            </div>
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
                <p className="muted" style={{ marginTop: 14 }}>{fast.current ? "Answer chosen. Tap Next — it is saved automatically." : "Answer recorded."}</p>
              )}
              {pending > 2 && <p className="faint" style={{ fontSize: 12.5, marginTop: 6 }}>{pending} answers waiting to send (weak network) — they are kept safely and go through by themselves.</p>}
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
              {!micOnly && <PhonePill phone={proctor.phone} />}
            </div>
            {cam.mic === "on" && <SoundMeter level={proctor.level} noisy={proctor.noisy} />}
            {(watchers > 0 || dbWatch) && <span className="pill pill-warn" style={{ alignSelf: "flex-start" }}><Eye size={13} /> Administrator is watching live</span>}
            <div className="faint" style={{ fontSize: 12 }}>{micOnly ? "Microphone on. Your administrator may listen live. Nothing is recorded." : !watchFace ? "Camera and microphone on. Your administrator may watch live. Nothing is recorded." : "Identity checked every minute. Your administrator may watch live. Video is not recorded."}</div>
          </div>
        </aside>
      </div>

      {showCalc && <Calculator onClose={() => setShowCalc(false)} />}

      {locked && (
        <div className="overlay" role="alertdialog" aria-modal="true" aria-labelledby="dev-h">
          <div className="card" style={{ borderColor: "var(--red)", textAlign: "center" }}>
            <VideoOff size={40} color="var(--red)" />
            <h2 id="dev-h" style={{ fontSize: 20, margin: "8px 0 4px", color: "var(--red)" }}>
              {(cam.mic !== "on" || micBlocked) && needCamera && (cam.camera !== "on" || camBlocked) ? "Camera and microphone are off"
                : cam.mic !== "on" || micBlocked ? "Microphone is off or blocked" : "Camera is off, covered or blocked"}
            </h2>
            <p className="muted" style={{ marginTop: 0 }}>
              The exam is locked until your {needCamera ? "camera and microphone are" : "microphone is"} back on. <strong>Your time is still running.</strong> Your administrator can see this.
            </p>
            {(camBlocked || micBlocked) && <div className="banner banner-warn" style={{ textAlign: "left" }}>Your {camBlocked && micBlocked ? "camera shows only black and your microphone is silent" : camBlocked ? "camera shows only black" : "microphone is completely silent"}. Check your phone's quick settings (swipe down) and turn ON camera access and microphone access, and make sure nothing is covering the camera.</div>}
            {relockMsg && <div className="banner banner-warn" style={{ textAlign: "left" }}>{relockMsg}</div>}
            <button className="btn btn-primary btn-full" onClick={turnBackOn} disabled={cam.camera === "starting" || cam.mic === "starting"}>
              {cam.camera === "starting" || cam.mic === "starting" ? "Turning on…" : <>Turn {needCamera ? "camera and microphone" : "microphone"} back on</>}
            </button>
          </div>
        </div>
      )}

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
