import { useEffect, useMemo, useState } from "react";
import { Shield, ShieldAlert, ListOrdered, Smartphone, X, Moon, Baby, CheckCircle2, Lock, Eye, Minus, Plus, Lightbulb } from "lucide-react";
import { supabase } from "../lib/supabase.js";
import { adminDbMessage } from "../lib/api.js";
import { Spinner } from "../ui.jsx";
import { getSpecialty } from "../lib/specialty.js";

// One student's (or many students') own exam rules. Nothing here changes any
// other student.
//   security_level         null = each exam's own strictness
//   exempt_checks          checks that never count for them (dark, no_face, people, noise)
//   max_warnings_override  their own warning limit (null = the exam's)
//   app_only / watch       must use the app / shown first on the Live monitor
//   exam_question_limits   how many questions they get in each exam

export const SECURITY_LEVELS = [
  ["", "Exam's own", "Follows each exam's setting."],
  ["relaxed", "Relaxed", "Murmuring and head turns are fine."],
  ["normal", "Normal", "Quiet room."],
  ["strict", "Strict", "Silence; face in view."],
  ["maximum", "Maximum", "Council style, with ear check and room scan."],
];
export const securityLabel = l => (SECURITY_LEVELS.find(x => x[0] === (l || "")) || SECURITY_LEVELS[0])[1];

export const EXEMPTIONS = [
  ["dark", "Dark room / any light", "A dark, red-lit or black camera picture never counts or locks the exam."],
  ["no_face", "Face not showing", "Face out of view or looking away never counts."],
  ["people", "Other people in view", "Children or family in the picture never count and never end the exam."],
  ["noise", "Noise or talking", "Children's noise, talking or TV never counts."],
];
export const exemptLabel = k => (EXEMPTIONS.find(x => x[0] === k) || [k, k])[1];

const PRESETS = [
  { id: "night", icon: Moon, title: "Night / low light", short: "Dark room or face not showing", text: "No light at night or the face doesn't show. Relaxed; darkness and face checks off.", level: "relaxed", exempt: ["dark", "no_face"], watch: false, tone: "calm" },
  { id: "parent", icon: Baby, title: "Parent at home", short: "Children around, noise is fine", text: "Children around. Relaxed; other people and noise never count.", level: "relaxed", exempt: ["people", "noise"], watch: false, tone: "calm" },
  { id: "anylight", icon: Lightbulb, title: "Any light — watched", short: "Any light, strict, watched", text: "Red, dim or any light and a busy background are fine. Strict on everything else, shown first on the Live monitor.", level: "strict", exempt: ["dark"], watch: true, tone: "sky" },
  { id: "standard", icon: CheckCircle2, title: "Standard", short: "The exam's own rules", text: "Follows each exam's own rules. Nothing switched off.", level: "", exempt: [], watch: false, tone: "plain" },
  { id: "strict", icon: Lock, title: "Strict", short: "Every check counts", text: "Silence and face in view. Every check counts.", level: "strict", exempt: [], watch: false, tone: "firm" },
  { id: "maximum", icon: ShieldAlert, title: "Maximum + watch", short: "Council style, watched", text: "Council style, ear check and room scan, shown first on the Live monitor.", level: "maximum", exempt: [], watch: true, tone: "hard" },
];

async function chunked(ids, fn) {
  for (let i = 0; i < ids.length; i += 200) {
    const { error } = await fn(ids.slice(i, i + 200));
    if (error) throw error;
  }
}
const same = (a, b) => a && b && a.length === b.length && a.every(x => b.includes(x));
const initials = n => (n || "?").split(/\s+/).filter(Boolean).slice(0, 2).map(w => w[0].toUpperCase()).join("");

function Switch({ checked, onChange, label, text, icon: Icon, indeterminate = false }) {
  return (
    <label className={`switch-row${checked ? " on" : ""}`}>
      <span className="switch-text">
        <strong>{Icon ? <Icon size={14} /> : null} {label}</strong>
        {text && <span className="muted">{text}</span>}
        {indeterminate && <span className="faint">Mixed — not changing</span>}
      </span>
      <input type="checkbox" role="switch" checked={!!checked} onChange={e => onChange(e.target.checked)} />
      <span className="switch" aria-hidden="true" />
    </label>
  );
}

