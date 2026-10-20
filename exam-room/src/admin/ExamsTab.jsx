import { useCallback, useEffect, useMemo, useState } from "react";
import { Plus, Pencil, PauseCircle, PlayCircle, Lock, Trash2, Save, Shuffle } from "lucide-react";
import { supabase } from "../lib/supabase.js";
import { Spinner, fmtDateTime } from "../ui.jsx";

// <input type="datetime-local"> works in local time without a timezone.
function toLocalInput(iso) {
  const d = new Date(iso);
  const pad = n => String(n).padStart(2, "0");
  return `${d.getFullYear()}-${pad(d.getMonth() + 1)}-${pad(d.getDate())}T${pad(d.getHours())}:${pad(d.getMinutes())}`;
}

export function examState(e, now = Date.now()) {
  if (e.closed) return ["pill-off", "Closed"];
  if (now < new Date(e.starts_at).getTime()) return ["pill-off", "Scheduled"];
  if (now >= new Date(e.ends_at).getTime()) return ["pill-off", "Ended"];
  if (e.paused) return ["pill-warn", "Paused"];
  return ["pill-ok", "Open now"];
}

function blankExam() {
  const start = new Date(Date.now() + 60 * 60000);
  start.setMinutes(0, 0, 0);
  const end = new Date(start.getTime() + 2 * 60 * 60000);
  return {
    title: "", instructions: "", starts_at: start.toISOString(), ends_at: end.toISOString(),
    duration_minutes: 60, question_ids: [], per_question_seconds: null, show_answers: true, show_score: true,
    max_warnings: 3, shuffle: true, all_candidates: true, attempts_allowed: 1, proctor_level: "relaxed",
  };
}

