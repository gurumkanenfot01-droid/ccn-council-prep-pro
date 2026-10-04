import { useState } from "react";
import { Cloud, CloudOff, LogOut, Mail, Lock, UserRound, Eye, EyeOff, CheckCircle2, RefreshCw, ShieldCheck, GraduationCap, ChevronRight } from "lucide-react";
import { useApp, PageHead } from "../ui.jsx";
import { supabase, niceError } from "../lib/cloud.js";

export function timeAgo(iso) {
  if (!iso) return "never";
  const s = Math.max(0, (Date.now() - new Date(iso).getTime()) / 1000);
  if (s < 60) return "just now";
  if (s < 3600) return `${Math.round(s / 60)} min ago`;
  if (s < 86400) return `${Math.round(s / 3600)} h ago`;
  const d = Math.round(s / 86400);
  return d === 1 ? "yesterday" : `${d} days ago`;
}

// Small line that says whether progress is saved online.
export function SyncLine() {
  const { cloudOn, user, sync, go } = useApp();
  if (!cloudOn) return null;
  if (!user) return <button className="pill sun" style={{ border: "none", cursor: "pointer" }} onClick={() => go("account")}><CloudOff size={12} /> Not saved online</button>;
  const label = sync.state === "syncing" || sync.state === "saving" ? "Saving…" : sync.state === "error" ? "Will save when online" : `Saved online · ${timeAgo(sync.at)}`;
  return <span className={`pill ${sync.state === "error" ? "sun" : "mint"}`}>{sync.state === "syncing" || sync.state === "saving" ? <RefreshCw size={12} /> : <Cloud size={12} />} {label}</span>;
}

// Home card that asks the learner to save their progress online.
export function SaveOnlineCard() {
  const { cloudOn, user, authReady, go } = useApp();
  if (!cloudOn || !authReady || user) return null;
  return (
    <button className="card tap pad row" onClick={() => go("account")} style={{ gap: 14, marginTop: 14, width: "100%", textAlign: "left", border: "1px solid var(--gold)", background: "linear-gradient(160deg, var(--gold-soft), var(--surface) 75%)" }}>
      <div className="tile-icon" style={{ background: "var(--brand)", color: "var(--gold)" }}><Cloud size={22} /></div>
      <div style={{ flex: 1, minWidth: 0 }}>
        <div className="h3">Save your progress online</div>
        <div className="muted" style={{ fontSize: 13.5 }}>Make a free account so you never lose your work, use any phone, and join the class leaderboard.</div>
      </div>
      <ChevronRight size={18} className="faint" />
    </button>
  );
}

function Field({ icon: Icon, label, ...props }) {
  return (
    <label style={{ display: "block" }}>
      <span className="label">{label}</span>
      <span style={{ position: "relative", display: "block" }}>
        <Icon size={17} style={{ position: "absolute", left: 14, top: "50%", transform: "translateY(-50%)", color: "var(--faint)" }} />
        <input className="input" style={{ paddingLeft: 42, fontSize: 16 }} {...props} />
      </span>
    </label>
  );
}

function Password({ value, onChange, label = "Password", autoComplete = "current-password" }) {
  const [show, setShow] = useState(false);
  return (
    <label style={{ display: "block" }}>
      <span className="label">{label}</span>
      <span style={{ position: "relative", display: "block" }}>
        <Lock size={17} style={{ position: "absolute", left: 14, top: "50%", transform: "translateY(-50%)", color: "var(--faint)" }} />
        <input className="input" style={{ paddingLeft: 42, paddingRight: 48, fontSize: 16 }} type={show ? "text" : "password"} value={value} onChange={e => onChange(e.target.value)} autoComplete={autoComplete} placeholder="At least 6 characters" />
        <button type="button" onClick={() => setShow(s => !s)} aria-label={show ? "Hide password" : "Show password"} style={{ position: "absolute", right: 6, top: "50%", transform: "translateY(-50%)", border: "none", background: "none", padding: 8, color: "var(--muted)" }}>
          {show ? <EyeOff size={18} /> : <Eye size={18} />}
        </button>
      </span>
    </label>
  );
}

