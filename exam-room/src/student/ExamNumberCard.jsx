import { useEffect, useState } from "react";
import { Hash, Check, Save, Pencil } from "lucide-react";
import { api } from "../lib/api.js";

// The student types their Council exam number; it goes straight to the
// administrator's Students page. Hidden on a database without the update.
export default function ExamNumberCard({ code, initial }) {
  const [saved, setSaved] = useState(initial ?? null); // null = still loading
  const [ready, setReady] = useState(initial != null);
  const [value, setValue] = useState(initial || "");
  const [editing, setEditing] = useState(!initial);
  const [busy, setBusy] = useState(false);
  const [error, setError] = useState("");

  useEffect(() => {
    if (initial != null) return;
    api.myExamNumber(code).then(r => {
      if (!r || !("exam_number" in r)) return; // not available yet
      setSaved(r.exam_number); setValue(r.exam_number); setEditing(!r.exam_number); setReady(true);
    });
  }, [code, initial]);

  async function save(e) {
    e.preventDefault();
    setBusy(true); setError("");
    try {
      const r = await api.setExamNumber(code, value);
      setSaved(r.exam_number); setValue(r.exam_number); setEditing(false);
    } catch (err) { setError(err.message); }
    setBusy(false);
  }

  if (!ready) return null;
  return (
    <section className="card exam-number-card">
      {!editing ? (
        <div className="row" style={{ gap: 10 }}>
          <Check size={18} color="var(--c-green)" />
          <span style={{ flex: 1 }}>Your exam number <strong className="num">{saved}</strong> has been sent to the administrator.</span>
          <button className="btn btn-ghost btn-sm" onClick={() => setEditing(true)}><Pencil size={13} /> Change</button>
        </div>
      ) : (
        <form onSubmit={save} style={{ display: "flex", flexDirection: "column", gap: 10 }}>
          <div className="field">
            <label htmlFor="exam-number"><Hash size={11} /> Your exam number</label>
            <input id="exam-number" value={value} onChange={e => setValue(e.target.value.slice(0, 30))} placeholder="Type your exam number"
              autoCapitalize="characters" autoCorrect="off" spellCheck={false} required />
          </div>
          {error && <div className="error" role="alert">{error}</div>}
          <div className="row">
            <button className="btn btn-primary" disabled={busy || !value.trim()}><Save size={15} /> {busy ? "Saving…" : "Send to administrator"}</button>
            {saved && <button type="button" className="btn btn-ghost" onClick={() => { setValue(saved); setEditing(false); }}>Cancel</button>}
          </div>
        </form>
      )}
    </section>
  );
}
