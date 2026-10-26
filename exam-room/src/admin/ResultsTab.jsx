import { useEffect, useMemo, useState } from "react";
import { Download, FileText, PlayCircle, RotateCcw } from "lucide-react";
import { supabase } from "../lib/supabase.js";
import { Spinner } from "../ui.jsx";
import { useExamPicker, statusPill, EVENT_TEXT } from "./MonitorTab.jsx";

function csvCell(v) {
  const s = v == null ? "" : String(v);
  return /[",\n]/.test(s) ? `"${s.replace(/"/g, '""')}"` : s;
}

function esc(v) {
  return String(v ?? "").replace(/[&<>"]/g, ch => ({ "&": "&amp;", "<": "&lt;", ">": "&gt;", '"': "&quot;" })[ch]);
}

const STATUS_TEXT = { submitted: "Submitted", auto_submitted: "Auto-submitted", terminated: "Ended for violation", in_progress: "Still writing" };

// Every counted warning for the exam, grouped by session (no photos, so it stays light).
async function loadWarnings(examId) {
  const bySession = {};
  for (let from = 0; ; from += 1000) {
    const { data, error } = await supabase.from("exam_events")
      .select("session_id, type, detail, created_at")
      .eq("exam_id", examId).eq("counted", true)
      .order("created_at", { ascending: true }).range(from, from + 999);
    if (error) throw error;
    (data || []).forEach(ev => { (bySession[ev.session_id] = bySession[ev.session_id] || []).push(ev); });
    if (!data || data.length < 1000) return bySession;
  }
}

function warningText(ev) {
  const label = EVENT_TEXT[ev.type] || ev.type;
  const time = new Date(ev.created_at).toLocaleTimeString([], { hour: "2-digit", minute: "2-digit" });
  return `${time} ${label}${ev.detail && ev.detail !== label ? ` (${ev.detail})` : ""}`;
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

  async function letContinue(r) {
    if (!confirm(`Let ${r.c.full_name} continue from where they stopped (question ${r.answered + 1})? Their answers are kept, they get back the time they had left (at least 5 minutes) and their warnings start from zero.`)) return;
    const { data, error } = await supabase.rpc("exam_admin_resume", { p_session: r.id });
    if (error) alert(error.message);
    else if (data && data.error) alert(data.error === "exam_closed" ? "This exam is closed. Reopen it on the Exams page first." : data.error);
    else { alert(`${r.c.full_name} can continue now with ${data.minutes} minutes. Ask them to log in again and tap Continue exam.`); setReload(x => x + 1); }
  }

  async function allowRetake(r) {
    if (!confirm(`Allow ${r.c.full_name} to take this exam again? This attempt is kept on record.`)) return;
    const { error } = await supabase.rpc("exam_admin_allow_retake", { p_session: r.id });
    if (error) alert(error.message); else setReload(x => x + 1);
  }

  const rows = useMemo(() => (sessions || [])
    .map(s => ({ ...s, c: candidates[s.candidate_id] || {}, pct: s.total ? Math.round((s.score / s.total) * 100) : 0 }))
    .sort((a, b) => b.score - a.score), [sessions, candidates]);

  const [working, setWorking] = useState(false);

  async function download() {
    setWorking(true);
    let warns = {};
    try { warns = await loadWarnings(examId); } catch (e) { alert(e.message); setWorking(false); return; }
    setWorking(false);
    const head = ["Position", "Name", "Access code", "Attempt", "Status", "Reason", "Score", "Total", "Percent", "Answered", "Warnings", "Warning details", "Started", "Ended"];
    const lines = rows.map((r, i) => [i + 1, r.c.full_name, r.c.access_code, r.attempt, STATUS_TEXT[r.status] || r.status, r.ended_reason, r.score, r.total, r.pct, r.answered, r.warnings,
      (warns[r.id] || []).map(warningText).join("; "),
      r.started_at && new Date(r.started_at).toLocaleString(), r.ended_at && new Date(r.ended_at).toLocaleString()].map(csvCell).join(","));
    const blob = new Blob(["\ufeff" + [head.join(","), ...lines].join("\r\n")], { type: "text/csv;charset=utf-8" });
    const a = document.createElement("a");
    a.href = URL.createObjectURL(blob);
    a.download = `${(exam?.title || "exam").replace(/[^a-z0-9]+/gi, "-")}-results.csv`;
    a.click();
    URL.revokeObjectURL(a.href);
  }

  // A printable report (Print → Save as PDF): the ranked result list, then
  // each student's warnings with the time and what happened.
  async function printReport() {
    const w = window.open("", "_blank");
    if (!w) { alert("Allow pop-ups for this site to open the report."); return; }
    w.document.write("<p style='font-family:sans-serif'>Preparing the report…</p>");
    let warns;
    try { warns = await loadWarnings(examId); } catch (e) { w.close(); alert(e.message); return; }
    const done = rows.filter(r => r.status !== "in_progress");
    const average = done.length ? Math.round(done.reduce((t, r) => t + r.pct, 0) / done.length) : 0;
    const summary = rows.map((r, i) => `<tr><td>${i + 1}</td><td><b>${esc(r.c.full_name)}</b><br><small>${esc(r.c.access_code)}${r.attempt > 1 ? ` · attempt ${r.attempt}` : ""}</small></td>
      <td>${r.score}/${r.total}</td><td>${r.pct}%</td><td>${r.answered}</td><td class="${r.warnings ? "warn" : ""}">${r.warnings}</td>
      <td>${esc(STATUS_TEXT[r.status] || r.status)}${r.ended_reason && r.status !== "submitted" ? `<br><small>${esc(r.ended_reason)}</small>` : ""}</td></tr>`).join("");
    const details = rows.map((r, i) => {
      const list = warns[r.id] || [];
      return `<div class="person"><h3>${i + 1}. ${esc(r.c.full_name)} <small>${esc(r.c.access_code)} · ${r.score}/${r.total} (${r.pct}%) · ${esc(STATUS_TEXT[r.status] || r.status)}</small></h3>
        ${list.length ? `<ol>${list.map(ev => `<li>${esc(warningText(ev))}</li>`).join("")}</ol>` : "<p class='none'>No warnings.</p>"}</div>`;
    }).join("");
    w.document.open();
    w.document.write(`<!doctype html><html><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1">
      <title>${esc(exam?.title || "Exam")} — results</title>
      <style>body{font-family:Arial,sans-serif;margin:16px;color:#111}h1{font-size:20px;margin:0 0 4px}h2{font-size:16px;margin:22px 0 8px}
      table{border-collapse:collapse;width:100%;font-size:13px}th,td{border:1px solid #bbb;padding:5px 7px;text-align:left;vertical-align:top}th{background:#eee}
      small{color:#555;font-weight:normal}.warn{color:#b00;font-weight:bold}.person{break-inside:avoid;border-bottom:1px solid #ddd;padding:6px 0}
      .person h3{font-size:14px;margin:4px 0}.person ol{margin:2px 0 4px 18px;font-size:13px}.none{margin:2px 0;font-size:13px;color:#555}
      .bar{margin:10px 0}@media print{.bar{display:none}body{margin:8mm}}</style></head><body>
      <div class="bar"><button onclick="window.print()">Print / Save as PDF</button></div>
      <h1>${esc(exam?.title || "Exam")} — results</h1>
      <p>${rows.length} students · ${done.length} finished · average ${average}% · ${rows.filter(r => r.warnings > 0).length} with warnings · printed ${esc(new Date().toLocaleString())}</p>
      <table><thead><tr><th>#</th><th>Student</th><th>Score</th><th>%</th><th>Answered</th><th>Warnings</th><th>Status</th></tr></thead><tbody>${summary}</tbody></table>
      <h2>Warnings for each student</h2>${details}
      </body></html>`);
    w.document.close();
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
        <button className="btn btn-primary btn-sm" onClick={printReport} disabled={!rows.length}><FileText size={14} /> Report with warnings (PDF)</button>
        <button className="btn btn-ghost btn-sm" onClick={download} disabled={!rows.length || working}><Download size={14} /> {working ? "Preparing…" : "Download for Excel"}</button>
      </div>
      <div className="stat-grid">
        <div className="stat"><div className="num">{finished.length}</div><div className="lbl">Finished</div></div>
        <div className="stat"><div className="num">{avg}%</div><div className="lbl">Average score</div></div>
        <div className="stat"><div className="num">{rows.filter(r => r.status === "terminated").length}</div><div className="lbl">Ended for violations</div></div>
      </div>
      {!sessions ? <Spinner /> : (
        <div className="table-wrap">
          <table className="data">
            <thead><tr><th>#</th><th>Student</th><th>Status</th><th>Score</th><th>Answered</th><th>Warnings</th><th>Finished</th><th>Continue / retake</th></tr></thead>
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
                  <td>{r.status !== "in_progress" && (
                    <div className="row" style={{ gap: 6 }}>
                      <button className="btn btn-sm btn-primary" onClick={() => letContinue(r)}><PlayCircle size={13} /> Continue</button>
                      <button className="btn btn-sm btn-ghost" onClick={() => allowRetake(r)}><RotateCcw size={13} /> Fresh</button>
                    </div>
                  )}</td>
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
