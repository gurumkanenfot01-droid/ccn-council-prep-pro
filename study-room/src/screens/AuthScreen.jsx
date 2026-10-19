import { useEffect, useState } from "react";
import { Mail, Lock, ArrowRight, MonitorCheck } from "lucide-react";
import { supabase } from "../lib/supabase.js";

function friendlyError(err) {
  const msg = (err && err.message) || "";
  if (/invalid login credentials/i.test(msg)) return "Wrong email or password. Check for typos, or tap \"Forgot password?\" to reset it.";
  if (/email not confirmed/i.test(msg)) return "Please confirm your email first — check your inbox (and spam) for the link.";
  if (/load failed|failed to fetch|networkerror|network request failed/i.test(msg)) return "Couldn't reach the server. Check your internet connection and try again.";
  return msg || "Something went wrong.";
}

export default function AuthScreen({ signOutNotice }) {
  const [mode, setMode] = useState("login"); // login | signup | forgot
  const [rawEmail, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [busy, setBusy] = useState(false);
  const [error, setError] = useState("");
  const [notice, setNotice] = useState("");

  useEffect(() => { if (signOutNotice?.text) setError(signOutNotice.text); }, [signOutNotice]);

  async function submit(e) {
    e.preventDefault();
    setError(""); setNotice(""); setBusy(true);
    // Autofill and phone keyboards often add a trailing space or capital letter.
    const email = rawEmail.trim().toLowerCase();
    try {
      if (mode === "login") {
        const { error: err } = await supabase.auth.signInWithPassword({ email, password });
        if (err) throw err;
      } else if (mode === "signup") {
        const { data, error: err } = await supabase.auth.signUp({ email, password });
        if (err) throw err;
        setNotice(data.session ? "Account created — you're signed in." : "Account created — check your email for a confirmation link, then log in.");
      } else {
        const { error: err } = await supabase.auth.resetPasswordForEmail(email, { redirectTo: window.location.origin });
        if (err) throw err;
        setNotice("Check your email for a password reset link.");
      }
    } catch (err) {
      setError(friendlyError(err));
    } finally {
      setBusy(false);
    }
  }

  const noAutoFix = { autoCapitalize: "none", autoCorrect: "off", spellCheck: false };

  return (
    <main className="wrap" style={{ minHeight: "100vh", display: "flex", alignItems: "center" }}>
      <div className="narrow" style={{ width: "100%" }}>
        <div style={{ textAlign: "center", marginBottom: 22 }}>
          <div className="brand-mark" style={{ margin: "0 auto 10px", width: 52, height: 52, borderRadius: 16 }}>
            <MonitorCheck size={26} />
          </div>
          <h1 className="serif" style={{ fontSize: 24, margin: "0 0 4px" }}>CCN Study Room</h1>
          <p className="muted" style={{ margin: 0, fontSize: 14 }}>
            Focused question practice with your camera and microphone keeping you on task.
          </p>
        </div>

        <div className="card">
          {mode !== "forgot" && (
            <div className="chip-row" role="tablist" style={{ marginBottom: 18, gap: 6, background: "var(--surface-alt)", padding: 4, borderRadius: 12 }}>
              {[["login", "Log In"], ["signup", "Sign Up"]].map(([id, label]) => (
                <button key={id} type="button" role="tab" aria-selected={mode === id}
                  className="btn btn-sm" onClick={() => { setMode(id); setError(""); setNotice(""); }}
                  style={{ flex: 1, background: mode === id ? "var(--navy)" : "transparent", color: mode === id ? "var(--on-navy)" : "var(--muted)" }}>
                  {label}
                </button>
              ))}
            </div>
          )}

          <form onSubmit={submit} style={{ display: "flex", flexDirection: "column", gap: 14 }}>
            <div className="field">
              <label htmlFor="email"><Mail size={11} /> Email</label>
              <input id="email" type="email" value={rawEmail} onChange={e => setEmail(e.target.value)} autoComplete="username" required {...noAutoFix} />
            </div>
            {mode !== "forgot" && (
              <div className="field">
                <label htmlFor="password"><Lock size={11} /> Password</label>
                <input id="password" type="password" value={password} onChange={e => setPassword(e.target.value)}
                  autoComplete={mode === "signup" ? "new-password" : "current-password"} required minLength={6} {...noAutoFix} />
              </div>
            )}
            {error && <div className="error" role="alert">{error}</div>}
            {notice && <div className="notice" role="status">{notice}</div>}
            <button className="btn btn-primary btn-full" disabled={busy}>
              {busy ? "Please wait…" : mode === "login" ? "Log In" : mode === "signup" ? "Create Account" : "Send Reset Link"}
              {!busy && <ArrowRight size={16} />}
            </button>
          </form>

          <div style={{ textAlign: "center", marginTop: 14 }}>
            <button type="button" className="btn btn-sm" style={{ background: "none", color: "var(--muted)" }}
              onClick={() => { setMode(mode === "forgot" ? "login" : "forgot"); setError(""); setNotice(""); }}>
              {mode === "forgot" ? "Back to log in" : "Forgot password?"}
            </button>
          </div>
        </div>
        <p className="faint" style={{ textAlign: "center", fontSize: 12.5, marginTop: 14 }}>
          Already use CCN Council Prep Pro? Log in with the same email and password.
        </p>
      </div>
    </main>
  );
}
