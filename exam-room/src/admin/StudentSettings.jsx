import { useEffect, useMemo, useState } from "react";
import { Shield, ShieldAlert, ListOrdered, Smartphone, X } from "lucide-react";
import { supabase } from "../lib/supabase.js";
import { adminDbMessage } from "../lib/api.js";
import { Spinner } from "../ui.jsx";
import { getSpecialty } from "../lib/specialty.js";

// Per-student security and question counts, for one student or many at once.
//   security_level         null = each exam's own strictness
//   max_warnings_override  null = each exam's own warning limit (enforced in the database)
//   app_only               must use the Android/Windows exam app
//   exam_question_limits   how many questions this student gets in each exam

export const SECURITY_LEVELS = [
  ["", "Exam's own setting", "Follows the strictness chosen for each exam."],
  ["relaxed", "Relaxed", "Murmuring and head turns are fine. Only loud talking, leaving the camera for a long time, another person or a phone count."],
  ["normal", "Normal", "Quiet room. Talking or loud noise counts; the face may be out of view for about 30 seconds."],
  ["strict", "Strict", "Silence. Any talking or noise counts; the face may be out of view for about 20 seconds."],
  ["maximum", "Maximum", "Council style. A whisper or short sound counts at once, the face may leave the camera for only a few seconds, another person or a phone ends the exam, and the question is hidden whenever the page leaves full screen. Works on the website — no app download needed."],
];
export const securityLabel = l => (SECURITY_LEVELS.find(x => x[0] === (l || "")) || SECURITY_LEVELS[0])[1];

async function chunked(ids, fn) {
  for (let i = 0; i < ids.length; i += 200) {
    const { error } = await fn(ids.slice(i, i + 200));
    if (error) throw error;
  }
}

