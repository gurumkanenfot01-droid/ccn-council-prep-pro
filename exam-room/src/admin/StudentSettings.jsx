import { useEffect, useMemo, useState } from "react";
import { Shield, ShieldAlert, ListOrdered, Smartphone, X, Moon, Baby, CheckCircle2, Lock, Eye, Minus, Plus, Lightbulb, Percent, ListChecks, CheckCheck } from "lucide-react";
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

// [id, name, one-line explanation]. The seconds are how long a problem must
// last before it becomes a warning (from PROCTOR_LEVELS in lib/proctor.js).
export const SECURITY_LEVELS = [
  ["", "Exam's own", "Uses the strictness you set on each exam in the Exams tab. Nothing extra for this student."],
  ["relaxed", "Relaxed", "Gentle. Murmuring and reading quietly are fine; only clearly loud talking counts. Face may be out of view for 45 s and the room dark for 15 s before a warning. Another person 3 s, a phone 2 s."],
  ["normal", "Normal", "Quiet room. Normal talking counts after 2 s. Face out of view 30 s, dark room 10 s, another person 2.5 s, a phone 1.5 s."],
  ["strict", "Strict", "Silence. Even soft talking counts after about 1 s. Face out of view 20 s, dark room 8 s, another person 2 s, a phone 1.5 s."],
  ["maximum", "Maximum", "Council style. Any whisper counts; face out of view 8 s, looking away 5 s, dark room 4 s, another person or phone about 1 s. Full screen, one device only, and an ear check and room scan before the exam."],
];
export const securityLabel = l => (SECURITY_LEVELS.find(x => x[0] === (l || "")) || SECURITY_LEVELS[0])[1];

export const EXEMPTIONS = [
  ["dark", "Dark room / any light", "A dark, red-lit or black camera picture never counts or locks the exam."],
  ["no_face", "Face not showing", "Face out of view or looking away never counts."],
  ["people", "Other people in view", "Children or family in the picture never count and never end the exam."],
  ["noise", "Noise or talking", "Children's noise, talking or TV never counts."],
  ["turning", "Turning away", "Head turned away from the screen never counts."],
  ["phone", "Phone in view", "A phone seen by the camera never counts."],
  ["fullscreen", "Leaving full screen", "Full screen, second screen and mouse checks are off."],
];

// The rules as a tick list: ticked = the rule is checked for this student,
// unticked = switched off for them (stored as exempt_checks). councilOnly rules
// only exist in the Council section.
export const RULES = [
  { key: "noise", label: "No talking or noise", text: "Talking, whispering, TV or noise gives a warning." },
  { key: "turning", label: "No turning away for more than 45 s", text: "Head turned from the screen for 45 seconds or longer gives a warning.", councilOnly: true },
  { key: "no_face", label: "Face must stay in view", text: "Face leaving the camera gives a warning (after the level's time)." },
  { key: "people", label: "No other person in view", text: "Another person in the picture gives a warning and can end the exam." },
  { key: "dark", label: "Must have light", text: "A dark or black camera picture gives a warning. Untick for poor light — you can still watch them closely." },
  { key: "phone", label: "No phone in view", text: "A phone seen by the camera gives a warning and ends the exam." },
  { key: "fullscreen", label: "Laptop lock", text: "Full screen, one screen only, mouse stays on the exam.", councilOnly: true },
];
export const ALWAYS_RULES = [
  "Leaving the exam screen or switching apps gives a warning",
  "Copying, screenshots and printing are blocked",
  "One device per code — no sharing",
];
export const exemptLabel = k => (EXEMPTIONS.find(x => x[0] === k) || [k, k])[1];

// Council: share of questions by amount paid.
export const SHARES = [[100, "Full (₦20,000)"], [80, "80% (₦15,000)"], [75, "75%"], [50, "Half (₦7,000–10,000)"], [25, "Quarter (₦5,000)"]];

