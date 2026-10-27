import { useCallback, useEffect, useState } from "react";
import { reloadNow } from "../lib/update.js";
import { KeyRound, ArrowRight, ShieldCheck, Clock, PlayCircle, Hourglass, CheckCircle2, XCircle, LogOut, RefreshCw, Video, Lock, RotateCcw } from "lucide-react";
import { api, serverNow, fmtClock } from "../lib/api.js";
import { useCamera, enterFullscreen, exitFullscreen } from "../lib/proctor.js";
import { snapshot } from "../lib/face.js";
import { PermissionHelp, Spinner, fmtDateTime } from "../ui.jsx";
import Liveness from "./Liveness.jsx";
import ExamScreen from "./ExamScreen.jsx";

const CODE_KEY = "exam-room-code";

function Header({ name, onLogout }) {
  return (
    <header className="topbar">
      <div className="brand">
        <span className="brand-mark"><ShieldCheck size={20} /></span>
        <div>
          <div className="serif" style={{ fontWeight: 700, fontSize: 17 }}>CCN Exam Room</div>
          {name && <div className="faint" style={{ fontSize: 12 }}>{name}</div>}
        </div>
      </div>
      {onLogout && <button className="btn btn-ghost btn-sm" onClick={onLogout}><LogOut size={14} /> Log out</button>}
    </header>
  );
}

function CodeScreen({ onLogin }) {
  const [code, setCode] = useState("");
  const [busy, setBusy] = useState(false);
  const [error, setError] = useState("");
  async function submit(e) {
    e.preventDefault();
    setBusy(true); setError("");
    try { await onLogin(code.trim().toUpperCase()); } catch (err) { setError(err.message); } finally { setBusy(false); }
  }
  return (
    <main className="wrap" style={{ minHeight: "100vh", display: "flex", alignItems: "center" }}>
      <div className="narrow" style={{ width: "100%" }}>
        <div style={{ textAlign: "center", marginBottom: 22 }}>
          <div className="brand-mark" style={{ margin: "0 auto 10px", width: 52, height: 52, borderRadius: 16 }}><ShieldCheck size={26} /></div>
          <h1 className="serif" style={{ fontSize: 24, margin: "0 0 4px" }}>CCN Exam Room</h1>
          <p className="muted" style={{ margin: 0, fontSize: 14 }}>Enter the personal access code your administrator gave you.</p>
        </div>
        <form className="card" onSubmit={submit} style={{ display: "flex", flexDirection: "column", gap: 14 }}>
          <div className="field">
            <label htmlFor="code"><KeyRound size={11} /> Access code</label>
            <input id="code" className="code-input" value={code} onChange={e => setCode(e.target.value.replace(/[^a-z0-9]/gi, "").slice(0, 12))}
              autoCapitalize="characters" autoCorrect="off" spellCheck={false} autoComplete="one-time-code" inputMode="text" required />
          </div>
          {error && <div className="error" role="alert">{error}</div>}
          <button className="btn btn-primary btn-full" disabled={busy || code.length < 6}>
            {busy ? "Checking…" : "Continue"} {!busy && <ArrowRight size={16} />}
          </button>
          <p className="faint" style={{ fontSize: 12.5, margin: 0, display: "flex", gap: 6 }}>
            <Lock size={14} style={{ flex: "none", marginTop: 2 }} />
            Your code is personal. Don’t share it with anyone.
          </p>
        </form>
      </div>
    </main>
  );
}

// Full name typed by a student with a blank code: first name and surname.
function validName(n) { return /\p{L}.*\s.*\p{L}/u.test(n.trim()) && n.trim().length >= 3 && n.trim().length <= 80; }

