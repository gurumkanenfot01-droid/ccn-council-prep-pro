import { useState } from "react";
import { Mail, Lock, GraduationCap, ArrowRight } from "lucide-react";
import { Card, Button, Field } from "../ui/kit.jsx";
import { supabase } from "../lib/supabase.js";

export default function AuthScreen({ t }) {
  const [mode, setMode] = useState("login"); // login | signup | forgot
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [busy, setBusy] = useState(false);
  const [error, setError] = useState("");
  const [notice, setNotice] = useState("");

  async function submit(e) {
    e.preventDefault();
    setError("");
    setNotice("");
    setBusy(true);
    try {
      if (mode === "login") {
        const { error } = await supabase.auth.signInWithPassword({ email, password });
        if (error) throw error;
      } else if (mode === "signup") {
        const { error } = await supabase.auth.signUp({ email, password });
        if (error) throw error;
        setNotice("Account created — you're signed in.");
      } else if (mode === "forgot") {
        const { error } = await supabase.auth.resetPasswordForEmail(email, {
          redirectTo: window.location.origin,
        });
        if (error) throw error;
        setNotice("Check your email for a password reset link.");
      }
    } catch (err) {
      setError(err.message || "Something went wrong.");
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
              <button key={m.id} type="button" onClick={() => { setMode(m.id); setError(""); setNotice(""); }}
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
            <Field label="Email" icon={Mail} value={email} onChange={setEmail} type="email" />
            {mode !== "forgot" && (
              <Field label="Password" icon={Lock} value={password} onChange={setPassword} type="password" />
            )}

            {error && <div style={{ fontSize: 13, color: t.red, fontWeight: 600 }}>{error}</div>}
            {notice && <div style={{ fontSize: 13, color: t.emerald, fontWeight: 600 }}>{notice}</div>}

            <Button variant="primary" full icon={ArrowRight} disabled={busy} style={{ marginTop: 4 }}>
              {busy ? "Please wait…" : mode === "login" ? "Log In" : mode === "signup" ? "Create Account" : "Send Reset Link"}
            </Button>
          </form>

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
