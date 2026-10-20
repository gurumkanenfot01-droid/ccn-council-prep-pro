import { useCallback, useEffect, useMemo, useState } from "react";
import { Plus, Pencil, PauseCircle, PlayCircle, Lock, Trash2, Save, Shuffle, Users, X } from "lucide-react";
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
    questions_per_student: null,
  };
}

function ExamForm({ initial, bank, candidates, onSaved, onCancel }) {
  const [f, setF] = useState(() => ({ ...initial }));
  const [category, setCategory] = useState("All");
  const [count, setCount] = useState(initial.question_ids.length || 50);
  const [allowed, setAllowed] = useState(new Set());
  // Per-student question counts: candidate id -> { n, minutes }
  const [limits, setLimits] = useState(new Map());
  const [target, setTarget] = useState("");       // "group:<batch>" | "student:<id>"
  const [limitN, setLimitN] = useState("");
  const [limitMin, setLimitMin] = useState("");
  const [error, setError] = useState("");
  const [saving, setSaving] = useState(false);
  const set = (k, v) => setF(prev => ({ ...prev, [k]: v }));

  useEffect(() => {
    if (!initial.id || initial.all_candidates) return;
    supabase.from("exam_allowed").select("candidate_id").eq("exam_id", initial.id)
      .then(({ data }) => setAllowed(new Set((data || []).map(r => r.candidate_id))));
  }, [initial]);

  useEffect(() => {
    if (!initial.id) return;
    supabase.from("exam_question_limits").select("candidate_id, question_count, duration_minutes").eq("exam_id", initial.id)
      .then(({ data }) => setLimits(new Map((data || []).map(r => [r.candidate_id, { n: r.question_count, minutes: r.duration_minutes }]))));
  }, [initial]);

  const poolSize = f.question_ids.length;
  const nameOf = c => c.name_pending ? `Blank code ${c.access_code}` : c.full_name;
  const byId = useMemo(() => new Map(candidates.map(c => [c.id, c])), [candidates]);
  const groups = useMemo(() => [...new Set(candidates.map(c => c.batch).filter(Boolean))].sort(), [candidates]);
  // Time in proportion to the number of questions, based on the full exam time for the default count.
  const defaultN = Number(f.questions_per_student) || poolSize;
  const suggestMinutes = n => Math.max(1, Math.min(600, Math.round(Number(f.duration_minutes) * n / Math.max(1, defaultN))));

  function assign() {
    const n = Math.floor(Number(limitN));
    if (!(n >= 1)) return setError("Enter how many questions.");
    if (poolSize && n > poolSize) return setError(`The pool only has ${poolSize} questions. Pick more questions first or use a smaller number.`);
    const minutes = limitMin ? Math.floor(Number(limitMin)) : suggestMinutes(n);
    if (!(minutes >= 1 && minutes <= 600)) return setError("Minutes must be between 1 and 600.");
    let ids = [];
    if (target.startsWith("group:")) ids = candidates.filter(c => c.batch === target.slice(6)).map(c => c.id);
    else if (target.startsWith("student:")) ids = [target.slice(8)];
    if (!ids.length) return setError("Choose a group or a student.");
    setError("");
    setLimits(prev => { const m = new Map(prev); ids.forEach(id => m.set(id, { n, minutes })); return m; });
    setTarget(""); setLimitN(""); setLimitMin("");
  }

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
    const perStudent = f.questions_per_student ? Number(f.questions_per_student) : null;
    if (perStudent && perStudent > f.question_ids.length) return setError(`Questions per student (${perStudent}) is more than the ${f.question_ids.length} questions picked.`);
    const tooMany = [...limits.values()].find(l => l.n > f.question_ids.length);
    if (tooMany) return setError(`Some students are set to ${tooMany.n} questions but only ${f.question_ids.length} are picked.`);
    setSaving(true);
    const row = {
      title: f.title.trim(), instructions: f.instructions, starts_at: f.starts_at, ends_at: f.ends_at,
      duration_minutes: Number(f.duration_minutes), question_ids: f.question_ids,
      per_question_seconds: f.per_question_seconds ? Number(f.per_question_seconds) : null,
      show_answers: f.show_answers, show_score: f.show_score, max_warnings: Number(f.max_warnings),
      shuffle: f.shuffle, all_candidates: f.all_candidates, attempts_allowed: Number(f.attempts_allowed || 1),
      proctor_level: f.proctor_level || "relaxed", questions_per_student: perStudent,
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
    await supabase.from("exam_question_limits").delete().eq("exam_id", id);
    if (limits.size) {
      const rows = [...limits.entries()].filter(([cid]) => byId.has(cid))
        .map(([candidate_id, l]) => ({ exam_id: id, candidate_id, question_count: l.n, duration_minutes: l.minutes }));
      const { error: limErr } = rows.length ? await supabase.from("exam_question_limits").insert(rows) : { error: null };
      if (limErr) { setSaving(false); return setError(limErr.message); }
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
        <div className="field" style={{ marginTop: 12, maxWidth: 300 }}>
          <label htmlFor="qps">Questions each student gets (blank = all {poolSize})</label>
          <input id="qps" type="number" min={1} max={poolSize || undefined} value={f.questions_per_student ?? ""}
            onChange={e => set("questions_per_student", e.target.value || null)} placeholder={`All ${poolSize}`} />
        </div>
        <p className="faint" style={{ margin: "6px 0 0", fontSize: 12.5 }}>
          The questions picked above are the pool. Each student gets their own random set of this size from the pool.
        </p>
      </div>

      <div className="card" style={{ background: "var(--surface-alt)", boxShadow: "none" }}>
        <strong><Users size={15} /> Different number of questions for some students</strong>
        <p className="faint" style={{ margin: "4px 0 10px", fontSize: 12.5 }}>
          Example: pool of 300, most students get 100, but one group gets 150 and another 50. Time is suggested in proportion; you can change it.
        </p>
        <div className="grid-form">
          <div className="field"><label htmlFor="lt">Who</label>
            <select id="lt" value={target} onChange={e => setTarget(e.target.value)}>
              <option value="">Choose a group or student…</option>
              {groups.length > 0 && <optgroup label="Whole group">
                {groups.map(g => <option key={g} value={`group:${g}`}>{g} ({candidates.filter(c => c.batch === g).length} students)</option>)}
              </optgroup>}
              <optgroup label="One student">
                {candidates.map(c => <option key={c.id} value={`student:${c.id}`}>{nameOf(c)} ({c.access_code})</option>)}
              </optgroup>
            </select></div>
          <div className="field"><label htmlFor="ln">Number of questions</label>
            <input id="ln" type="number" min={1} max={poolSize || undefined} value={limitN} onChange={e => setLimitN(e.target.value)} placeholder="e.g. 150" /></div>
          <div className="field"><label htmlFor="lm">Minutes{limitN ? ` (suggested ${suggestMinutes(Number(limitN) || 1)})` : ""}</label>
            <input id="lm" type="number" min={1} max={600} value={limitMin} onChange={e => setLimitMin(e.target.value)}
              placeholder={limitN ? String(suggestMinutes(Number(limitN) || 1)) : "auto"} /></div>
        </div>
        <button className="btn btn-ghost btn-sm" style={{ marginTop: 10 }} onClick={assign} disabled={!target || !limitN}>
          <Plus size={14} /> Assign
        </button>
        {(() => {
          const windowMin = Math.round((new Date(f.ends_at) - new Date(f.starts_at)) / 60000);
          const longest = Math.max(Number(f.duration_minutes) || 0, ...[...limits.values()].map(l => l.minutes || 0));
          return longest > windowMin && (
            <div className="banner banner-warn" style={{ marginTop: 10, fontSize: 13 }}>
              Some students get {longest} minutes, but the exam is only open for {windowMin} minutes. Their time will stop at the closing time.
              Move the closing time later if they need the full time.
            </div>
          );
        })()}
        {limits.size > 0 && (
          <div style={{ marginTop: 12 }}>
            <div className="row" style={{ marginBottom: 6 }}>
              <span className="muted" style={{ fontSize: 13 }}>{limits.size} student{limits.size === 1 ? "" : "s"} with their own number</span>
              <span className="spacer" />
              <button className="btn btn-ghost btn-sm" onClick={() => setLimits(new Map())}>Clear all</button>
            </div>
            <div className="table-wrap" style={{ maxHeight: 260, overflowY: "auto" }}>
              <table className="data">
                <thead><tr><th>Student</th><th>Questions</th><th>Minutes</th><th></th></tr></thead>
                <tbody>
                  {[...limits.entries()].filter(([id]) => byId.has(id))
                    .sort((a, b) => nameOf(byId.get(a[0])).localeCompare(nameOf(byId.get(b[0]))))
                    .map(([id, l]) => (
                      <tr key={id}>
                        <td>{nameOf(byId.get(id))}{byId.get(id).batch && <div className="faint" style={{ fontSize: 12 }}>{byId.get(id).batch}</div>}</td>
                        <td className="num">{l.n}</td>
                        <td className="num">{l.minutes}</td>
                        <td><button className="btn btn-sm btn-ghost" aria-label={`Remove ${nameOf(byId.get(id))}`}
                          onClick={() => setLimits(prev => { const m = new Map(prev); m.delete(id); return m; })}><X size={13} /></button></td>
                      </tr>
                    ))}
                </tbody>
              </table>
            </div>
          </div>
        )}
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
              {nameOf(c)} <span className="faint num">{c.access_code}</span>
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
      const { data: c } = await supabase.from("exam_candidates").select("id, full_name, access_code, batch, name_pending").eq("active", true).order("full_name");
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
                    <td><strong>{e.title}</strong><div className="faint" style={{ fontSize: 12 }}>
                      {e.questions_per_student && e.questions_per_student < e.question_ids.length
                        ? `${e.questions_per_student} of ${e.question_ids.length} questions each`
                        : `${e.question_ids.length} questions`} · {e.duration_minutes} min
                    </div></td>
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