function ExamForm({ initial, bank, candidates, onSaved, onCancel }) {
  const [f, setF] = useState(() => ({ ...initial }));
  const [category, setCategory] = useState("All");
  const [count, setCount] = useState(initial.question_ids.length || 50);
  const [allowed, setAllowed] = useState(new Set());
  const [error, setError] = useState("");
  const [saving, setSaving] = useState(false);
  const set = (k, v) => setF(prev => ({ ...prev, [k]: v }));

  useEffect(() => {
    if (!initial.id || initial.all_candidates) return;
    supabase.from("exam_allowed").select("candidate_id").eq("exam_id", initial.id)
      .then(({ data }) => setAllowed(new Set((data || []).map(r => r.candidate_id))));
  }, [initial]);

  const categories = useMemo(() => {
    const m = new Map();
    bank.forEach(q => m.set(q.category, (m.get(q.category) || 0) + 1));
    return [...m.entries()].sort((a, b) => a[0].localeCompare(b[0]));
  }, [bank]);
  const pool = category === "All" ? bank : bank.filter(q => q.category === category);

  function pickQuestions() {
    const ids = pool.map(q => q.id);
    for (let i = ids.length - 1; i > 0; i--) { const j = Math.floor(Math.random() * (i + 1)); [ids[i], ids[j]] = [ids[j], ids[i]]; }
    set("question_ids", ids.slice(0, Math.min(count, ids.length)));
  }

  async function save() {
    setError("");
    if (!f.title.trim()) return setError("Give the exam a title.");
    if (!f.question_ids.length) return setError("Pick the questions first.");
    if (new Date(f.ends_at) <= new Date(f.starts_at)) return setError("The closing time must be after the opening time.");
    if (!f.all_candidates && allowed.size === 0) return setError("Choose at least one student, or allow all students.");
    setSaving(true);
    const row = {
      title: f.title.trim(), instructions: f.instructions, starts_at: f.starts_at, ends_at: f.ends_at,
      duration_minutes: Number(f.duration_minutes), question_ids: f.question_ids,
      per_question_seconds: f.per_question_seconds ? Number(f.per_question_seconds) : null,
      show_answers: f.show_answers, show_score: f.show_score, max_warnings: Number(f.max_warnings),
      shuffle: f.shuffle, all_candidates: f.all_candidates, attempts_allowed: Number(f.attempts_allowed || 1),
      proctor_level: f.proctor_level || "relaxed",
    };
    const res = f.id
      ? await supabase.from("exam_exams").update(row).eq("id", f.id).select("id").single()
      : await supabase.from("exam_exams").insert(row).select("id").single();
    if (res.error) { setSaving(false); return setError(res.error.message); }
    const id = res.data.id;
    await supabase.from("exam_allowed").delete().eq("exam_id", id);
    if (!f.all_candidates) {
      await supabase.from("exam_allowed").insert([...allowed].map(candidate_id => ({ exam_id: id, candidate_id })));
    }
    setSaving(false);
    onSaved();
  }

  return (
    <section className="card" style={{ display: "flex", flexDirection: "column", gap: 14 }}>
      <h2 style={{ fontSize: 16, margin: 0 }}>{f.id ? "Edit exam" : "New exam"}</h2>
      <div className="field"><label htmlFor="t">Title</label><input id="t" value={f.title} onChange={e => set("title", e.target.value)} placeholder="CCN Mock Exam 1" /></div>
      <div className="field"><label htmlFor="ins">Instructions shown before the exam (optional)</label>
        <textarea id="ins" rows={3} value={f.instructions} onChange={e => set("instructions", e.target.value)} /></div>

      <div className="grid-form">
        <div className="field"><label htmlFor="s">Questions visible from</label>
          <input id="s" type="datetime-local" value={toLocalInput(f.starts_at)} onChange={e => set("starts_at", new Date(e.target.value).toISOString())} /></div>
        <div className="field"><label htmlFor="e">Questions hidden after</label>
          <input id="e" type="datetime-local" value={toLocalInput(f.ends_at)} onChange={e => set("ends_at", new Date(e.target.value).toISOString())} /></div>
        <div className="field"><label htmlFor="d">Time allowed (minutes)</label>
          <input id="d" type="number" min={1} max={600} value={f.duration_minutes} onChange={e => set("duration_minutes", e.target.value)} /></div>
        <div className="field"><label htmlFor="pq">Seconds per question (blank = no limit)</label>
          <input id="pq" type="number" min={10} max={3600} value={f.per_question_seconds ?? ""} onChange={e => set("per_question_seconds", e.target.value || null)} /></div>
        <div className="field"><label htmlFor="w">Warnings before auto-submit</label>
          <input id="w" type="number" min={1} max={50} value={f.max_warnings} onChange={e => set("max_warnings", e.target.value)} /></div>
        <div className="field"><label htmlFor="lvl">How strict the camera &amp; microphone are</label>
          <select id="lvl" value={f.proctor_level || "relaxed"} onChange={e => set("proctor_level", e.target.value)}>
            <option value="relaxed">Relaxed — murmuring and head turns allowed</option>
            <option value="normal">Normal — quiet room, short glances allowed</option>
            <option value="strict">Strict — silence, eyes on the screen</option>
          </select></div>
        <div className="field"><label htmlFor="att">Attempts each student may take</label>
          <input id="att" type="number" min={1} max={50} value={f.attempts_allowed ?? 1} onChange={e => set("attempts_allowed", e.target.value)} /></div>
      </div>
      <p className="faint" style={{ margin: 0, fontSize: 12.5 }}>
        Students can start any time between the two times. Each student gets the full time allowed, but never past the closing time.
        With more than one attempt, students can retake after finishing (or after reaching the warning limit). If an exam is ended for cheating, only you can allow a retake.
      </p>

      <div className="card" style={{ background: "var(--surface-alt)", boxShadow: "none" }}>
        <strong>Questions</strong> <span className="pill pill-ok" style={{ marginLeft: 6 }}>{f.question_ids.length} selected</span>
        <div className="grid-form" style={{ marginTop: 10 }}>
          <div className="field"><label htmlFor="cat">From topic</label>
            <select id="cat" value={category} onChange={e => setCategory(e.target.value)}>
              <option value="All">All topics ({bank.length})</option>
              {categories.map(([c, n]) => <option key={c} value={c}>{c} ({n})</option>)}
            </select></div>
          <div className="field"><label htmlFor="n">How many</label>
            <input id="n" type="number" min={1} max={pool.length} value={count} onChange={e => setCount(Number(e.target.value))} /></div>
        </div>
        <button className="btn btn-ghost btn-sm" style={{ marginTop: 10 }} onClick={pickQuestions} disabled={!pool.length}>
          <Shuffle size={14} /> Pick {Math.min(count, pool.length)} random questions
        </button>
      </div>

      <div style={{ display: "flex", flexDirection: "column", gap: 8 }}>
        <label className="toggle-row"><input type="checkbox" checked={f.show_answers} onChange={e => set("show_answers", e.target.checked)} /> Show the correct answer immediately after each answer</label>
        <label className="toggle-row"><input type="checkbox" checked={f.show_score} onChange={e => set("show_score", e.target.checked)} /> Show students their score when they finish</label>
        <label className="toggle-row"><input type="checkbox" checked={f.shuffle} onChange={e => set("shuffle", e.target.checked)} /> Give each student the questions in a different order</label>
        <label className="toggle-row"><input type="checkbox" checked={f.all_candidates} onChange={e => set("all_candidates", e.target.checked)} /> Open to all students</label>
      </div>

      {!f.all_candidates && (
        <div className="card" style={{ maxHeight: 220, overflowY: "auto", boxShadow: "none" }}>
          {candidates.map(c => (
            <label key={c.id} className="toggle-row" style={{ padding: "3px 0" }}>
              <input type="checkbox" checked={allowed.has(c.id)}
                onChange={e => setAllowed(prev => { const n = new Set(prev); e.target.checked ? n.add(c.id) : n.delete(c.id); return n; })} />
              {c.full_name} <span className="faint num">{c.access_code}</span>
            </label>
          ))}
        </div>
      )}

      {error && <div className="error" role="alert">{error}</div>}
      <div className="row" style={{ justifyContent: "flex-end" }}>
        <button className="btn btn-ghost" onClick={onCancel}>Cancel</button>
        <button className="btn btn-primary" onClick={save} disabled={saving}>{saving ? <Spinner size={16} /> : <Save size={16} />} Save exam</button>
      </div>
    </section>
  );
}