// Quick profiles: a level plus the checks switched off. "allowed" never gives
// a warning; "counts" still gives warnings. Leaving the exam screen always counts.
export const PRESETS = [
  { id: "night", icon: Moon, title: "Night / low light", short: "Dark room or face not showing", text: "For a student with no light at night, or whose face doesn't show well. Relaxed level.", level: "relaxed", exempt: ["dark", "no_face"], watch: false, tone: "calm",
    allowed: ["Dark room, no light, black camera picture", "Face not showing or looking away", "Murmuring / reading quietly"],
    counts: ["Another person in view (3 s)", "Loud talking or noise (3 s)", "A phone in view", "Leaving the exam screen"] },
  { id: "parent", icon: Baby, title: "Parent at home", short: "Children around, noise is fine", text: "For a student with children or family around. Relaxed level.", level: "relaxed", exempt: ["people", "noise"], watch: false, tone: "calm",
    allowed: ["Children or family in the picture", "Noise, talking, crying, TV"],
    counts: ["Face out of view (45 s)", "Dark room (15 s)", "A phone in view", "Leaving the exam screen"] },
  { id: "anylight", icon: Lightbulb, title: "Any light — watched", short: "Any light, strict, watched", text: "For a student in a red, dim or coloured light. The light is forgiven, but everything else is Strict, and they are shown first on the Live monitor so you can watch them.", level: "strict", exempt: ["dark"], watch: true, tone: "sky",
    allowed: ["Red, blue, dim or any colour of light", "Dark or black camera picture", "Busy background"],
    counts: ["Face out of view (20 s)", "Any talking (about 1 s)", "Another person (2 s)", "A phone in view", "Leaving the exam screen"] },
  { id: "standard", icon: CheckCircle2, title: "Standard", short: "The exam's own rules", text: "The normal choice. The student follows the strictness you set on each exam (Exams tab). Nothing is switched off.", level: "", exempt: [], watch: false, tone: "plain",
    allowed: ["Whatever the exam's own strictness allows"],
    counts: ["Everything the exam's strictness checks", "Leaving the exam screen"] },
  { id: "strict", icon: Lock, title: "Strict", short: "Every check counts", text: "Silence and face in view, whatever the exam's own setting. Every check counts.", level: "strict", exempt: [], watch: false, tone: "firm",
    allowed: ["Looking down at rough paper"],
    counts: ["Any talking (about 1 s)", "Face out of view (20 s)", "Dark room (8 s)", "Another person (2 s)", "A phone in view", "Leaving the exam screen"] },
  { id: "maximum", icon: ShieldAlert, title: "Maximum + watch", short: "Council style, watched", text: "The strictest. Council style, with an ear check (no earphones) and room scan before the exam. Shown first on the Live monitor.", level: "maximum", exempt: [], watch: true, tone: "hard",
    allowed: ["Nothing extra"],
    counts: ["Any whisper", "Face out of view (8 s)", "Looking away (5 s)", "Dark room (4 s)", "Another person or phone (about 1 s)", "Leaving full screen or a second screen", "Using a second device"] },
];

async function chunked(ids, fn) {
  for (let i = 0; i < ids.length; i += 200) {
    const { error } = await fn(ids.slice(i, i + 200));
    if (error) throw error;
  }
}
const same = (a, b) => a && b && a.length === b.length && a.every(x => b.includes(x));
// The quick profile a student's saved rules match, or null for custom rules.
export function presetOf(r) {
  return PRESETS.find(p => (r.security_level || "") === p.level && same(r.exempt_checks || [], p.exempt) && !!r.watch === p.watch) || null;
}