// Blank code with face registration turned off: only the student's name is needed.
function NameScreen({ code, onDone, onLogout }) {
  const [fullName, setFullName] = useState("");
  const [busy, setBusy] = useState(false);
  const [error, setError] = useState("");
  async function save(e) {
    e.preventDefault();
    if (!validName(fullName)) { setError("Type your full name (first name and surname)."); return; }
    setBusy(true); setError("");
    try { await api.enroll(code, null, null, fullName.trim().replace(/\s+/g, " ")); onDone(); }
    catch (err) { setError(err.message); } finally { setBusy(false); }
  }
  return (
    <main className="wrap">
      <Header onLogout={onLogout} />
      <form className="narrow card" onSubmit={save} style={{ display: "flex", flexDirection: "column", gap: 12 }}>
        <h1 className="serif" style={{ fontSize: 22, margin: 0 }}>Your name</h1>
        <div className="field">
          <label htmlFor="fullname-only">Your full name (as on your school records)</label>
          <input id="fullname-only" value={fullName} onChange={e => setFullName(e.target.value)} placeholder="e.g. Amina Bello" autoComplete="name" maxLength={80} />
          <span className="faint" style={{ fontSize: 12.5 }}>First name and surname. You can't change it later, so check the spelling.</span>
        </div>
        {error && <div className="error" role="alert">{error}</div>}
        <button className="btn btn-primary btn-full" disabled={busy || !validName(fullName)}>{busy ? "Saving…" : "Continue"} {!busy && <ArrowRight size={16} />}</button>
      </form>
    </main>
  );
}

function EnrollScreen({ name, nameNeeded, code, cam, faceMode, onEnrolled, onLogout }) {
  const [started, setStarted] = useState(false);
  const [error, setError] = useState("");
  const [fullName, setFullName] = useState("");
  const nameOk = !nameNeeded || validName(fullName);
  async function begin() {
    if (!nameOk) { setError("Type your full name (first name and surname) first."); return; }
    setError(""); setStarted(true); await cam.start();
  }
  async function finish({ descriptor, photo }) {
    try { await api.enroll(code, descriptor, photo, nameNeeded ? fullName.trim().replace(/\s+/g, " ") : null); cam.stop(); onEnrolled(); }
    catch (e) { setError(e.message); setStarted(false); cam.stop(); }
  }
  return (
    <main className="wrap">
      <Header name={name} onLogout={onLogout} />
      <div className="narrow">
        <h1 className="serif" style={{ fontSize: 22, margin: "0 0 6px" }}>Register your face</h1>
        {faceMode === "start" ? (
          <p className="muted" style={{ marginTop: 0 }}>
            This is done once. Your face will be checked when you start each exam, so nobody else can use your code.
          </p>
        ) : faceMode === "easy" ? (
          <p className="muted" style={{ marginTop: 0 }}>
            This is done once: one quick photo of your face for your exam record. You can start your exams straight after.
          </p>
        ) : (
          <p className="muted" style={{ marginTop: 0 }}>
            This is done once. Your face will be checked at the start of every exam and every minute during it,
            so nobody else can use your code. An administrator will approve your registration.
          </p>
        )}
        <ul className="muted" style={{ fontSize: 14, paddingLeft: 18 }}>
          <li>Sit in good light, facing the camera, with nothing covering your face.</li>
          <li>Make sure you are alone in view.</li>
        </ul>
        {error && <div className="banner banner-bad">{error}</div>}
        {nameNeeded && !started && (
          <div className="field" style={{ marginBottom: 14 }}>
            <label htmlFor="fullname">Your full name (as on your school records)</label>
            <input id="fullname" value={fullName} onChange={e => setFullName(e.target.value)}
              placeholder="e.g. Amina Bello" autoComplete="name" maxLength={80} />
            <span className="faint" style={{ fontSize: 12.5 }}>First name and surname. You can't change it later, so check the spelling.</span>
          </div>
        )}
        {!started || cam.camera !== "on" ? (
          <>
            <PermissionHelp camera={cam.camera} mic={cam.mic} />
            <button className="btn btn-primary btn-full" onClick={begin} disabled={cam.camera === "starting" || !nameOk}>
              <Video size={16} /> Turn on camera &amp; start
            </button>
          </>
        ) : (
          <div className="card"><Liveness cam={cam} onDone={finish} actionLabel="Saving your registration" /></div>
        )}
      </div>
    </main>
  );
}

function useCountdown() {
  const [, setTick] = useState(0);
  useEffect(() => { const t = setInterval(() => setTick(x => x + 1), 1000); return () => clearInterval(t); }, []);
  return serverNow();
}

