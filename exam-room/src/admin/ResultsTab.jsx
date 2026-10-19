import { useEffect, useMemo, useState } from "react";
import { Download, RotateCcw } from "lucide-react";
import { supabase } from "../lib/supabase.js";
import { Spinner } from "../ui.jsx";
import { useExamPicker, statusPill } from "./MonitorTab.jsx";

function csvCell(v) {
  const s = v == null ? "" : String(v);
  return /[",\n]/.test(s) ? `"${s.replace(/"/g, '""')}"` : s;
}

export default function ResultsTab() {
  const { exams, examId, setExamId, exam } = useExamPicker();
  const [sessions, setSessions] = useState(null);
  const [candidates, setCandidates] = useState({});
  const [reload, setReload] = useState(0);

  useEffect(() => {
    supabase.from("exam_candidates").select("id, full_name, access_code").then(({ data }) =>
      setCandidates(Object.fromEntries((data || []).map(c => [c.id, c]))));
  }, []);
  useEffect(() => {
    if (!examId) return;
    setSessions(null);
    supabase.from("exam_sessions")
      .select("id, candidate_id, status, ended_reason, answered, score, total, warnings, started_at, ended_at, attempt")
      .eq("exam_id", examId).eq("archived", false).then(({ data }) => setSessions(data || []));
  }, [examId, reload]);

  async function allowRetake(r) {
    if (!confirm(`Allow ${r.c.full_name} to take this exam again? This attempt is kept on record.`)) return;
    const { error } = await supabase.rpc("exam_admin_allow_retake", { p_session: r.id });
    if (error) alert(error.message); else setReload(x => x + 1);
  }

  const rows = useMemo(() => (sessions || [])
    .map(s => ({ ...s, c: candidates[s.candidate_id] || {}, pct: s.total ? Math.round((s.score / s.total) * 100) : 0 }))
    .sort((a, b) => b.score - a.score), [sessions, candidates]);

  function download() {
    const head = ["Name", "Access code", "Attempt", "Status", "Reason", "Score", "Total", "Percent", "Answered", "Warnings", "Started", "Ended"];
    const lines = rows.map(r => [r.c.full_name, r.c.access_code, r.attempt, r.status, r.ended_reason, r.score, r.total, r.pct, r.answered, r.warnings,
      r.started_at && new Date(r.started_at).toLocaleString(), r.ended_at && new Date(r.ended_at).toLocaleString()].map(csvCell).join(","));
    const blob = new Blob([[head.join(","), ...lines].join("\n")], { type: "text/csv" });
    const a = document.createElement("a");
    a.href = URL.createObjectURL(blob);
    a.download = `${(exam?.title || "exam").replace(/[^a-z0-9]+/gi, "-")}-results.csv`;
    a.click();
    URL.revokeObjectURL(a.href);
  }

  if (!exams) return <Spinner />;
  if (!exams.length) return <div className="card muted">No exams yet.</div>;
  const finished = rows.filter(r => r.status !== "in_progress");
  const avg = finished.length ? Math.round(finished.reduce((s, r) => s + r.pct, 0) / finished.length) : 0;

  return (
    <div style={{ display: "flex", flexDirection: "column", gap: 14 }}>
      <div className="row">
        <select value={examId} onChange={e => setExamId(e.target.value)} aria-label="Exam"
          style={{ padding: "9px 12px", borderRadius: 10, border: "1px solid var(--border)", background: "var(--surface)", maxWidth: 320 }}>
          {exams.map(e => <option key={e.id} value={e.id}>{e.title}</option>)}
        </select>
        <span className="spacer" />
        <button className="btn btn-ghost btn-sm" onClick={download} disabled={!rows.length}><Download size={14} /> Download CSV</button>
      </div>
      <div className="stat-grid">
        <div className="stat"><div className="num">{finished.length}</div><div className="lbl">Finished</div></div>
        <div className="stat"><div className="num">{avg}%</div><div className="lbl">Average score</div></div>
        <div className="stat"><div className="num">{rows.filter(r => r.status === "terminated").length}</div><div className="lbl">Ended for violations</div></div>
      </div>
      {!sessions ? <Spinner /> : (
        <div className="table-wrap">
          <table className="data">
            <thead><tr><th>#</th><th>Student</th><th>Status</th><th>Score</th><th>Answered</th><th>Warnings</th><th>Finished</th><th>Retake</th></tr></thead>
            <tbody>
              {rows.map((r, i) => (
                <tr key={r.id}>
                  <td className="num">{i + 1}</td>
                  <td><strong>{r.c.full_name}</strong><div className="faint num" style={{ fontSize: 12 }}>{r.c.access_code}{r.attempt > 1 ? ` · attempt ${r.attempt}` : ""}</div></td>
                  <td>{statusPill(r)}{r.ended_reason && r.status !== "submitted" && <div className="faint" style={{ fontSize: 11.5 }}>{r.ended_reason}</div>}</td>
                  <td className="num"><strong>{r.score}/{r.total}</strong> <span className="muted">({r.pct}%)</span></td>
                  <td className="num">{r.answered}</td>
                  <td className="num">{r.warnings}</td>
                  <td style={{ fontSize: 12.5 }}>{r.ended_at ? new Date(r.ended_at).toLocaleString() : "Writing…"}</td>
                  <td>{r.status !== "in_progress" && <button className="btn btn-sm btn-ghost" onClick={() => allowRetake(r)}><RotateCcw size={13} /> Allow</button>}</td>
                </tr>
              ))}
              {rows.length === 0 && <tr><td colSpan={8} className="muted">Nobody has taken this exam yet.</td></tr>}
            </tbody>
          </table>
        </div>
      )}
    </div>
  );
}
