import { useState } from "react";
import { Lock, GraduationCap, ArrowRight } from "lucide-react";
import { Card, Button, Field } from "../ui/kit.jsx";
import { supabase } from "../lib/supabase.js";

export default function ResetPasswordScreen({ t, onDone }) {
  const [password, setPassword] = useState("");
  const [confirm, setConfirm] = useState("");
  const [busy, setBusy] = useState(false);
  const [error, setError] = useState("");
  const [done, setDone] = useState(false);

  async function submit(e) {
    e.preventDefault();
    setError("");
    if (password.length < 6) { setError("Password must be at least 6 characters."); return; }
    if (password !== confirm) { setError("Passwords don't match."); return; }
    setBusy(true);
    try {
      const { error } = await supabase.auth.updateUser({ password });
      if (error) throw error;
      setDone(true);
    } catch (err) {
      setError(err.message || "Couldn't update your password.");
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
          <div className="f-serif" style={{ fontSize: 19, fontWeight: 700, color: t.text }}>Set a New Password</div>
          <div style={{ fontSize: 12.5, color: t.textMuted, textAlign: "center" }}>
            {done ? "Your password has been updated." : "Choose a new password for your account."}
          </div>
        </div>

        <Card style={{ padding: 26 }}>
          {done ? (
            <Button variant="primary" full icon={ArrowRight} onClick={onDone}>Continue to CCN Council Prep</Button>
          ) : (
            <form onSubmit={submit} style={{ display: "flex", flexDirection: "column", gap: 14 }}>
              <Field label="New Password" icon={Lock} value={password} onChange={setPassword} type="password" />
              <Field label="Confirm Password" icon={Lock} value={confirm} onChange={setConfirm} type="password" />
              {error && <div style={{ fontSize: 13, color: t.red, fontWeight: 600 }}>{error}</div>}
              <Button variant="primary" full icon={ArrowRight} disabled={busy} style={{ marginTop: 4 }}>
                {busy ? "Please wait…" : "Update Password"}
              </Button>
            </form>
          )}
        </Card>
      </div>
    </div>
  );
}