function ExamCard({ exam, onStart }) {
  const now = useCountdown();
  const starts = new Date(exam.starts_at).getTime();
  const ends = new Date(exam.ends_at).getTime();
  const finished = exam.session_status && exam.session_status !== "in_progress";
  const r = exam.result;
  let action;
  const used = exam.attempts_used || 0;
  const allowed = exam.attempts_allowed || 1;
  const open = now >= starts && now < ends && !exam.paused;
  if (finished) {
    action = (
      <div style={{ display: "flex", flexDirection: "column", gap: 8 }}>
      <div className="row">
        <span className={`pill ${r.status === "submitted" ? "pill-ok" : "pill-bad"}`}>
          {r.status === "submitted" ? <CheckCircle2 size={13} /> : <XCircle size={13} />}
          {r.status === "submitted" ? "Submitted" : r.status === "auto_submitted" ? "Auto-submitted" : "Ended"}
        </span>
        {r.show_score && <strong>{r.score} / {r.total}</strong>}
        {r.reason && r.status !== "submitted" && <span className="muted" style={{ fontSize: 13 }}>{r.reason}</span>}
      </div>
      {exam.can_retake ? (
        <button className="btn btn-primary" style={{ alignSelf: "flex-start" }} onClick={() => onStart(exam)}>
          <RotateCcw size={16} /> Retake exam (attempt {used + 1} of {allowed})
        </button>
      ) : open && (
        <span className="faint" style={{ fontSize: 13 }}>
          {r.status === "terminated"
            ? "Only your administrator can allow a retake."
            : used >= allowed ? `No attempts left (${used} of ${allowed} used). Ask your administrator if you need another try.` : ""}
        </span>
      )}
      </div>
    );
  } else if (exam.session_status === "in_progress" && !exam.paused) {
    // Already started (or the administrator let them continue): always resumable.
    action = (
      <button className="btn btn-primary" onClick={() => onStart(exam)}>
        <PlayCircle size={16} /> Continue exam
      </button>
    );
  } else if (now < starts) {
    action = <span className="pill pill-off"><Hourglass size={13} /> Opens in {fmtClock(starts - now)}</span>;
  } else if (now >= ends) {
    action = <span className="pill pill-off">Closed</span>;
  } else if (exam.paused) {
    action = <span className="pill pill-warn">Paused by administrator</span>;
  } else {
    action = (
      <button className="btn btn-primary" onClick={() => onStart(exam)}>
        <PlayCircle size={16} /> {exam.session_status === "in_progress" ? "Resume exam" : "Start exam"}
      </button>
    );
  }
  return (
    <div className="card exam-card">
      <div className="row"><strong style={{ fontSize: 16 }}>{exam.title}</strong></div>
      <div className="muted" style={{ fontSize: 13.5 }}>
        <Clock size={13} /> {fmtDateTime(exam.starts_at)} – {fmtDateTime(exam.ends_at)} · {exam.duration_minutes} min · {exam.question_count} questions
        {allowed > 1 && ` · ${allowed} attempts allowed`}
      </div>
      <div>{action}</div>
    </div>
  );
}

function rulesFor(level, faceMode = "full") {
  if (faceMode === "mic" || faceMode === "start") {
    return [
      ...(faceMode === "start" ? ["Your face is checked once when you begin. After that the camera only shows you your own picture — nothing is captured."] : []),
      faceMode === "mic" ? "Your microphone stays on for the whole exam. The camera is not used." : "Your microphone stays on for the whole exam.",
      "Keep this page open. Switching apps, opening notifications or another tab counts as a warning.",
      level === "strict"
        ? "Keep completely quiet. Any talking or noise counts as a warning."
        : level === "normal"
          ? "Keep quiet. Talking or loud noise counts as a warning."
          : "Quiet murmuring is fine. Loud talking or loud noise counts as a warning.",
      "Screenshots, copying and printing are blocked and count as warnings. Your name is shown across the screen.",
      faceMode === "mic" ? "Your administrator may listen live during the exam. Nothing is recorded." : "Your administrator may watch your camera and listen live during the exam. Nothing is recorded.",
    ];
  }
  return [
    faceMode === "full"
      ? "Stay alone and in view of the camera for the whole exam. Your face is checked every minute."
      : "Stay alone and in view of the camera for the whole exam.",
    "Keep this page open. Switching apps, opening notifications or another tab counts as a warning.",
    "No phones in view of the camera — a phone seen by the camera counts as a warning.",
    level === "strict"
      ? "Keep completely quiet and face the screen. Any talking, noise or looking away counts as a warning."
      : level === "normal"
        ? "Keep quiet. Talking, loud noise or looking away for a long time counts as a warning."
        : "Quiet murmuring and turning your head are fine. Loud talking or loud noise counts as a warning.",
    "Screenshots, copying and printing are blocked and count as warnings. Your name is shown across the screen.",
    "Your administrator may watch your camera and listen live during the exam. Nothing is recorded.",
    faceMode === "full"
      ? "If someone else appears in view, or your face doesn't match, the exam ends immediately."
      : "If someone else appears in view, the exam ends immediately.",
  ];
}

