import { useEffect, useState } from "react";
import { Mail, Lock, GraduationCap, ArrowRight } from "lucide-react";
import { Card, Button, Field } from "../ui/kit.jsx";
import { supabase } from "../lib/supabase.js";

export default function AuthScreen({ t, signOutNotice }) {
  const [mode, setMode] = useState("login"); // login | signup | forgot

  // Capture ?ref=CODE from a shared referral link. Stored in localStorage
  // (not applied yet — there's no session until sign-up/email-confirm
  // completes) so App.jsx's boot flow can apply it once the user is
  // actually logged in, via applyPendingReferralCode().
  useEffect(() => {
    const ref = new URLSearchParams(window.location.search).get("ref");
    try {
      if (ref) window.localStorage.setItem("pending-referral-code", ref.trim().toUpperCase());
    } catch (e) { /* storage blocked (e.g. Safari "Block All Cookies") — skip the referral */ }
  }, []);
  const [rawEmail, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [busy, setBusy] = useState(false);
  const [error, setError] = useState("");
  // Explains a sign-out the student didn't ask for (wrong clock, session lost).
  useEffect(() => { if (signOutNotice && signOutNotice.text) setError(signOutNotice.text); }, [signOutNotice]);
  const [notice, setNotice] = useState("");
  const [unconfirmedEmail, setUnconfirmedEmail] = useState("");

  // Turn Supabase/Safari error text into something a student can act on.
  function friendlyError(err) {
    const msg = (err && err.message) || "";
    if (/invalid login credentials/i.test(msg)) return "Wrong email or password. Check for typos, or tap \"Forgot password?\" below to reset it.";
    if (/load failed|failed to fetch|networkerror|network request failed/i.test(msg)) return "Couldn't reach the server. Check your internet connection and try again.";
    return msg || "Something went wrong.";
  }

  async function submit(e) {
    e.preventDefault();
    // Autofill and iPad keyboards often add a trailing space or a capital letter.
    const email = rawEmail.trim().toLowerCase();
    setError("");
    setNotice("");
    setBusy(true);
    try {
      if (mode === "login") {
        const { error } = await supabase.auth.signInWithPassword({ email, password });
        if (error) {
          if (/email not confirmed/i.test(error.message || "")) {
            setUnconfirmedEmail(email);
            throw new Error("Please confirm your email before logging in — check your inbox for the link.");
          }
          throw error;
        }
      } else if (mode === "signup") {
        const { data, error } = await supabase.auth.signUp({ email, password });
        if (error) throw error;
        if (!data.session) {
          setUnconfirmedEmail(email);
          setNotice("Account created — check your email for a confirmation link before logging in.");
        } else {
          setNotice("Account created — you're signed in.");
        }
      } else if (mode === "forgot") {
        const { error } = await supabase.auth.resetPasswordForEmail(email, {
          redirectTo: window.location.origin,
        });
        if (error) throw error;
        setNotice("If that email has an account, a reset link is on its way. Check your inbox and spam folder. No email after 10 minutes? Message your admin, who can set a new password for you.");
      }
    } catch (err) {
      setError(friendlyError(err));
    } finally {
      setBusy(false);
    }
  }

  async function resendConfirmation() {
    setError("");
    setNotice("");
    setBusy(true);
    try {
      const { error } = await supabase.auth.resend({ type: "signup", email: unconfirmedEmail });
      if (error) throw error;
      setNotice("Confirmation email resent — check your inbox (and spam folder).");
    } catch (err) {
      setError(err.message || "Couldn't resend the email.");
    } finally {
      setBusy(false);
    }
  }

  return (
    <div className="f-sans" style={{ minHeight: "100vh", background: t.bg, display: "flex", alignItems: "center", justifyContent: "center", padding: 20 }}>
      <div style={{ width: "100%", maxWidth: 380 }}>
        <div style={{ display: "flex", flexDirection: "column", alignItems: "center", gap: 8, marginBottom: 24 }}>
          <div style={{ width: 52, height: 52, borderRadius: 16, background: t.navy, display: "flex", alignItems: "center", justifyContent: "center" }}>
            <GraduationCap size={26} color="#fff" />
          </div>
          <div className="f-serif" style={{ fontSize: 19, fontWeight: 700, color: t.text }}>CCN Council Prep</div>
          <div style={{ fontSize: 12.5, color: t.textMuted }}>Critical Care Nursing</div>
        </div>

        <Card style={{ padding: 26 }}>
          <div style={{ display: "flex", gap: 6, marginBottom: 20, background: t.bgAlt, borderRadius: 12, padding: 4 }}>
            {[
              { id: "login", label: "Log In" },
              { id: "signup", label: "Sign Up" },
            ].map(m => (
              <button key={m.id} type="button" onClick={() => { setMode(m.id); setError(""); setNotice(""); setUnconfirmedEmail(""); }}
                style={{
                  flex: 1, padding: "9px 0", borderRadius: 9, border: "none", cursor: "pointer",
                  fontSize: 13.5, fontWeight: 700,
                  background: mode === m.id ? t.navy : "transparent",
                  color: mode === m.id ? "#fff" : t.textMuted,
                }}>
                {m.label}
              </button>
            ))}
          </div>

          <form onSubmit={submit} style={{ display: "flex", flexDirection: "column", gap: 14 }}>
            <Field label="Email" icon={Mail} value={rawEmail} onChange={setEmail} type="email" autoComplete="username" />
            {mode !== "forgot" && (
              <Field label="Password" icon={Lock} value={password} onChange={setPassword} type="password"
                autoComplete={mode === "signup" ? "new-password" : "current-password"} />
            )}

            {error && <div style={{ fontSize: 13, color: t.red, fontWeight: 600 }}>{error}</div>}
            {notice && <div style={{ fontSize: 13, color: t.emerald, fontWeight: 600 }}>{notice}</div>}

            <Button variant="primary" full icon={ArrowRight} disabled={busy} style={{ marginTop: 4 }}>
              {busy ? "Please wait…" : mode === "login" ? "Log In" : mode === "signup" ? "Create Account" : "Send Reset Link"}
            </Button>
          </form>

          {unconfirmedEmail && (
            <div style={{ textAlign: "center", marginTop: 14 }}>
              <button type="button" onClick={resendConfirmation} disabled={busy}
                style={{ background: "none", border: "none", cursor: "pointer", fontSize: 12.5, color: t.navy, fontWeight: 700 }}>
                Resend confirmation email
              </button>
            </div>
          )}

          {mode === "login" && (
            <div style={{ textAlign: "center", marginTop: 14 }}>
              <button type="button" onClick={() => { setMode("forgot"); setError(""); setNotice(""); }}
                style={{ background: "none", border: "none", cursor: "pointer", fontSize: 12.5, color: t.textMuted, fontWeight: 600 }}>
                Forgot password?
              </button>
            </div>
          )}
          {mode === "forgot" && (
            <div style={{ textAlign: "center", marginTop: 14 }}>
              <button type="button" onClick={() => { setMode("login"); setError(""); setNotice(""); }}
                style={{ background: "none", border: "none", cursor: "pointer", fontSize: 12.5, color: t.textMuted, fontWeight: 600 }}>
                Back to log in
              </button>
            </div>
          )}
        </Card>
      </div>
    </div>
  );
}

// Shown after a student opens the link in a password-reset email: Supabase has
// signed them in for recovery, and they must choose a new password now.
export function NewPasswordScreen({ t, onDone }) {
  const [password, setPassword] = useState("");
  const [confirm, setConfirm] = useState("");
  const [busy, setBusy] = useState(false);
  const [error, setError] = useState("");

  async function submit(e) {
    e.preventDefault();
    setError("");
    if (password.length < 6) return setError("Use at least 6 characters.");
    if (password !== confirm) return setError("The two passwords don't match.");
    setBusy(true);
    const { error: err } = await supabase.auth.updateUser({ password });
    setBusy(false);
    if (err) return setError(err.message || "Couldn't save the new password. Try again.");
    onDone();
  }

  return (
    <div className="f-sans" style={{ minHeight: "100vh", background: t.bg, display: "flex", alignItems: "center", justifyContent: "center", padding: 20 }}>
      <div style={{ width: "100%", maxWidth: 380 }}>
        <div style={{ display: "flex", flexDirection: "column", alignItems: "center", gap: 8, marginBottom: 24 }}>
          <div style={{ width: 52, height: 52, borderRadius: 16, background: t.navy, display: "flex", alignItems: "center", justifyContent: "center" }}>
            <Lock size={24} color="#fff" />
          </div>
          <div className="f-serif" style={{ fontSize: 19, fontWeight: 700, color: t.text }}>Choose a new password</div>
          <div style={{ fontSize: 12.5, color: t.textMuted, textAlign: "center" }}>You'll use it to log in from now on.</div>
        </div>
        <Card style={{ padding: 26 }}>
          <form onSubmit={submit} style={{ display: "flex", flexDirection: "column", gap: 14 }}>
            <Field label="New password" icon={Lock} value={password} onChange={setPassword} type="password" autoComplete="new-password" />
            <Field label="Type it again" icon={Lock} value={confirm} onChange={setConfirm} type="password" autoComplete="new-password" />
            {error && <div style={{ fontSize: 13, color: t.red, fontWeight: 600 }}>{error}</div>}
            <Button variant="primary" full icon={ArrowRight} disabled={busy}>{busy ? "Saving…" : "Save new password"}</Button>
          </form>
        </Card>
      </div>
    </div>
  );
}
