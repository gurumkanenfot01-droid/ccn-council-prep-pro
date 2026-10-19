import { useEffect, useRef, useState } from "react";
import { Loader2 } from "lucide-react";
import { supabase, isConfigured } from "./lib/supabase.js";
import { fetchQuestionBank, fetchAccess, shuffle, saveToHistory } from "./lib/questions.js";
import { useMonitor } from "./lib/monitor.js";
import { focusScore } from "./ui.jsx";
import AuthScreen from "./screens/AuthScreen.jsx";
import HomeScreen from "./screens/HomeScreen.jsx";
import PracticeScreen from "./screens/PracticeScreen.jsx";
import ResultScreen from "./screens/ResultScreen.jsx";

// A wrong device clock makes every new session look already expired, so the
// student silently lands back on the login page. Same check as the CCN app.
function clockIsWrong(accessToken) {
  try {
    const part = accessToken.split(".")[1].replace(/-/g, "+").replace(/_/g, "/");
    const { iat } = JSON.parse(atob(part.padEnd(part.length + (4 - (part.length % 4)) % 4, "=")));
    return Math.abs(iat * 1000 - Date.now()) > 5 * 60 * 1000;
  } catch (e) {
    return false;
  }
}
const CLOCK_WRONG_MESSAGE = "Your password is correct, but this device's date and time are wrong, so the login can't be kept. Turn on Settings → General → Date & Time → \"Set Automatically\", then log in again.";

function Centered({ children }) {
  return (
    <main className="wrap" style={{ minHeight: "100vh", display: "flex", alignItems: "center", justifyContent: "center", textAlign: "center" }}>
      <div className="narrow">{children}</div>
    </main>
  );
}

export default function App() {
  const [session, setSession] = useState(undefined); // undefined = checking
  const [signOutNotice, setSignOutNotice] = useState(null);
  const [access, setAccess] = useState(null);
  const [bank, setBank] = useState(null);
  const [loadError, setLoadError] = useState("");
  const [view, setView] = useState("home"); // home | practice | result
  const [practice, setPractice] = useState(null);
  const [result, setResult] = useState(null);
  const monitor = useMonitor();
  const noticeN = useRef(0);

  useEffect(() => {
    if (!isConfigured) return;
    supabase.auth.getSession().then(({ data }) => setSession(data.session ?? null));
    const { data: sub } = supabase.auth.onAuthStateChange((_event, sess) => {
      if (sess && clockIsWrong(sess.access_token)) {
        noticeN.current += 1;
        setSignOutNotice({ text: CLOCK_WRONG_MESSAGE, n: noticeN.current });
        supabase.auth.signOut().catch(() => {});
        setSession(null);
        return;
      }
      setSession(sess);
    });
    return () => sub.subscription.unsubscribe();
  }, []);

  // Load access + questions once per signed-in user (not on every token refresh).
  const userId = session ? session.user.id : null;
  useEffect(() => {
    if (!userId) { setAccess(null); setBank(null); return; }
    let cancelled = false;
    setLoadError("");
    Promise.all([fetchAccess(userId), fetchQuestionBank()])
      .then(([a, b]) => { if (!cancelled) { setAccess(a); setBank(b); } })
      .catch(() => { if (!cancelled) setLoadError("Couldn't load the questions. Check your internet connection and try again."); });
    return () => { cancelled = true; };
  }, [userId]);

  function signOut() {
    monitor.stop();
    setView("home");
    supabase.auth.signOut();
  }

  function startPractice({ count, category, pool }) {
    setPractice({ questions: shuffle(pool).slice(0, count), category });
    setView("practice");
    window.scrollTo(0, 0);
  }

  function finishPractice(res) {
    monitor.stop();
    const answered = res.questions.filter(q => res.answers[q.id] !== undefined);
    const correct = answered.filter(q => res.answers[q.id] === q.ansIdx).length;
    saveToHistory({
      id: Date.now(),
      date: new Date().toISOString(),
      category: res.category,
      total: answered.length,
      pct: answered.length ? Math.round((correct / answered.length) * 100) : 0,
      focus: focusScore(res.events),
      seconds: res.seconds,
    });
    setResult(res);
    setView("result");
    window.scrollTo(0, 0);
  }

  if (!isConfigured) {
    return (
      <Centered>
        <h1 className="serif">CCN Study Room</h1>
        <p className="muted">This site isn't connected to the database yet. Add VITE_SUPABASE_URL and VITE_SUPABASE_ANON_KEY in Vercel (see HOW_TO_GO_LIVE.md).</p>
      </Centered>
    );
  }
  if (session === undefined) return <Centered><Loader2 className="spin" size={28} /></Centered>;
  if (!session) return <AuthScreen signOutNotice={signOutNotice} />;
  if (loadError) {
    return (
      <Centered>
        <p className="error">{loadError}</p>
        <button className="btn btn-primary" onClick={() => window.location.reload()}>Try again</button>
      </Centered>
    );
  }
  if (!access || !bank) {
    return <Centered><Loader2 className="spin" size={28} /><p className="muted">Loading live questions…</p></Centered>;
  }
  if (access.disabled) {
    return (
      <Centered>
        <h1 className="serif" style={{ fontSize: 22 }}>Account disabled</h1>
        <p className="muted">Your access has been disabled by an administrator.</p>
        <button className="btn btn-ghost" onClick={signOut}>Sign out</button>
      </Centered>
    );
  }

  if (view === "practice" && practice) {
    return <PracticeScreen questions={practice.questions} category={practice.category} monitor={monitor} onFinish={finishPractice} />;
  }
  if (view === "result" && result) {
    return <ResultScreen result={result} onAgain={() => { setView("home"); window.scrollTo(0, 0); }} />;
  }
  return <HomeScreen name={access.name} access={access} bank={bank} monitor={monitor} onStart={startPractice} onSignOut={signOut} />;
}