export default function StudentSettings({ students, onClose, onSaved }) {
  const many = students.length > 1;
  const first = students[0];
  const ids = useMemo(() => students.map(s => s.id), [students]);
  const [exams, setExams] = useState(null);
  const [limits, setLimits] = useState(new Map()); // `${exam}:${cand}` -> { n, minutes }
  // In "many" mode, null means "not changing".
  const [level, setLevel] = useState(many ? null : (first.security_level || ""));
  const [exempt, setExempt] = useState(many ? null : (first.exempt_checks || []));
  const [watch, setWatch] = useState(many ? null : !!first.watch);
  const [appOnly, setAppOnly] = useState(many ? null : !!first.app_only);
  const [maxW, setMaxW] = useState(many ? null : (first.max_warnings_override ?? ""));
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

  const activePreset = PRESETS.find(p => level === p.level && exempt !== null && same(exempt, p.exempt) && (watch === null || !!watch === p.watch));
  function applyPreset(p) { setLevel(p.level); setExempt(p.exempt.slice()); setWatch(p.watch); }
  function toggleExempt(k, on) {
    setExempt(cur => { const base = cur || []; return on ? [...new Set([...base, k])] : base.filter(x => x !== k); });
  }
  const stepW = d => setMaxW(v => { const n = Number(v) || 0; const next = Math.min(500, Math.max(1, (n || 10) + d)); return String(next); });

  async function save() {
    setError("");
    const w = maxW === null ? null : String(maxW).trim();
    if (w !== null && w !== "" && !(Number(w) >= 1 && Number(w) <= 500)) return setError("Warning limit: enter a number from 1 to 500, or tap Exam's own.");
    for (const [id, v] of Object.entries(counts)) {
      if (v === "" || v === "all") continue;
      if (!(Number(v) >= 1 && Number(v) <= 2000)) return setError(`Questions for “${exams.find(e => e.id === id)?.title}”: enter a number from 1 to 2000.`);
    }
    setBusy(true);
    try {
      const patch = {};
      if (level !== null) patch.security_level = level || null;
      if (exempt !== null) patch.exempt_checks = exempt;
      if (watch !== null) patch.watch = watch;
      if (appOnly !== null) patch.app_only = appOnly;
      if (w !== null) patch.max_warnings_override = w === "" ? null : Math.floor(Number(w));
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
      onSaved(many ? `Saved rules for ${ids.length} students.` : `Saved rules for ${first.name_pending ? `code ${first.access_code}` : first.full_name}.`);
    } catch (e) {
      setError(/exempt_checks|watch/.test(e.message || "") ? "The database hasn't been updated for these settings yet. Merge the latest update on GitHub and wait 3 minutes." : adminDbMessage(e));
      setBusy(false);
    }
  }

  const name = many ? `${ids.length} students` : (first.name_pending ? `Code ${first.access_code}` : first.full_name);
  const poolOf = e => (e.question_ids || []).length;
  const summary = [
    level === null ? null : `Level: ${SECURITY_LEVELS.find(x => x[0] === level)[1]}`,
    exempt && exempt.length ? `${exempt.length} check${exempt.length === 1 ? "" : "s"} off` : null,
    maxW ? `${maxW} warnings` : null,
    watch ? "watched" : null,
    appOnly ? "app only" : null,
  ].filter(Boolean).join(" · ");

  return (
    <div className="overlay" role="dialog" aria-modal="true" aria-labelledby="ss-h" onClick={onClose}>
      <div className="card student-panel" onClick={e => e.stopPropagation()}>
        <header className="sp-head">
          <span className="sp-avatar">{many ? ids.length : initials(first.full_name)}</span>
          <div style={{ minWidth: 0, flex: 1 }}>
            <h2 id="ss-h" className="serif">{name}</h2>
            <div className="faint" style={{ fontSize: 12.5 }}>{many ? "Only what you change is applied to each of them." : `Code ${first.access_code} · these rules apply to this student only`}</div>
          </div>
          <button className="btn btn-sm btn-ghost" onClick={onClose} aria-label="Close"><X size={16} /></button>
        </header>

        <div className="sp-body">
          <aside className="sp-left">
            <h3 className="sp-h3">Quick profile</h3>
            <div className="preset-list">
              {PRESETS.map(p => (
                <button key={p.id} className={`preset-row${activePreset === p ? " on" : ""}`} onClick={() => applyPreset(p)} aria-pressed={activePreset === p} title={p.text}>
                  <span className={`p-icon p-${p.tone}`}><p.icon size={19} /></span>
                  <span style={{ minWidth: 0 }}><strong>{p.title}</strong><small>{p.short}</small></span>
                  <CheckCircle2 className="p-check" size={18} />
                </button>
              ))}
            </div>
            <p className="sp-note">{activePreset ? activePreset.text : "Pick a profile, then fine-tune the settings."}</p>
          </aside>

          <div className="sp-right">
            <section>
              <h3 className="sp-h3"><Shield size={13} /> Security level</h3>
              <div className="seg5" role="radiogroup" aria-label="Security level">
                {SECURITY_LEVELS.map(([id, label]) => (
                  <button key={id || "exam"} role="radio" aria-checked={level === id} className={`${level === id ? "on" : ""}${id === "maximum" ? " hard" : ""}`} onClick={() => setLevel(id)}>{label}</button>
                ))}
              </div>
              <p className="sp-note">{level === null ? "Not changing the level." : SECURITY_LEVELS.find(x => x[0] === level)[2]}</p>
            </section>

            <section>
              <h3 className="sp-h3"><Eye size={13} /> Checks that won't count{many ? "" : " for this student"}</h3>
              <div className="tile-grid">
                {EXEMPTIONS.map(([k, label, text]) => {
                  const on = exempt !== null && exempt.includes(k);
                  return (
                    <label key={k} className={`tile${on ? " on" : ""}`}>
                      <span className="t-text"><strong>{label}</strong><span>{text}</span></span>
                      <input type="checkbox" role="switch" checked={on} onChange={e => toggleExempt(k, e.target.checked)} />
                      <span className="switch" aria-hidden="true" />
                    </label>
                  );
                })}
              </div>
              <p className="sp-note">{exempt === null ? "Mixed — tap a check to set it for everyone. " : ""}Changes reach a student who is already writing within about 30 seconds.</p>
            </section>

            <section className="sp-grid2">
              <div className="box">
                <h3 className="sp-h3">Warning limit</h3>
                <div className="limit-row">
                  <button className="btn btn-sm btn-ghost" onClick={() => stepW(-1)} aria-label="Fewer warnings"><Minus size={14} /></button>
                  <input type="number" min={1} max={500} aria-label="Warning limit" placeholder={maxW === null ? "—" : "Exam"} value={maxW ?? ""} onChange={e => setMaxW(e.target.value)} />
                  <button className="btn btn-sm btn-ghost" onClick={() => stepW(1)} aria-label="More warnings"><Plus size={14} /></button>
                </div>
                <div className="chips">
                  <button className={maxW === "" ? "on" : ""} onClick={() => setMaxW("")}>Exam's own</button>
                  {[3, 5, 20, 100].map(n => <button key={n} className={String(maxW) === String(n) ? "on" : ""} onClick={() => setMaxW(String(n))}>{n}</button>)}
                </div>
                <p className="sp-note">A high limit (e.g. 100) means they won't be locked out.</p>
              </div>
              <div className="box">
                <h3 className="sp-h3">Options</h3>
                <Switch icon={Eye} label="Watch closely" text="First and highlighted on the Live monitor." checked={!!watch} indeterminate={watch === null} onChange={setWatch} />
                <Switch icon={Smartphone} label="App only" text="Android and Windows must use the exam app." checked={!!appOnly} indeterminate={appOnly === null} onChange={setAppOnly} />
              </div>
            </section>

            <section>
              <h3 className="sp-h3"><ListOrdered size={13} /> Questions in each exam</h3>
              {exams === null ? <Spinner /> : exams.length === 0 ? <p className="muted">No exams in this section yet.</p> : (
                <div className="q-list">
                  {exams.map(e => {
                    const v = counts[e.id] ?? "";
                    const pool = poolOf(e);
                    return (
                      <div key={e.id} className="q-row">
                        <div style={{ flex: 1, minWidth: 0 }}>
                          <div style={{ fontWeight: 700, fontSize: 14 }}>{e.title}</div>
                          <div className="faint" style={{ fontSize: 12 }}>{pool ? `${pool} questions in the paper` : "No questions loaded yet"}{e.closed ? " · closed" : ""}</div>
                        </div>
                        <input type="number" min={1} max={2000} aria-label={`Questions in ${e.title}`}
                          placeholder={many ? "—" : "All"} value={v === "all" ? "" : v}
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
          </div>
        </div>

        <footer className="sp-foot">
          <span className="sp-summary">{summary || "No changes yet"}</span>
          <button className="btn btn-ghost" onClick={onClose} disabled={busy}>Cancel</button>
          <button className="btn btn-primary" onClick={save} disabled={busy || exams === null}>{busy ? <Spinner size={16} /> : <CheckCircle2 size={16} />} Save {many ? `for ${ids.length}` : ""}</button>
        </footer>
      </div>
    </div>
  );
}