export function AccountScreen() {
  const { cloudOn, user, profile, setProfile, sync, signOut, recovery, setRecovery, isTeacher, go, showToast } = useApp();
  const [mode, setMode] = useState("signup");
  const [name, setName] = useState(profile.name || "");
  const [email, setEmail] = useState("");
  const [pw, setPw] = useState("");
  const [busy, setBusy] = useState(false);
  const [msg, setMsg] = useState(null);
  const [confirmOut, setConfirmOut] = useState(false);

  if (!cloudOn) {
    return (
      <div>
        <PageHead back={{ label: "Me", onClick: () => go("me") }} eyebrow="Account" title="Online saving is not on yet" sub="Your progress is saved on this phone. Your teacher can switch on online accounts (see the setup guide)." />
      </div>
    );
  }

  async function run(fn) {
    setBusy(true); setMsg(null);
    try { await fn(); } catch (e) { setMsg({ bad: true, text: niceError(e) }); }
    setBusy(false);
  }

  function submit(e) {
    e.preventDefault();
    if (!/\S+@\S+\.\S+/.test(email.trim())) return setMsg({ bad: true, text: "Please type a real email address." });
    if (mode !== "forgot" && pw.length < 6) return setMsg({ bad: true, text: "The password needs at least 6 characters." });
    if (mode === "signup" && !name.trim()) return setMsg({ bad: true, text: "Please type your name." });
    run(async () => {
      if (mode === "signin") {
        const { error } = await supabase.auth.signInWithPassword({ email: email.trim(), password: pw });
        if (error) throw error;
        showToast("Welcome back! Your progress is loading");
        go("learn");
      } else if (mode === "signup") {
        if (name.trim() !== profile.name) setProfile({ ...profile, name: name.trim() });
        const { data, error } = await supabase.auth.signUp({ email: email.trim(), password: pw, options: { data: { name: name.trim() }, emailRedirectTo: window.location.origin } });
        if (error) throw error;
        if (data.user && data.user.identities?.length === 0) throw new Error("already registered");
        if (!data.session) { setMsg({ text: "Almost done! Open the email we just sent you and tap the link. Then come back and sign in." }); setMode("signin"); return; }
        showToast("Account made! Your progress is saved online");
        go("learn");
      } else {
        const { error } = await supabase.auth.resetPasswordForEmail(email.trim(), { redirectTo: window.location.origin });
        if (error) throw error;
        setMsg({ text: "We sent you an email. Tap the link in it to choose a new password." });
      }
    });
  }

  if (user && recovery) {
    return (
      <div>
        <PageHead eyebrow="Account" title="Choose a new password" />
        <form className="card pad stack" style={{ gap: 14 }} onSubmit={e => { e.preventDefault(); if (pw.length < 6) return setMsg({ bad: true, text: "The password needs at least 6 characters." }); run(async () => { const { error } = await supabase.auth.updateUser({ password: pw }); if (error) throw error; setRecovery(false); setPw(""); showToast("New password saved"); go("learn"); }); }}>
          <Password value={pw} onChange={setPw} label="New password" autoComplete="new-password" />
          {msg && <div className={msg.bad ? "pill coral" : "pill mint"} style={{ whiteSpace: "normal", padding: "8px 12px", fontSize: 13.5 }}>{msg.text}</div>}
          <button className="btn primary lg" disabled={busy}>{busy ? "Saving…" : "Save new password"}</button>
        </form>
      </div>
    );
  }

  if (user) {
    return (
      <div>
        <PageHead back={{ label: "Me", onClick: () => go("me") }} eyebrow="Account" title={<>Your progress is <span className="serif">safe</span></>} sub="Everything you do is saved online. Sign in with the same email on any phone or laptop to continue." />
        <div className="hero" style={{ marginBottom: 16 }}>
          <div className="row" style={{ gap: 14 }}>
            <div className="tile-icon" style={{ background: "rgba(255,255,255,.12)", color: "var(--gold)" }}><ShieldCheck size={24} /></div>
            <div style={{ minWidth: 0 }}>
              <div className="h3">{profile.name || "Learner"}</div>
              <div className="muted" style={{ fontSize: 14, overflowWrap: "anywhere" }}>{user.email}</div>
            </div>
          </div>
          <div className="row wrap" style={{ gap: 8, marginTop: 16 }}>
            <span className="sticker"><CheckCircle2 size={13} /> {sync.state === "error" ? "Will save when you are online" : `Last saved ${timeAgo(sync.at)}`}</span>
            {isTeacher && <span className="sticker" style={{ background: "var(--gold)", color: "#1F1605", borderColor: "transparent" }}><GraduationCap size={13} /> Teacher</span>}
          </div>
        </div>
        {isTeacher && <button className="btn primary lg full" style={{ marginBottom: 12 }} onClick={() => go("teacher")}><GraduationCap size={18} /> Open the Teacher dashboard</button>}
        {!confirmOut
          ? <button className="btn ghost lg full" onClick={() => setConfirmOut(true)}><LogOut size={18} /> Sign out</button>
          : (
            <div className="card pad">
              <div className="h3">Sign out on this phone?</div>
              <div className="muted" style={{ fontSize: 14, margin: "6px 0 14px" }}>Your progress stays saved online. This phone will be cleared, so someone else can use it.</div>
              <div className="row" style={{ gap: 10 }}>
                <button className="btn ghost full" onClick={() => setConfirmOut(false)}>Stay</button>
                <button className="btn danger full" onClick={signOut}>Sign out</button>
              </div>
            </div>
          )}
      </div>
    );
  }

  return (
    <div>
      <PageHead back={{ label: "Back", onClick: () => go("me") }} eyebrow="Account" title={mode === "signin" ? <>Welcome <span className="serif">back</span></> : mode === "forgot" ? "Forgot your password?" : <>Save your <span className="serif">progress</span></>}
        sub={mode === "signup" ? "Free. Your lessons, tasks, tests and streak are saved online, so you never lose them." : mode === "signin" ? "Sign in to bring back your progress on this phone." : "Type your email and we will send you a link to choose a new password."} />
      {mode !== "forgot" && (
        <div className="seg" style={{ marginBottom: 14 }} role="tablist">
          <button className={mode === "signup" ? "on" : ""} onClick={() => { setMode("signup"); setMsg(null); }}>Create account</button>
          <button className={mode === "signin" ? "on" : ""} onClick={() => { setMode("signin"); setMsg(null); }}>Sign in</button>
        </div>
      )}
      <form className="card pad stack" style={{ gap: 14 }} onSubmit={submit}>
        {mode === "signup" && <Field icon={UserRound} label="Your name" value={name} onChange={e => setName(e.target.value)} placeholder="First and last name" autoComplete="name" />}
        <Field icon={Mail} label="Email" type="email" inputMode="email" value={email} onChange={e => setEmail(e.target.value)} placeholder="you@example.com" autoComplete="email" />
        {mode !== "forgot" && <Password value={pw} onChange={setPw} autoComplete={mode === "signup" ? "new-password" : "current-password"} />}
        {msg && <div className={msg.bad ? "pill coral" : "pill mint"} style={{ whiteSpace: "normal", padding: "10px 12px", fontSize: 13.5, textTransform: "none", lineHeight: 1.45 }}>{msg.text}</div>}
        <button className="btn primary lg" disabled={busy}>{busy ? "Please wait…" : mode === "signup" ? "Create my account" : mode === "signin" ? "Sign in" : "Send me the link"}</button>
        {mode === "signin" && <button type="button" className="btn ghost" onClick={() => { setMode("forgot"); setMsg(null); }}>I forgot my password</button>}
        {mode === "forgot" && <button type="button" className="btn ghost" onClick={() => { setMode("signin"); setMsg(null); }}>Back to sign in</button>}
      </form>
      <div className="faint" style={{ fontSize: 13, marginTop: 14, textAlign: "center" }}>Your progress on this phone is kept and added to your account.</div>
    </div>
  );
}