export default function ExamsTab() {
  const [exams, setExams] = useState(null);
  const [bank, setBank] = useState([]);
  const [candidates, setCandidates] = useState([]);
  const [editing, setEditing] = useState(null);
  const [error, setError] = useState("");

  const load = useCallback(async () => {
    const { data, error: err } = await supabase.from("exam_exams").select("*").order("starts_at", { ascending: false });
    if (err) setError(err.message); else setExams(data);
  }, []);

  useEffect(() => {
    load();
    (async () => {
      let all = [];
      for (let from = 0; ; from += 1000) {
        const { data } = await supabase.from("questions").select("id, category").eq("is_active", true).order("id").range(from, from + 999);
        all = all.concat(data || []);
        if (!data || data.length < 1000) break;
      }
      setBank(all);
      const { data: c } = await supabase.from("exam_candidates").select("id, full_name, access_code").eq("active", true).order("full_name");
      setCandidates(c || []);
    })();
  }, [load]);

  async function patch(id, values) {
    const { error: err } = await supabase.from("exam_exams").update(values).eq("id", id);
    if (err) setError(err.message); else load();
  }
  async function remove(e) {
    if (!confirm(`Delete "${e.title}" and all its results? This can't be undone.`)) return;
    const { error: err } = await supabase.from("exam_exams").delete().eq("id", e.id);
    if (err) setError(err.message); else load();
  }

  if (editing) {
    return <ExamForm initial={editing} bank={bank} candidates={candidates} onCancel={() => setEditing(null)} onSaved={() => { setEditing(null); load(); }} />;
  }

  return (
    <div style={{ display: "flex", flexDirection: "column", gap: 12 }}>
      <div className="row">
        <h2 style={{ fontSize: 16, margin: 0 }}>Exams</h2>
        <span className="spacer" />
        <button className="btn btn-primary btn-sm" onClick={() => setEditing(blankExam())}><Plus size={14} /> New exam</button>
      </div>
      {error && <div className="error">{error}</div>}
      {!exams ? <Spinner /> : exams.length === 0 ? <div className="card muted">No exams yet. Create your first one.</div> : (
        <div className="table-wrap">
          <table className="data">
            <thead><tr><th>Exam</th><th>Questions visible</th><th>Rules</th><th>Status</th><th>Actions</th></tr></thead>
            <tbody>
              {exams.map(e => {
                const [cls, label] = examState(e);
                return (
                  <tr key={e.id}>
                    <td><strong>{e.title}</strong><div className="faint" style={{ fontSize: 12 }}>{e.question_ids.length} questions · {e.duration_minutes} min</div></td>
                    <td style={{ fontSize: 13 }}>{fmtDateTime(e.starts_at)}<br />to {fmtDateTime(e.ends_at)}</td>
                    <td style={{ fontSize: 12.5 }} className="muted">
                      {e.max_warnings} warnings{e.per_question_seconds ? ` · ${e.per_question_seconds}s/question` : ""} · {e.attempts_allowed || 1} attempt{(e.attempts_allowed || 1) === 1 ? "" : "s"} · {(e.proctor_level || "relaxed").replace(/^./, c => c.toUpperCase())}<br />
                      {e.show_answers ? "Answers shown" : "Answers hidden"}{e.all_candidates ? "" : " · selected students"}
                    </td>
                    <td><span className={`pill ${cls}`}>{label}</span></td>
                    <td>
                      <div className="row" style={{ gap: 6 }}>
                        <button className="btn btn-sm btn-ghost" onClick={() => setEditing(e)}><Pencil size={13} /> Edit</button>
                        {!e.closed && (e.paused
                          ? <button className="btn btn-sm btn-success" onClick={() => patch(e.id, { paused: false })}><PlayCircle size={13} /> Resume</button>
                          : <button className="btn btn-sm btn-ghost" onClick={() => patch(e.id, { paused: true })}><PauseCircle size={13} /> Pause</button>)}
                        {!e.closed
                          ? <button className="btn btn-sm btn-ghost" onClick={() => confirm(`Close "${e.title}" now? Everyone still writing is submitted automatically.`) && patch(e.id, { closed: true })}><Lock size={13} /> Close now</button>
                          : <button className="btn btn-sm btn-ghost" onClick={() => patch(e.id, { closed: false })}>Reopen</button>}
                        <button className="btn btn-sm btn-ghost" aria-label={`Delete ${e.title}`} onClick={() => remove(e)}><Trash2 size={13} /></button>
                      </div>
                    </td>
                  </tr>
                );
              })}
            </tbody>
          </table>
        </div>
      )}
    </div>
  );
}