function PrepScreen({ exam, name, code, cam, faceMode, onStarted, onBack }) {
  const [agreed, setAgreed] = useState(false);
  const [checking, setChecking] = useState(false);
  const [error, setError] = useState("");
  async function begin() {
    setError("");
    enterFullscreen(); // must happen straight from the tap
    await cam.start({ video: faceMode !== "mic" });
    if (faceMode !== "full" && faceMode !== "start") { await startWithoutMatch(); return; }
    setChecking(true);
  }
  // Easy/Off: no face matching. Take one photo for the record (if the camera
  // gives a frame in time) and open the exam.
  async function startWithoutMatch() {
    setChecking(true);
    let photo = null;
    for (let i = 0; i < 10 && !photo && faceMode !== "mic"; i++) {
      await new Promise(r => setTimeout(r, 300));
      photo = snapshot(cam.getVideo());
    }
    await verified({ descriptor: null, photo });
  }
  async function verified({ descriptor, photo }) {
    try {
      const session = await api.start(code, exam.id, descriptor, photo);
      onStarted(session);
    } catch (e) {
      setError(e.message); setChecking(false); exitFullscreen();
    }
  }
  const ready = (cam.camera === "on" || faceMode === "mic") && cam.mic === "on";
  return (
    <main className="wrap">
      <Header name={name} />
      <div className="narrow" style={{ maxWidth: 560 }}>
        <button className="btn btn-ghost btn-sm" onClick={() => { cam.stop(); exitFullscreen(); onBack(); }} style={{ marginBottom: 12 }}>← Back</button>
        <h1 className="serif" style={{ fontSize: 22, margin: "0 0 4px" }}>{exam.title}</h1>
        <p className="muted" style={{ marginTop: 0 }}>
          {exam.question_count} questions · {exam.duration_minutes} minutes
          {exam.per_question_seconds ? ` · ${exam.per_question_seconds} seconds per question` : ""}
          {" · "}{exam.max_warnings} warnings allowed
          {(exam.attempts_allowed || 1) > 1 && ` · attempt ${Math.min((exam.attempts_used || 0) + (exam.session_status === "in_progress" ? 0 : 1), exam.attempts_allowed)} of ${exam.attempts_allowed}`}
        </p>
        {exam.instructions && <div className="card" style={{ marginBottom: 12, whiteSpace: "pre-wrap" }}>{exam.instructions}</div>}
        <div className="card" style={{ marginBottom: 12 }}>
          <strong>Exam rules</strong>
          <ul style={{ margin: "8px 0 0", paddingLeft: 18, fontSize: 14 }}>
            {rulesFor(exam.proctor_level, faceMode).map(r => <li key={r} style={{ marginBottom: 4 }}>{r}</li>)}
            <li>You answer one question at a time and can’t go back.{exam.show_answers ? " The correct answer is shown right after you answer." : ""}</li>
            <li>Reaching {exam.max_warnings} warnings submits your exam automatically.</li>
          </ul>
        </div>
        {error && <div className="banner banner-bad">{error}</div>}
        {!checking || !ready ? (
          <>
            <PermissionHelp camera={cam.camera} mic={cam.mic} />
            <label className="toggle-row" style={{ marginBottom: 12 }}>
              <input type="checkbox" checked={agreed} onChange={e => setAgreed(e.target.checked)} />
              I understand the rules and I am the person registered to code {code}.
            </label>
            <button className="btn btn-primary btn-full" disabled={!agreed || cam.camera === "starting"} onClick={begin}>
              <ShieldCheck size={16} /> {faceMode === "full" || faceMode === "start" ? <>Verify my face &amp; begin</> : "Begin exam"}
            </button>
          </>
        ) : faceMode === "full" || faceMode === "start" ? (
          <div className="card"><Liveness cam={cam} onDone={verified} actionLabel="Matching your face and opening the exam" /></div>
        ) : (
          <div className="card" style={{ textAlign: "center" }}><Spinner size={24} /><p className="muted">Opening the exam…</p></div>
        )}
      </div>
    </main>
  );
}

