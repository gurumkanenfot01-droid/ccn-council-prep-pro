import { useState } from "react";
import { Bell, Send, Loader2, Type } from "lucide-react";
import { Card, Button, SectionHeader, Field, useApp } from "../ui/kit.jsx";
import { supabase } from "../lib/supabase.js";

export default function AdminNotifyScreen() {
  const { t } = useApp();
  const [title, setTitle] = useState("");
  const [body, setBody] = useState("");
  const [busy, setBusy] = useState(false);
  const [error, setError] = useState("");
  const [result, setResult] = useState(null);

  async function send() {
    setError(""); setResult(null);
    if (!title.trim() || !body.trim()) { setError("Title and message are both required."); return; }
    setBusy(true);
    try {
      const { data, error: fnError } = await supabase.functions.invoke("send-push", {
        body: { title: title.trim(), body: body.trim() },
      });
      if (fnError) throw new Error(fnError.message || "Failed to send.");
      if (!data?.success) throw new Error(data?.error || "Failed to send.");
      setResult(data);
      setTitle(""); setBody("");
    } catch (err) {
      setError(err.message || "Failed to send notification.");
    } finally {
      setBusy(false);
    }
  }

  return (
    <div className="fade-in">
      <SectionHeader icon={Bell} title="Send Notification" />

      <Card style={{ padding: 18, marginBottom: 16 }}>
        <div style={{ fontSize: 12.5, color: t.textMuted, lineHeight: 1.6 }}>
          Sends a push notification to every subscriber who has notifications turned on — use it for new content
          announcements, exam-season reminders, or re-engagement pings.
        </div>
      </Card>

      <Card style={{ padding: 18, marginBottom: 16 }}>
        <div style={{ marginBottom: 14 }}>
          <Field label="Title" value={title} onChange={setTitle} icon={Type} />
        </div>
        <div style={{ marginBottom: 4 }}>
          <div style={{ fontSize: 11.5, fontWeight: 700, color: t.textMuted, marginBottom: 6, textTransform: "uppercase", letterSpacing: 0.4 }}>Message</div>
          <textarea
            value={body}
            onChange={e => setBody(e.target.value)}
            placeholder="200 fresh questions on ABG interpretation just dropped — check them out."
            rows={4}
            style={{ width: "100%", border: `1px solid ${t.cardBorder}`, borderRadius: 10, padding: "10px 12px", background: t.bgAlt, fontSize: 14, color: t.text, resize: "vertical", fontFamily: "inherit" }}
          />
        </div>
      </Card>

      {error && <Card style={{ padding: 14, marginBottom: 14, background: `${t.red}11`, border: `1px solid ${t.red}33` }}><div style={{ fontSize: 12.5, color: t.red, fontWeight: 600 }}>{error}</div></Card>}
      {result && (
        <Card style={{ padding: 14, marginBottom: 14, background: `${t.emerald || t.navy}11`, border: `1px solid ${t.emerald || t.navy}33` }}>
          <div style={{ fontSize: 12.5, color: t.emerald || t.navy, fontWeight: 600 }}>
            Sent to {result.sent} of {result.total} subscribers{result.removed ? ` (${result.removed} expired subscriptions cleaned up)` : ""}.
          </div>
        </Card>
      )}

      <Button variant="primary" full disabled={busy} icon={busy ? Loader2 : Send} onClick={send}>
        {busy ? "Sending…" : "Send to All Subscribers"}
      </Button>
    </div>
  );
}