// What a profile allows and what still counts, side by side.
export function PresetExplain({ p }) {
  return (
    <div className="preset-explain">
      <p>{p.text}</p>
      <div className="pe-cols">
        <div className="pe-ok"><strong>Never gives a warning</strong><ul>{p.allowed.map(t => <li key={t}>{t}</li>)}</ul></div>
        <div className="pe-bad"><strong>Still gives a warning</strong><ul>{p.counts.map(t => <li key={t}>{t}</li>)}</ul></div>
      </div>
    </div>
  );
}
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
  // Council: share of the questions by what they paid (100 = all).
  const hasShare = getSpecialty() === "council" && "question_share" in first;
  const [share, setShare] = useState(many ? null : (first.question_share ?? 100));
  const [amount, setAmount] = useState(many ? null : (first.amount_paid ?? ""));
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
  const rules = RULES.filter(r => !r.councilOnly || getSpecialty() === "council");
  function toggleExempt(k, on) {
    setExempt(cur => { const base = cur || []; return on ? [...new Set([...base, k])] : base.filter(x => x !== k); });
  }
  const stepW = d => setMaxW(v => { const n = Number(v) || 0; const next = Math.min(500, Math.max(1, (n || 10) + d)); return String(next); });

  async function save() {
    setError("");
    const w = maxW === null ? null : String(maxW).trim();
    if (w !== null && w !== "" && !(Number(w) >= 1 && Number(w) <= 500)) return setError("Warning limit: enter a number from 1 to 500, or tap Exam's own.");
    if (hasShare && share !== null && !(Number(share) >= 1 && Number(share) <= 100)) return setError("Share of questions: choose a percentage from 1 to 100.");
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
      if (hasShare && share !== null) patch.question_share = Number(share) >= 100 ? null : Math.max(1, Math.floor(Number(share)));
      if (hasShare && amount !== null) patch.amount_paid = String(amount).trim() === "" ? null : Math.max(0, Math.floor(Number(String(amount).replace(/[^0-9]/g, "")) || 0));
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
    hasShare && share !== null && Number(share) < 100 ? `${share}% of questions` : null,
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
            {activePreset ? <PresetExplain p={activePreset} /> : <p className="sp-note">Custom rules. Pick a profile to start from, then fine-tune the settings on the right.</p>}
            <details className="pe-all">
              <summary>What does each profile mean?</summary>
              {PRESETS.map(p => <div key={p.id}><h4><p.icon size={14} /> {p.title}</h4><PresetExplain p={p} /></div>)}
              <p className="sp-note">Numbers in brackets are how long it must last before it becomes a warning. When a student reaches their warning limit, the exam ends.</p>
            </details>
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
              <div className="row" style={{ justifyContent: "space-between", alignItems: "center", gap: 8 }}>
                <h3 className="sp-h3" style={{ margin: 0 }}><ListChecks size={13} /> Rules{many ? " for all of them" : " for this student"} — ticked = checked</h3>
                <div className="row" style={{ gap: 6 }}>
                  <button className="btn btn-sm btn-primary" onClick={() => setExempt([])}><CheckCheck size={14} /> Tick all</button>
                  <button className="btn btn-sm btn-ghost" onClick={() => setExempt(rules.map(r => r.key))}>Untick all</button>
                </div>
              </div>
              <div className="rule-list">
                {rules.map(r => {
                  const enforced = exempt !== null && !exempt.includes(r.key);
                  return (
                    <label key={r.key} className={`rule-row${enforced ? " on" : ""}${exempt === null ? " mixed" : ""}`}>
                      <input type="checkbox" checked={enforced} onChange={e => toggleExempt(r.key, !e.target.checked)} />
                      <span><strong>{r.label}</strong><small>{r.text}</small></span>
                    </label>
                  );
                })}
                {ALWAYS_RULES.map(t => (
                  <div key={t} className="rule-row on locked"><Lock size={14} /><span><strong>{t}</strong><small>Always on for everyone</small></span></div>
                ))}
              </div>
              <p className="sp-note">{exempt === null ? "Mixed — tap a rule to set it for all of them. " : ""}Poor light? Untick <strong>Must have light</strong> and switch on <strong>Watch closely</strong> below to keep them strict. Changes reach a student who is already writing within about 30 seconds.</p>
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

            {hasShare && (
              <section>
                <h3 className="sp-h3"><Percent size={13} /> Share of the questions (by payment)</h3>
                <div className="chips">
                  {SHARES.map(([v, label]) => <button key={v} className={Number(share) === v ? "on" : ""} onClick={() => setShare(v)}>{label}</button>)}
                  <input type="number" min={1} max={100} aria-label="Share of questions, percent" placeholder={share === null ? "Mixed" : "%"}
                    value={share ?? ""} onChange={e => setShare(e.target.value)} style={{ width: 80 }} />
                </div>
                <div className="field" style={{ maxWidth: 220, marginTop: 10 }}>
                  <label htmlFor="amount-paid">Amount paid (₦, for your records)</label>
                  <input id="amount-paid" inputMode="numeric" placeholder={amount === null ? "Mixed — not changing" : "e.g. 10000"} value={amount ?? ""} onChange={e => setAmount(e.target.value)} />
                </div>
                <p className="sp-note">
                  {share === null ? "Mixed — tap a share to set it for everyone. " : Number(share) >= 100 ? "Full questions, like everyone who paid in full. " : `${share}% of the questions a full-paying student gets, in every paper. `}
                  A number typed for one exam below still wins over the share. The student sees their share on their exams page.
                </p>
              </section>
            )}

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