function DoneScreen({ result, name, onBack }) {
  const ok = result.status === "submitted";
  return (
    <main className="wrap">
      <Header name={name} />
      <div className="narrow card" style={{ textAlign: "center" }}>
        {ok ? <CheckCircle2 size={40} color="var(--emerald)" /> : <XCircle size={40} color="var(--red)" />}
        <h1 className="serif" style={{ fontSize: 22, margin: "8px 0 4px" }}>
          {ok ? "Exam submitted" : result.status === "auto_submitted" ? "Exam submitted automatically" : "Exam ended"}
        </h1>
        {result.reason && <p className="muted" style={{ margin: "0 0 10px" }}>{result.reason}</p>}
        {result.show_score
          ? <p style={{ fontSize: 28, fontWeight: 800, margin: "6px 0" }}>{result.score} / {result.total}</p>
          : <p className="muted">Your result will be shared by your administrator.</p>}
        <p className="faint" style={{ fontSize: 13 }}>Answered {result.answered} of {result.total} · {result.warnings} warning{result.warnings === 1 ? "" : "s"} · Your camera is off.</p>
        <button className="btn btn-primary" onClick={onBack}>Back to my exams</button>
      </div>
    </main>
  );
}

export default function StudentApp({ updateReady = false }) {
  // The code is remembered on this device until the student taps Log out, so
  // closing the browser doesn't mean typing it again. Their face is still
  // checked before every exam, so a remembered code alone can't sit an exam.
  const [code, setCode] = useState(() => {
    try { return localStorage.getItem(CODE_KEY) || sessionStorage.getItem(CODE_KEY) || ""; } catch (e) { return ""; }
  });
  const [restoreError, setRestoreError] = useState("");
  const [profile, setProfile] = useState(null);
  const [view, setView] = useState("exams"); // exams | prep | exam | done
  const [exam, setExam] = useState(null);
  const [session, setSession] = useState(null);

  // A newer version went live: reload straight away when the student isn't
  // in the middle of an exam (the update bar asks them otherwise).
  useEffect(() => {
    if (updateReady && profile && (view === "exams" || view === "done")) reloadNow();
  }, [updateReady, profile, view]);
  // During an exam, give them a minute to tap Refresh, then refresh anyway so
  // nobody stays on an old version (answers and time are kept on the server).
  useEffect(() => {
    if (!updateReady || view !== "exam") return undefined;
    const t = setTimeout(reloadNow, 60000);
    return () => clearTimeout(t);
  }, [updateReady, view]);
  const [result, setResult] = useState(null);
  const [loading, setLoading] = useState(!!code);
  const [refreshError, setRefreshError] = useState("");
  const cam = useCamera();

  const refresh = useCallback(async (c = code) => {
    const data = await api.login(c);
    setProfile(data);
    setRefreshError("");
    return data;
  }, [code]);

  async function login(c) {
    await refresh(c);
    setCode(c);
    try { localStorage.setItem(CODE_KEY, c); } catch (e) {
      try { sessionStorage.setItem(CODE_KEY, c); } catch (e2) { /* not kept across reloads */ }
    }
  }

  function logout() {
    cam.stop(); exitFullscreen();
    try { localStorage.removeItem(CODE_KEY); sessionStorage.removeItem(CODE_KEY); } catch (e) { /* ignore */ }
    setCode(""); setProfile(null); setView("exams"); setSession(null);
  }

  // Restore when the site is opened again. A connection problem keeps the code
  // and offers Try again; only a code that's no longer valid logs out.
  function restore() {
    setLoading(true); setRestoreError("");
    refresh(code)
      .catch(e => { if (e && e.code === "network") setRestoreError(e.message); else logout(); })
      .finally(() => setLoading(false));
  }
  useEffect(() => {
    if (!code || profile) return;
    restore();
  }, []); // eslint-disable-line react-hooks/exhaustive-deps

  // Keep the exam list current (start times, pauses, results).
  useEffect(() => {
    if (!profile || view !== "exams") return undefined;
    const t = setInterval(() => refresh().catch(e => setRefreshError(e.message)), 30000);
    return () => clearInterval(t);
  }, [profile, view, refresh]);

  if (loading) return <main className="wrap" style={{ textAlign: "center", paddingTop: 80 }}><Spinner size={28} /></main>;
  if (restoreError && !profile) {
    return (
      <main className="wrap" style={{ minHeight: "100vh", display: "flex", alignItems: "center" }}>
        <div className="narrow card" style={{ width: "100%", textAlign: "center" }}>
          <h1 className="serif" style={{ fontSize: 20, margin: "0 0 8px" }}>Couldn't connect</h1>
          <p className="muted" style={{ marginTop: 0 }}>{restoreError}</p>
          <div className="row" style={{ justifyContent: "center" }}>
            <button className="btn btn-ghost" onClick={logout}>Use a different code</button>
            <button className="btn btn-primary" onClick={restore}><RefreshCw size={16} /> Try again</button>
          </div>
        </div>
      </main>
    );
  }
  if (!profile) return <CodeScreen onLogin={login} />;

  const faceMode = profile.face_mode || "full";
  const noFace = faceMode === "off" || faceMode === "mic";
  if (noFace && profile.name_needed) {
    return <NameScreen code={code} onDone={() => refresh()} onLogout={logout} />;
  }
  if (!noFace && (profile.face_status === "none" || profile.face_status === "rejected")) {
    return (
      <>
        {profile.face_status === "rejected" && <div className="wrap" style={{ paddingBottom: 0 }}><div className="banner banner-bad">Your last face registration wasn’t approved. Please register again in good light.</div></div>}
        <EnrollScreen name={profile.name} nameNeeded={!!profile.name_needed} code={code} cam={cam} faceMode={faceMode} onEnrolled={() => refresh()} onLogout={logout} />
      </>
    );
  }

  if (view === "exam" && session) {
    return (
      <ExamScreen cam={cam} session={session}
        onFinished={r => { cam.stop(); exitFullscreen(); setResult(r); setView("done"); refresh().catch(() => {}); }} />
    );
  }
  if (view === "done" && result) return <DoneScreen result={result} name={profile.name} onBack={() => setView("exams")} />;
  if (view === "prep" && exam) {
    return <PrepScreen exam={exam} name={profile.name} code={code} cam={cam} faceMode={faceMode}
      onStarted={s => { setSession(s); setView("exam"); }} onBack={() => { setView("exams"); refresh().catch(() => {}); }} />;
  }

  return (
    <main className="wrap">
      <Header name={profile.name} onLogout={logout} />
      <h1 className="serif" style={{ fontSize: 24, margin: "0 0 12px" }}>Welcome, {profile.name.split(" ")[0]}</h1>
      {faceMode === "full" && profile.face_status === "pending" && (
        <div className="banner banner-warn"><Hourglass size={16} /> Your face registration is waiting for approval. You can start exams once it’s approved.</div>
      )}
      {refreshError && <div className="banner banner-warn">{refreshError}</div>}
      <div className="row" style={{ marginBottom: 10 }}>
        <h2 style={{ fontSize: 16, margin: 0 }}>Your exams</h2>
        <span className="spacer" />
        <button className="btn btn-ghost btn-sm" onClick={() => refresh().catch(e => setRefreshError(e.message))}><RefreshCw size={14} /> Refresh</button>
      </div>
      {profile.exams.length === 0 ? (
        <div className="card muted">No exams are scheduled for you right now.</div>
      ) : (
        <div style={{ display: "flex", flexDirection: "column", gap: 12 }}>
          {profile.exams.map(e => (
            <ExamCard key={e.id} exam={e}
              onStart={ex => { if (faceMode === "full" && profile.face_status !== "approved") { setRefreshError("Your face registration must be approved first."); return; } setExam(ex); setView("prep"); }} />
          ))}
        </div>
      )}
    </main>
  );
}
