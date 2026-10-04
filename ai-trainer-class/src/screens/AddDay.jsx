import { useState, useEffect, useRef } from "react";
import { FilePlus2, FileText, UploadCloud, AlertTriangle, CheckCircle2, Eye, EyeOff, Trash2, X, RefreshCw } from "lucide-react";
import { useApp, Empty } from "../ui.jsx";
import { supabase, niceError } from "../lib/cloud.js";
import { DAYS } from "../data/course.js";

const KIND_NAME = { lecture: "Lecture notes → lessons", taskbank: "Task bank → practice tasks", mustknow: "Must-know notes", cvs: "Sample CVs", assignment: "Assignment answers", other: "Readable notes" };

// Teacher page: pick the Word files of a new day on the phone, check them,
// then publish. Learners get the new day the next time they open the app.
export function AddDay() {
  const { showToast } = useApp();
  const nextDay = Math.max(0, ...DAYS.map(d => d.day)) + 1;
  const [day, setDay] = useState(nextDay);
  const [files, setFiles] = useState([]);
  const [result, setResult] = useState(null);
  const [busy, setBusy] = useState(null);
  const [err, setErr] = useState(null);
  const [online, setOnline] = useState(null);
  const pickRef = useRef(null);

  async function loadOnline() {
    const { data, error } = await supabase.from("days").select("day, info, published, updated_at").order("day");
    if (error) setErr(niceError(error)); else setOnline(data);
  }
  useEffect(() => { loadOnline(); }, []);

  function pick(e) {
    const list = Array.from(e.target.files || []).filter(f => /\.docx$/i.test(f.name));
    if (!list.length) { setErr("Please choose Word files (.docx)."); return; }
    setErr(null); setResult(null);
    setFiles(fs => [...fs.filter(f => !list.some(n => n.name === f.name)), ...list]);
    e.target.value = "";
  }

  async function check() {
    setBusy("Reading the files…"); setErr(null); setResult(null);
    try {
      const core = await import("../data/content-core.js");
      const warnings = [];
      core.setWarn(m => warnings.push(m));
      const n = Number(day);
      const images = new Map();
      const base = supabase.storage.from("content").getPublicUrl(`day-${n}`).data.publicUrl;
      const loaded = await Promise.all(files.map(async f => ({ name: f.name, bytes: new Uint8Array(await f.arrayBuffer()) })));
      const read = core.readDayFiles(n, loaded, (name, bytes) => images.set(name, bytes), base);
      const roles = (read.lectureRoles || []).map((r, i) => ({ key: `r${i + 1}`, name: r.name, short: r.short, intro: r.intro, skills: r.skills.map(s => ({ ...s, tasks: [] })) }));
      core.finishRoles(n, roles, read.bank);
      const info = core.dayInfo(n, read.title, read.subtitle, roles, read.docs);
      if (!info.hasCourse && !info.docs.length) warnings.push("These files have no lessons, tasks or notes the app can use.");
      setResult({ n, info, data: { day: n, title: read.title, subtitle: read.subtitle, roles }, docs: Object.fromEntries(read.docs.map(d => [d.id, d.json])), images, warnings, kinds: files.map(f => [f.name, core.kindOf(f.name)]) });
    } catch (e) { setErr(`Could not read the files: ${e.message}`); }
    setBusy(null);
  }

  async function publish() {
    const { n, info, data, docs, images } = result;
    setErr(null);
    try {
      let k = 0;
      for (const [name, bytes] of images) {
        setBusy(`Uploading pictures ${++k} of ${images.size}…`);
        const type = /\.png$/.test(name) ? "image/png" : /\.jpe?g$/.test(name) ? "image/jpeg" : /\.gif$/.test(name) ? "image/gif" : undefined;
        const { error } = await supabase.storage.from("content").upload(`day-${n}/${name}`, bytes, { upsert: true, contentType: type, cacheControl: "31536000" });
        if (error) throw error;
      }
      setBusy("Publishing the day…");
      const { error } = await supabase.from("days").upsert({ day: n, info, data, docs, published: true, updated_at: new Date().toISOString() });
      if (error) throw error;
      showToast(`Day ${n} is live! 🎉`);
      setResult(null); setFiles([]); setDay(n + 1);
      loadOnline();
    } catch (e) { setErr(niceError(e)); }
    setBusy(null);
  }

  async function toggle(d) {
    const { error } = await supabase.from("days").update({ published: !d.published }).eq("day", d.day);
    if (error) setErr(niceError(error)); else loadOnline();
  }
  async function remove(d) {
    if (!window.confirm(`Delete Day ${d.day} from the app? Learners' progress for it is kept, and the day can be uploaded again.`)) return;
    const { error } = await supabase.from("days").delete().eq("day", d.day);
    if (error) setErr(niceError(error)); else loadOnline();
  }

  const exists = DAYS.some(d => d.day === Number(day));
  return (
    <div>
      <div className="card pad stack" style={{ gap: 14 }}>
        <div className="row" style={{ gap: 12 }}>
          <div className="tile-icon fill-lime"><FilePlus2 size={22} /></div>
          <div style={{ minWidth: 0 }}>
            <div className="h3">Add a new day</div>
            <div className="muted" style={{ fontSize: 13.5 }}>Choose the day's Word files: Lecture Notes, Task Bank, Must-Know notes, CVs… The app turns them into lessons, tasks and notes.</div>
          </div>
        </div>
        <div className="row wrap" style={{ gap: 10, alignItems: "flex-end" }}>
          <div style={{ width: 120 }}>
            <label className="label" htmlFor="ad-day">Day number</label>
            <input id="ad-day" className="input" type="number" min="1" inputMode="numeric" value={day} onChange={e => { setDay(e.target.value); setResult(null); }} />
          </div>
          <button className="btn ghost" onClick={() => pickRef.current.click()}><FileText size={16} /> Choose Word files</button>
          <input ref={pickRef} type="file" multiple accept=".docx,application/vnd.openxmlformats-officedocument.wordprocessingml.document" onChange={pick} style={{ display: "none" }} />
        </div>
        {exists && <div className="pill sun" style={{ textTransform: "none", whiteSpace: "normal", padding: "8px 12px" }}>Day {day} is already in the app. Publishing will replace it (learners keep their progress).</div>}
        {files.length > 0 && (
          <div className="stack" style={{ gap: 6 }}>
            {files.map(f => (
              <div key={f.name} className="between soft" style={{ padding: "8px 12px", fontSize: 14 }}>
                <span style={{ minWidth: 0, overflowWrap: "anywhere" }}>📄 {f.name}</span>
                <button className="icon-btn" style={{ width: 30, height: 30 }} onClick={() => { setFiles(fs => fs.filter(x => x !== f)); setResult(null); }} aria-label={`Remove ${f.name}`}><X size={14} /></button>
              </div>
            ))}
          </div>
        )}
        {err && <div className="pill coral" style={{ textTransform: "none", whiteSpace: "normal", padding: "8px 12px" }}>{err}</div>}
        {busy && <div className="pill brand" style={{ textTransform: "none", padding: "8px 12px" }}><RefreshCw size={13} /> {busy}</div>}
        {!result && <button className="btn primary lg" onClick={check} disabled={!files.length || !day || busy}><Eye size={17} /> Check the files</button>}
      </div>

      {result && (
        <div className="card pad section stack" style={{ gap: 12, borderColor: result.warnings.length ? "var(--gold)" : "var(--brand-2)" }}>
          <div className="eyebrow">Check before publishing</div>
          <div className="h2">Day {result.n}: {result.info.subtitle || result.info.title}</div>
          <div className="stat-row">
            <div className="stat"><div className="v">{result.info.skills}</div><div className="l">Lessons</div></div>
            <div className="stat"><div className="v">{result.info.tasks}</div><div className="l">Tasks</div></div>
            <div className="stat"><div className="v">{result.info.docs.length}</div><div className="l">Notes</div></div>
          </div>
          <div className="stack" style={{ gap: 4, fontSize: 14 }}>
            {result.kinds.map(([n, k]) => <div key={n} className="muted">📄 {n} → <b style={{ color: "var(--text)" }}>{KIND_NAME[k]}</b></div>)}
          </div>
          {result.data.roles.map(r => (
            <div key={r.key} className="soft">
              <div style={{ fontWeight: 700 }}>{r.name}</div>
              <div className="muted" style={{ fontSize: 13.5 }}>{r.skills.map(s => `${s.n} (${s.tasks.length})`).join(" · ")}</div>
            </div>
          ))}
          {result.warnings.length > 0 && (
            <div className="explain-box fill-yellow">
              <div className="eyebrow"><AlertTriangle size={14} /> Please look at these</div>
              <ul style={{ margin: "4px 0 0", paddingLeft: 18, fontSize: 14 }}>{result.warnings.map((w, i) => <li key={i}>{w}</li>)}</ul>
            </div>
          )}
          <div className="row" style={{ gap: 10 }}>
            <button className="btn ghost full" onClick={() => setResult(null)} disabled={!!busy}>Back</button>
            <button className="btn primary full" onClick={publish} disabled={!!busy || (!result.info.hasCourse && !result.info.docs.length)}><UploadCloud size={17} /> Publish Day {result.n}</button>
          </div>
        </div>
      )}

      <div className="section">
        <div className="section-head"><h2 className="h2">Days added in the app</h2></div>
        {online === null ? <div className="muted">Loading…</div> : !online.length ? <Empty icon={FilePlus2} title="None yet" sub="Days you publish here show up for every learner. Days uploaded to GitHub still work too." /> : (
          <div className="stack" style={{ gap: 8 }}>
            {online.map(d => (
              <div key={d.day} className="card pad between">
                <div style={{ minWidth: 0 }}>
                  <div className="h3">Day {d.day} {d.published ? <span className="pill mint"><CheckCircle2 size={11} /> Live</span> : <span className="pill">Hidden</span>}</div>
                  <div className="muted" style={{ fontSize: 13.5 }}>{d.info?.subtitle} · {d.info?.skills} lessons · {d.info?.tasks} tasks</div>
                </div>
                <div className="row" style={{ gap: 6 }}>
                  <button className="icon-btn" onClick={() => toggle(d)} aria-label={d.published ? "Hide this day" : "Show this day"} title={d.published ? "Hide" : "Show"}>{d.published ? <EyeOff size={16} /> : <Eye size={16} />}</button>
                  <button className="icon-btn" onClick={() => remove(d)} aria-label="Delete this day" title="Delete"><Trash2 size={16} /></button>
                </div>
              </div>
            ))}
          </div>
        )}
      </div>
    </div>
  );
}