export default function StudentSettings({ students, onClose, onSaved }) {
  const many = students.length > 1;
  const first = students[0];
  const ids = useMemo(() => students.map(s => s.id), [students]);
  const [exams, setExams] = useState(null);
  const [limits, setLimits] = useState(new Map()); // `${exam}:${cand}` -> { n, minutes }
  const [level, setLevel] = useState(many ? null : (first.security_level || ""));
  const [maxW, setMaxW] = useState(many ? "" : (first.max_warnings_override ?? ""));
  const [keepMaxW, setKeepMaxW] = useState(many);
  const [appOnly, setAppOnly] = useState(many ? null : !!first.app_only);
  const [counts, setCounts] = useState({}); // exam id -> "" | number | "all"
  const [busy, setBusy] = useState(false);
  const [error, setError] = useState("");

  useEffect(() => {
    let off = false;
    (async () => {
      const { data: ex, error: e1 } = await supabase.from("exam_exams")
        .select("id, title, question_ids, questions_per_student, closed, ends_at")
        .eq("specialty", getSpecialty()).order("starts_at", { ascending: false });
      if (e1) { if (!off) setError(adminDbMessage(e1)); return; }
      const map = new Map();
      for (let i = 0; i < ids.length; i += 200) {
        const { data } = await supabase.from("exam_question_limits")
          .select("exam_id, candidate_id, question_count, duration_minutes").in("candidate_id", ids.slice(i, i + 200));
        (data || []).forEach(r => map.set(`${r.exam_id}:${r.candidate_id}`, { n: r.question_count, minutes: r.duration_minutes }));
      }
      if (off) return;
      setExams(ex || []);
      setLimits(map);
      if (!many) {
        const c = {};
        (ex || []).forEach(e => { const l = map.get(`${e.id}:${first.id}`); c[e.id] = l ? l.n : ""; });
        setCounts(c);
      }
    })();
    return () => { off = true; };
  }, [ids]); // eslint-disable-line react-hooks/exhaustive-deps

  async function save() {
    setError("");
    const w = String(maxW).trim();
    if (!(many && keepMaxW) && w !== "" && !(Number(w) >= 1 && Number(w) <= 500)) return setError("Warning limit: enter a number from 1 to 500, or leave it empty.");
    for (const [id, v] of Object.entries(counts)) {
      if (v === "" || v === "all") continue;
      if (!(Number(v) >= 1 && Number(v) <= 2000)) return setError(`Questions for “${exams.find(e => e.id === id)?.title}”: enter a number from 1 to 2000.`);
    }
    setBusy(true);
    try {
      const patch = {};
      if (level !== null) patch.security_level = level || null;
      if (!(many && keepMaxW)) patch.max_warnings_override = w === "" ? null : Math.floor(Number(w));
      if (appOnly !== null) patch.app_only = appOnly;
      if (Object.keys(patch).length) await chunked(ids, part => supabase.from("exam_candidates").update(patch).in("id", part));

      for (const e of exams || []) {
        const v = counts[e.id];
        if (v === undefined || (many && v === "")) continue; // not changed
        if (v === "" || v === "all") {
          await chunked(ids, part => supabase.from("exam_question_limits").delete().eq("exam_id", e.id).in("candidate_id", part));
        } else {
          const rows = ids.map(cid => ({ exam_id: e.id, candidate_id: cid, question_count: Math.floor(Number(v)), duration_minutes: limits.get(`${e.id}:${cid}`)?.minutes ?? null }));
          for (let i = 0; i < rows.length; i += 200) {
            const { error: err } = await supabase.from("exam_question_limits").upsert(rows.slice(i, i + 200), { onConflict: "exam_id,candidate_id" });
            if (err) throw err;
          }
        }
      }
      onSaved(many ? `Saved settings for ${ids.length} students.` : `Saved settings for ${first.name_pending ? `code ${first.access_code}` : first.full_name}.`);
    } catch (e) {
      setError(adminDbMessage(e));
      setBusy(false);
    }
  }

  const who = many ? `${ids.length} students` : (first.name_pending ? `Code ${first.access_code}` : first.full_name);
  const poolOf = e => (e.question_ids || []).length;

  return (
    <div className="overlay" role="dialog" aria-modal="true" aria-labelledby="ss-h" onClick={onClose}>
      <div className="card" onClick={e => e.stopPropagation()} style={{ maxWidth: 620, width: "100%", maxHeight: "92vh", overflowY: "auto", display: "flex", flexDirection: "column", gap: 14 }}>
        <div className="row">
          <h2 id="ss-h" style={{ fontSize: 17, margin: 0 }}>Settings — {who}</h2>
          <span className="spacer" />
          <button className="btn btn-sm btn-ghost" onClick={onClose} aria-label="Close"><X size={15} /></button>
        </div>
        {many && <div className="banner banner-info" style={{ display: "block" }}>Only what you change here is applied to all {ids.length} students. Anything you leave untouched stays as it is for each of them.</div>}

        <section>
          <h3 style={{ fontSize: 15, margin: "0 0 8px" }}><Shield size={15} /> Security level</h3>
          <div style={{ display: "flex", flexDirection: "column", gap: 6 }}>
            {SECURITY_LEVELS.map(([id, label, text]) => (
              <label key={id || "exam"} className="toggle-row" style={{ alignItems: "flex-start", borderColor: id === "maximum" && level === "maximum" ? "var(--red)" : undefined }}>
                <input type="radio" name="sec-level" checked={level === id} onChange={() => setLevel(id)} style={{ marginTop: 3 }} />
                <span>{id === "maximum" ? <ShieldAlert size={13} color="var(--red)" /> : null} <strong>{label}</strong> — <span className="muted">{text}</span></span>
              </label>
            ))}
            {many && level === null && <span className="faint" style={{ fontSize: 12.5 }}>Not changing the security level.</span>}
          </div>
        </section>

        <section className="grid-form" style={{ alignItems: "end" }}>
          <div className="field">
            <label htmlFor="ss-w">Warning limit for {many ? "these students" : "this student"}</label>
            <input id="ss-w" type="number" min={1} max={500} placeholder="Exam's own limit" value={maxW}
              disabled={many && keepMaxW} onChange={e => setMaxW(e.target.value)} />
            {many && <label className="row" style={{ gap: 6, fontSize: 13 }}><input type="checkbox" checked={keepMaxW} onChange={e => setKeepMaxW(e.target.checked)} /> Don't change</label>}
            <span className="faint" style={{ fontSize: 12 }}>When warnings reach this number, the exam is submitted. Empty = each exam's limit.</span>
          </div>
          <div className="field">
            <label>Exam app</label>
            <label className="toggle-row">
              <input type="checkbox" checked={!!appOnly} ref={el => { if (el) el.indeterminate = appOnly === null; }} onChange={e => setAppOnly(e.target.checked)} />
              <span><Smartphone size={13} /> <strong>App only</strong> — <span className="muted">on Android and Windows they must use the exam app (screenshots and screen sharing blocked).</span></span>
            </label>
          </div>
        </section>

        <section>
          <h3 style={{ fontSize: 15, margin: "0 0 4px" }}><ListOrdered size={15} /> Questions in each exam</h3>
          <p className="faint" style={{ fontSize: 12.5, margin: "0 0 8px" }}>
            {many ? "Type a number to give all of them that many questions, or tap Full paper. Leave empty to keep what each student has."
              : "Each student draws their own random set of this size. Empty = the full paper."}
          </p>
          {exams === null ? <Spinner /> : exams.length === 0 ? <p className="muted">No exams in this section yet.</p> : (
            <div style={{ display: "flex", flexDirection: "column", gap: 8 }}>
              {exams.map(e => {
                const v = counts[e.id] ?? "";
                const pool = poolOf(e);
                return (
                  <div key={e.id} className="row" style={{ gap: 8, flexWrap: "nowrap" }}>
                    <div style={{ flex: 1, minWidth: 0 }}>
                      <div style={{ fontWeight: 600, fontSize: 14 }}>{e.title}</div>
                      <div className="faint" style={{ fontSize: 12 }}>{pool ? `${pool} questions in the paper` : "No questions loaded yet"}{e.closed ? " · closed" : ""}</div>
                    </div>
                    <input type="number" min={1} max={2000} aria-label={`Questions in ${e.title}`} style={{ width: 96 }}
                      placeholder={many ? "No change" : "Full"} value={v === "all" ? "" : v}
                      onChange={ev => setCounts(c => ({ ...c, [e.id]: ev.target.value }))} />
                    <button className={`btn btn-sm ${v === "all" || (!many && v === "") ? "btn-primary" : "btn-ghost"}`}
                      onClick={() => setCounts(c => ({ ...c, [e.id]: many ? "all" : "" }))}>Full paper</button>
                  </div>
                );
              })}
            </div>
          )}
        </section>

        {error && <div className="banner banner-bad">{error}</div>}
        <div className="row" style={{ justifyContent: "flex-end" }}>
          <button className="btn btn-ghost" onClick={onClose} disabled={busy}>Cancel</button>
          <button className="btn btn-primary" onClick={save} disabled={busy || exams === null}>{busy ? <Spinner size={16} /> : null} Save</button>
        </div>
      </div>
    </div>
  );
}
