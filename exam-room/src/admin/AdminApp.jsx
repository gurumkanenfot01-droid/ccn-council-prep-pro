import { useEffect, useState } from "react";
import { ShieldCheck, Activity, ClipboardList, Users, BarChart3, LogOut } from "lucide-react";
import { supabase } from "../lib/supabase.js";
import { Spinner } from "../ui.jsx";
import MonitorTab from "./MonitorTab.jsx";
import ExamsTab from "./ExamsTab.jsx";
import StudentsTab from "./StudentsTab.jsx";
import ResultsTab from "./ResultsTab.jsx";

const TABS = [
  { id: "monitor", label: "Live monitor", icon: Activity, Comp: MonitorTab },
  { id: "exams", label: "Exams", icon: ClipboardList, Comp: ExamsTab },
  { id: "students", label: "Students & codes", icon: Users, Comp: StudentsTab },
  { id: "results", label: "Results", icon: BarChart3, Comp: ResultsTab },
];

function AdminLogin() {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [busy, setBusy] = useState(false);
  const [error, setError] = useState("");
  async function submit(e) {
    e.preventDefault();
    setBusy(true); setError("");
    const { error: err } = await supabase.auth.signInWithPassword({ email: email.trim().toLowerCase(), password });
    if (err) setError(/invalid login/i.test(err.message) ? "Wrong email or password." : err.message);
    setBusy(false);
  }
  return (
    <main className="wrap" style={{ minHeight: "100vh", display: "flex", alignItems: "center" }}>
      <form className="narrow card" onSubmit={submit} style={{ width: "100%", display: "flex", flexDirection: "column", gap: 14 }}>
        <div className="row"><span className="brand-mark"><ShieldCheck size={20} /></span><h1 className="serif" style={{ fontSize: 20, margin: 0 }}>Exam Room · Admin</h1></div>
        <p className="muted" style={{ margin: 0, fontSize: 14 }}>Log in with your CCN Council Prep Pro admin account.</p>
        <div className="field"><label htmlFor="ae">Email</label><input id="ae" type="email" value={email} onChange={e => setEmail(e.target.value)} autoComplete="username" autoCapitalize="none" autoCorrect="off" required /></div>
        <div className="field"><label htmlFor="ap">Password</label><input id="ap" type="password" value={password} onChange={e => setPassword(e.target.value)} autoComplete="current-password" required /></div>
        {error && <div className="error" role="alert">{error}</div>}
        <button className="btn btn-primary btn-full" disabled={busy}>{busy ? "Checking…" : "Log in"}</button>
        <a href="#/" className="faint" style={{ fontSize: 13, textAlign: "center" }}>← Student login</a>
      </form>
    </main>
  );
}

export default function AdminApp() {
  const [session, setSession] = useState(undefined);
  const [isAdmin, setIsAdmin] = useState(null);
  const [tab, setTab] = useState("monitor");

  useEffect(() => {
    supabase.auth.getSession().then(({ data }) => setSession(data.session ?? null));
    const { data: sub } = supabase.auth.onAuthStateChange((_e, s) => setSession(s));
    return () => sub.subscription.unsubscribe();
  }, []);

  const userId = session ? session.user.id : null;
  useEffect(() => {
    if (!userId) { setIsAdmin(null); return; }
    // Full app admins and Exam Room admins (exam_admins table). Falls back to the
    // profile role if the exam_is_admin function hasn't been installed yet.
    supabase.rpc("exam_is_admin").then(({ data, error }) => {
      if (!error) return setIsAdmin(!!data);
      supabase.from("profiles").select("role, disabled").eq("id", userId).maybeSingle()
        .then(({ data: p }) => setIsAdmin(p?.role === "admin" && !p?.disabled));
    });
  }, [userId]);

  if (session === undefined || (session && isAdmin === null)) return <main className="wrap" style={{ textAlign: "center", paddingTop: 80 }}><Spinner size={28} /></main>;
  if (!session) return <AdminLogin />;
  if (!isAdmin) {
    return (
      <main className="wrap narrow card" style={{ marginTop: 60, textAlign: "center" }}>
        <h1 className="serif" style={{ fontSize: 20 }}>Admins only</h1>
        <p className="muted">This account isn’t an administrator.</p>
        <button className="btn btn-ghost" onClick={() => supabase.auth.signOut()}>Log out</button>
      </main>
    );
  }

  const Current = TABS.find(t => t.id === tab).Comp;
  return (
    <main className="wrap" style={{ maxWidth: 1240 }}>
      <header className="topbar">
        <div className="brand">
          <span className="brand-mark"><ShieldCheck size={20} /></span>
          <div><div className="serif" style={{ fontWeight: 700, fontSize: 17 }}>Exam Room · Admin</div><div className="faint" style={{ fontSize: 12 }}>{session.user.email}</div></div>
        </div>
        <button className="btn btn-ghost btn-sm" onClick={() => supabase.auth.signOut()}><LogOut size={14} /> Log out</button>
      </header>
      <nav className="tabs" role="tablist">
        {TABS.map(t => (
          <button key={t.id} role="tab" className="tab" aria-selected={tab === t.id} onClick={() => setTab(t.id)}>
            <t.icon size={14} /> {t.label}
          </button>
        ))}
      </nav>
      <Current />
    </main>
  );
}
