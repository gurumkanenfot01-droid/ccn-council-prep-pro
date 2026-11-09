import { useCallback, useEffect, useMemo, useState } from "react";
import { UserPlus, Copy, Check, X, RotateCcw, Ban, CheckCircle2, Trash2, Search, Image, Download, Printer, Layers, ScanFace, Smartphone, Clock, SlidersHorizontal, Shield, ShieldAlert, GraduationCap, Eye, Moon, MoreHorizontal, Link2, BadgeCheck, Hash } from "lucide-react";
import { supabase } from "../lib/supabase.js";
import { adminDbMessage } from "../lib/api.js";
import { Spinner, MoreMenu } from "../ui.jsx";
import { APP_DOWNLOAD_URL, DESKTOP_DOWNLOAD_URL } from "../lib/app.js";
import { getSpecialty, specialtyLabel } from "../lib/specialty.js";
import StudentSettings, { securityLabel, exemptLabel } from "./StudentSettings.jsx";

// No look-alike characters (0/O, 1/I/L), so codes are easy to read out.
const ALPHABET = "ABCDEFGHJKMNPQRSTUVWXYZ23456789";
export function newCode(length = 8) {
  const bytes = new Uint32Array(length);
  crypto.getRandomValues(bytes);
  return Array.from(bytes, b => ALPHABET[b % ALPHABET.length]).join("");
}

const FIELDS_BASE = "id, full_name, access_code, face_status, active, enrolled_at, created_at, name_pending, batch, anytime, specialty, full_access, no_face";
// Per-student security (added by supabase/updates/2026-11-09_council_and_student_security.sql).
const FIELDS = FIELDS_BASE + ", security_level, max_warnings_override, app_only, exempt_checks, watch";
const FIELDS_MID = FIELDS_BASE + ", security_level, max_warnings_override, app_only";
// Council claim link (supabase/updates/2026-11-12_council_claim_by_name.sql).
const FIELDS_CLAIM = FIELDS + ", claimable, claimed_at, claim_count, exam_number";
const MAX_BLANK = 500;

// One name per line, as typed or pasted from Excel/Word/WhatsApp: numbering
// ("1.", "2)") and bullets are dropped, and only the first column is kept.
export function parseNames(text) {
  return text.split(/\r?\n/)
    .map(l => l.split(/\t|,|;/).map(c => c.replace(/^\s*(?:\d+\s*[.):-]?|[-•*])\s*/, "").trim()).find(Boolean) || "")
    .map(l => l.replace(/\s+/g, " ").trim())
    .filter(l => l && !/^(s\/?n|no\.?|names?|full ?names?)$/i.test(l));
}

// Inserts candidates in chunks; a chunk that hits an already-used code gets fresh codes and is retried.
async function insertCandidates(rows) {
  const created = [];
  for (let i = 0; i < rows.length; i += 100) {
    let chunk = rows.slice(i, i + 100);
    for (let tries = 0; ; tries++) {
      const { data, error } = await supabase.from("exam_candidates").insert(chunk.map(r => ({ ...r, specialty: r.specialty || getSpecialty() }))).select(FIELDS_BASE);
      if (!error) { created.push(...data); break; }
      if (error.code !== "23505" || tries >= 4) throw new Error(error.message);
      chunk = chunk.map(r => ({ ...r, access_code: newCode() }));
    }
  }
  return created;
}

function csvCell(v) { const t = String(v ?? ""); return /[",\n]/.test(t) ? `"${t.replace(/"/g, '""')}"` : t; }

function downloadCsv(list, site, filename) {
  const lines = [["Name", "Access code", "Exam number", "Batch", "Face", "Exam site"],
    ...list.map(r => [r.name_pending ? "" : r.full_name, r.access_code, r.exam_number || "", r.batch, r.face_status, site])];
  const blob = new Blob(["\ufeff" + lines.map(l => l.map(csvCell).join(",")).join("\r\n")], { type: "text/csv;charset=utf-8" });
  const a = document.createElement("a");
  a.href = URL.createObjectURL(blob); a.download = filename;
  document.body.appendChild(a); a.click(); a.remove();
  setTimeout(() => URL.revokeObjectURL(a.href), 2000);
}

const esc = t => String(t ?? "").replace(/[&<>"]/g, c => ({ "&": "&amp;", "<": "&lt;", ">": "&gt;", '"': "&quot;" }[c]));

// Opens a printable sheet of cut-out slips, one per code (about 10 per A4 page).
function printSlips(list, site) {
  const w = window.open("", "_blank");
  if (!w) { alert("Allow pop-ups for this site to print the slips."); return; }
  const slips = list.map(r => `<div class="slip">
    <div class="t">Nursing Exam Room</div>
    <div class="n">${r.name_pending ? "Name: ______________________________" : esc(r.full_name)}</div>
    <div class="c">${esc(r.access_code)}</div>
    <div class="s">1. Open <b>${esc(site)}</b><br>2. Enter this code and register your face${r.name_pending ? " and full name" : ""}.<br>Keep this code private. It only works with your face.</div>
  </div>`).join("");
  w.document.write(`<!doctype html><html><head><meta charset="utf-8"><title>Access code slips</title><style>
    body{font-family:system-ui,Arial,sans-serif;margin:12mm;color:#111}
    .grid{display:grid;grid-template-columns:1fr 1fr;gap:0}
    .slip{border:1px dashed #888;padding:10px 12px;break-inside:avoid;page-break-inside:avoid;min-height:44mm}
    .t{font-weight:700;font-size:13px}.n{margin:6px 0;font-size:13px}
    .c{font:700 26px/1.2 ui-monospace,Menlo,Consolas,monospace;letter-spacing:.18em;margin:4px 0}
    .s{font-size:11px;color:#333;line-height:1.45}
    @media print{body{margin:8mm}}</style></head><body><div class="grid">${slips}</div>
    <script>window.onload=function(){setTimeout(function(){window.print()},300)}<\/script></body></html>`);
  w.document.close();
}

const FACE_PILL = {
  none: ["pill-off", "Not registered"],
  pending: ["pill-warn", "Waiting for approval"],
  approved: ["pill-ok", "Approved"],
  rejected: ["pill-bad", "Rejected"],
};

const FACE_MODES = [
  ["full", "Full", "Each student registers their face once and you approve it. The face is matched at the start of every exam and every minute during it."],
  ["start", "Face at start", "Each student registers their face once (approved automatically). The face is matched when they start each exam. During the exam the camera only shows the student their own picture: no face or phone detection, no photos. Only the microphone (talking/noise) and screen rules give warnings."],
  ["easy", "Easy", "One face photo at registration, approved automatically. No face matching during exams."],
  ["off", "Off", "No face registration or matching. Students only enter their code (and their name if the code is blank). Camera checks during the exam still follow each exam's strictness setting."],
  ["mic", "Microphone only", "No face and no camera at all. Only the microphone (talking/noise) and screen rules (leaving the page, screenshots) are checked. Lightest on slow networks."],
];

// Exam Room-wide face registration setting (exam_settings.face_mode).
function FaceModeCard() {
  const [faceMode, setFaceMode] = useState(null);
  const [error, setError] = useState("");
  const [saved, setSaved] = useState("");
  useEffect(() => {
    supabase.from("exam_settings").select("face_mode").eq("id", 1).maybeSingle()
      .then(({ data, error: err }) => { if (err) setError(adminDbMessage(err)); else setFaceMode(data?.face_mode || "full"); });
  }, []);
  async function choose(m) {
    if (m === faceMode) return;
    setError(""); setSaved("");
    const { error: err } = await supabase.from("exam_settings").upsert({ id: 1, face_mode: m, updated_at: new Date().toISOString() });
    if (err) setError(adminDbMessage(err)); else { setFaceMode(m); setSaved(`Saved: face registration is now ${FACE_MODES.find(x => x[0] === m)[1]}.`); }
  }
  return (
    <section className="card">
      <h2 style={{ fontSize: 16, marginTop: 0 }}><ScanFace size={17} /> Face registration</h2>
      {error ? <div className="banner banner-bad">{error}</div> : faceMode === null ? <Spinner /> : (
        <div style={{ display: "flex", flexDirection: "column", gap: 8 }}>
          {FACE_MODES.map(([id, label, text]) => (
            <label key={id} className="toggle-row" style={{ alignItems: "flex-start" }}>
              <input type="radio" name="face-mode" checked={faceMode === id} onChange={() => choose(id)} style={{ marginTop: 3 }} />
              <span><strong>{label}</strong> — <span className="muted">{text}</span></span>
            </label>
          ))}
          <p className="faint" style={{ fontSize: 12.5, margin: 0 }}>Applies to all students straight away, including exams already open. Students who are mid-exam are not affected until they next start an exam.</p>
          {saved && <div className="banner banner-ok">{saved}</div>}
        </div>
      )}
    </section>
  );
}

// Android phones / Windows laptops must use the Nursing Exam Room apps (screenshots, recording and screen sharing blocked).
function AppRequiredCard() {
  const [cfg, setCfg] = useState(null);
  const [error, setError] = useState("");
  useEffect(() => {
    supabase.from("exam_settings").select("require_app, require_desktop_app").eq("id", 1).maybeSingle()
      .then(({ data, error: err }) => { if (err) setError(adminDbMessage(err)); else setCfg({ require_app: !!data?.require_app, require_desktop_app: !!data?.require_desktop_app }); });
  }, []);
  async function toggle(key, v) {
    setError("");
    const { error: err } = await supabase.from("exam_settings").upsert({ id: 1, [key]: v, updated_at: new Date().toISOString() });
    if (err) setError(adminDbMessage(err)); else setCfg(c => ({ ...c, [key]: v }));
  }
  return (
    <section className="card">
      <h2 style={{ fontSize: 16, marginTop: 0 }}><Smartphone size={17} /> Exam apps</h2>
      <p className="muted" style={{ marginTop: 0 }}>Inside the Nursing Exam Room apps, screenshots, screen recording and screen sharing are blocked.</p>
      {error ? <div className="banner banner-bad">{error}</div> : cfg === null ? <Spinner /> : (
        <div style={{ display: "flex", flexDirection: "column", gap: 8 }}>
          <label className="toggle-row">
            <input type="checkbox" checked={cfg.require_desktop_app} onChange={e => toggle("require_desktop_app", e.target.checked)} />
            <span><strong>Windows laptops must use the app</strong> — <span className="muted">students on Windows can only start exams inside the Windows app.</span></span>
          </label>
          <label className="toggle-row">
            <input type="checkbox" checked={cfg.require_app} onChange={e => toggle("require_app", e.target.checked)} />
            <span><strong>Android phones must use the app</strong> — <span className="muted">students on Android can only start exams inside the Android app.</span></span>
          </label>
          <p className="faint" style={{ fontSize: 12.5, margin: 0 }}>iPhones, iPads and Mac laptops still use the website. Turn these on before an exam starts.</p>
        </div>
      )}
      <p style={{ fontSize: 13.5, marginBottom: 4 }}>Windows app: <a href={DESKTOP_DOWNLOAD_URL}>{DESKTOP_DOWNLOAD_URL}</a></p>
      <p style={{ fontSize: 13.5, margin: 0 }}>Android app: <a href={APP_DOWNLOAD_URL}>{APP_DOWNLOAD_URL}</a></p>
    </section>
  );
}

// Council Exams: one code per student covers Paper 1, Paper 2 and the OSCE.
// One tap makes council codes for every Critical Care student (same names).
function CouncilCard({ rows, onCreated }) {
  const [ccn, setCcn] = useState(null);
  const [busy, setBusy] = useState(false);
  const [msg, setMsg] = useState("");
  useEffect(() => {
    supabase.from("exam_candidates").select("full_name, no_face, batch").eq("specialty", "ccn").eq("active", true).eq("name_pending", false)
      .then(({ data }) => setCcn(data || []));
  }, []);
  const have = new Set((rows || []).map(r => r.full_name.trim().toLowerCase()));
  const todo = (ccn || []).filter(c => !have.has(c.full_name.trim().toLowerCase()));
  async function createAll() {
    if (!todo.length) return;
    if (!confirm(`Create council exam codes for ${todo.length} Critical Care student${todo.length === 1 ? "" : "s"}? Each gets a new code for Paper 1, Paper 2 and the OSCE.`)) return;
    setBusy(true); setMsg("");
    try {
      const batch = `Council ${new Date().toLocaleDateString()}`;
      const made = await insertCandidates(todo.map(c => ({ full_name: c.full_name, access_code: newCode(), batch, full_access: true, no_face: !!c.no_face, specialty: "council" })));
      setMsg(`Created ${made.length} council code${made.length === 1 ? "" : "s"}. Print or share them below.`);
      onCreated(made);
    } catch (e) { setMsg(adminDbMessage(e)); }
    setBusy(false);
  }
  return (
    <section className="card" style={{ borderColor: "var(--navy)" }}>
      <h2 style={{ fontSize: 16, marginTop: 0 }}><GraduationCap size={17} /> Council Exams — Paper 1, Paper 2 and OSCE</h2>
      <p className="muted" style={{ marginTop: 0, fontSize: 14 }}>
        One code works for all three papers. After creating codes, tap <strong>Settings</strong> on a student (or <strong>Settings for all shown</strong>)
        to choose how many questions they get in each paper and how strict their security is.
      </p>
      <div className="row">
        <button className="btn btn-primary" onClick={createAll} disabled={busy || ccn === null || !todo.length}>
          {busy ? <Spinner size={16} /> : <UserPlus size={16} />} {ccn === null ? "Checking Critical Care students…" : todo.length ? `Create council codes for all ${todo.length} Critical Care students` : "Every Critical Care student already has a council code"}
        </button>
        {msg && <span className="notice">{msg}</span>}
      </div>
      <p className="faint" style={{ fontSize: 12.5, margin: "10px 0 0" }}>New students who are not in Critical Care: use “Create access codes” below (from a list of names, or blank codes).</p>
    </section>
  );
}

// The link to post in the class group: paid students type their name there and
// get their council code straight away. Students not marked as paid get nothing.
function ClaimLinkCard({ rows, onCopy, copied }) {
  const link = `${window.location.origin}/#/claim`;
  const list = (rows || []).filter(r => !r.name_pending && r.active);
  if (rows && list.length && !list.some(r => "claimable" in r)) {
    return (
      <section className="card">
        <h2 style={{ fontSize: 16, marginTop: 0 }}><Link2 size={17} /> Claim link for paid students</h2>
        <p className="muted" style={{ margin: 0, fontSize: 14 }}>The database update for the claim link hasn’t run yet. It runs by itself a minute after this change is merged; then refresh this page.</p>
      </section>
    );
  }
  const paid = list.filter(r => r.claimable);
  const collected = paid.filter(r => r.claimed_at);
  const repeat = paid.filter(r => r.claim_count > 1);
  const numbered = list.filter(r => r.exam_number);
  const numbersText = list.filter(r => r.claimable || r.exam_number).slice().sort((a, b) => a.full_name.localeCompare(b.full_name))
    .map((r, i) => `${i + 1}. ${r.full_name} — ${r.exam_number || "(no exam number yet)"}`).join("\n");
  const groupText = `Council Exams access codes (paid students only):\n1. Open ${link}\n2. Type your full name\n3. Your personal code appears straight away. It is shown ONLY ONCE, so write it down and don't share it.\n4. Type your exam number and send it.\nIf it says you're not on the list, or you lose your code, message the administrator.`;
  return (
    <section className="card">
      <h2 style={{ fontSize: 16, marginTop: 0 }}><Link2 size={17} /> Claim link for paid students</h2>
      <p className="muted" style={{ marginTop: 0, fontSize: 14 }}>
        Post this link in the class group. A student who has paid types their name and sees their code at once — <strong>only once</strong>: typing the same name again says the code was already collected. Anyone not marked <strong>Paid</strong> gets nothing.
        After getting their code, students type their <strong>exam number</strong>; it appears under their name in the list below.
      </p>
      <div className="claim-link">
        <code>{link}</code>
        <button className="btn btn-primary btn-sm" onClick={() => onCopy(link, "claim-link")}>{copied === "claim-link" ? <Check size={14} /> : <Copy size={14} />} Copy link</button>
        <button className="btn btn-ghost btn-sm" onClick={() => onCopy(groupText, "claim-text")}>{copied === "claim-text" ? <Check size={14} /> : <Copy size={14} />} Copy message for the group</button>
        {"exam_number" in (list[0] || {}) && <button className="btn btn-ghost btn-sm" onClick={() => onCopy(numbersText, "claim-numbers")}>{copied === "claim-numbers" ? <Check size={14} /> : <Hash size={14} />} Copy names and exam numbers</button>}
      </div>
      <div className="chip-row" style={{ marginTop: 10 }}>
        <span className="pill pill-ok"><BadgeCheck size={12} /> {paid.length} paid</span>
        <span className="pill">{collected.length} collected their code</span>
        <span className="pill pill-warn">{paid.length - collected.length} not yet</span>
        <span className="pill pill-ok"><Hash size={12} /> {numbered.length} sent their exam number</span>
        {repeat.length > 0 && <span className="pill pill-bad" title="You let them collect the code again. Check the face photo is the right student.">{repeat.length} collected more than once</span>}
      </div>
      <p className="faint" style={{ fontSize: 12.5, margin: "10px 0 0" }}>
        To add or remove a student, open <MoreHorizontal size={12} /> on their row → <em>Paid</em>. If a student lost their code, send it to them yourself, or use <em>Let them collect the code again</em> in the same menu. The face photo they register is the check that the right person took the code.
      </p>
    </section>
  );
}

export default function StudentsTab() {
  const [rows, setRows] = useState(null);
  const [names, setNames] = useState("");
  const [busy, setBusy] = useState(false);
  const [notice, setNotice] = useState("");
  const [loadError, setLoadError] = useState("");
  const [query, setQuery] = useState("");
  const [photo, setPhoto] = useState(null); // { name, src }
  const [copied, setCopied] = useState("");
  const [mode, setMode] = useState("names"); // names | blank
  const [count, setCount] = useState(50);
  const [batchLabel, setBatchLabel] = useState("");
  const [created, setCreated] = useState(null); // rows made by the last bulk action
  const [batchFilter, setBatchFilter] = useState("");
  const [testOnly, setTestOnly] = useState(getSpecialty() !== "council"); // new codes can take only Test Run exams until approved
  const [settingsFor, setSettingsFor] = useState(null); // students whose Settings panel is open
  const [paidNew, setPaidNew] = useState(true); // council: new names can get their code on the claim link

  const load = useCallback(async () => {
    const q = fields => supabase.from("exam_candidates").select(fields).eq("specialty", getSpecialty()).order("created_at", { ascending: false });
    let { data, error } = await q(FIELDS_CLAIM);
    if (error && /claim/.test(error.message || "")) ({ data, error } = await q(FIELDS)); // database not updated yet
    if (error && /exempt_checks|watch/.test(error.message || "")) ({ data, error } = await q(FIELDS_MID)); // database not updated yet
    if (error && /security_level|max_warnings_override|app_only/.test(error.message || "")) ({ data, error } = await q(FIELDS_BASE));
    if (error) { setLoadError(adminDbMessage(error)); setRows([]); } else { setLoadError(""); setRows(data); }
  }, []);
  useEffect(() => { load(); }, [load]);

  function flash(text) { setNotice(text); setTimeout(() => setNotice(""), 4000); }

  const parsed = useMemo(() => parseNames(names), [names]);

  async function addStudents() {
    if (!parsed.length) return;
    setBusy(true);
    try {
      const batch = batchLabel.trim();
      const claim = getSpecialty() === "council" && paidNew && rows && rows.some(r => "claimable" in r) ? { claimable: true } : {};
      const made = await insertCandidates(parsed.map(full_name => ({ full_name, access_code: newCode(), batch, full_access: !testOnly, ...claim })));
      setNames(""); setCreated(made);
      flash(`Created ${made.length} access code${made.length === 1 ? "" : "s"}.`);
    } catch (e) { flash(adminDbMessage(e)); }
    setBusy(false); load();
  }

  async function addBlank() {
    const n = Math.floor(Number(count));
    if (!(n >= 1 && n <= MAX_BLANK)) { flash(`Enter a number from 1 to ${MAX_BLANK}.`); return; }
    setBusy(true);
    try {
      const batch = batchLabel.trim() || `Batch ${new Date().toLocaleDateString()}`;
      const start = (rows || []).filter(r => r.batch === batch).length;
      const list = Array.from({ length: n }, (_, i) => ({
        full_name: `Unassigned ${batch} #${String(start + i + 1).padStart(3, "0")}`,
        access_code: newCode(), name_pending: true, batch, full_access: !testOnly,
      }));
      const made = await insertCandidates(list);
      setCreated(made); setBatchFilter(batch);
      flash(`Created ${made.length} blank code${made.length === 1 ? "" : "s"} in “${batch}”.`);
    } catch (e) { flash(adminDbMessage(e)); }
    setBusy(false); load();
  }

  async function removeUnused(list) {
    const ids = list.filter(r => r.name_pending && r.face_status === "none").map(r => r.id);
    if (!ids.length) { flash("No unused blank codes in this view."); return; }
    if (!confirm(`Delete ${ids.length} unused blank code${ids.length === 1 ? "" : "s"}? Codes already used by a student are kept.`)) return;
    for (let i = 0; i < ids.length; i += 200) {
      const { error } = await supabase.from("exam_candidates").delete().in("id", ids.slice(i, i + 200)).eq("name_pending", true).eq("face_status", "none");
      if (error) { flash(error.message); return; }
    }
    flash(`Deleted ${ids.length} unused code${ids.length === 1 ? "" : "s"}.`); load();
  }

  async function update(id, patch, message) {
    const { error } = await supabase.from("exam_candidates").update(patch).eq("id", id);
    if (error) flash(error.message); else { if (message) flash(message); load(); }
  }

  async function approveAll() {
    if (!confirm(`Approve all ${pending} waiting face registration${pending === 1 ? "" : "s"} without checking each photo?`)) return;
    const { error } = await supabase.from("exam_candidates").update({ face_status: "approved" }).eq("face_status", "pending");
    if (error) flash(adminDbMessage(error)); else { flash(`Approved ${pending} student${pending === 1 ? "" : "s"}.`); load(); }
  }

  async function giveAllFull() {
    const ids = (rows || []).filter(r => r.full_access === false && !r.name_pending).map(r => r.id);
    if (!ids.length) return;
    if (!confirm(`Give full access to all ${ids.length} student${ids.length === 1 ? "" : "s"} on Test Run only? They will see all the full mock exams.`)) return;
    for (let i = 0; i < ids.length; i += 200) {
      const { error } = await supabase.from("exam_candidates").update({ full_access: true }).in("id", ids.slice(i, i + 200));
      if (error) { flash(adminDbMessage(error)); return; }
    }
    flash(`${ids.length} student${ids.length === 1 ? " now has" : "s now have"} full access to all exams.`); load();
  }

  async function viewPhoto(row) {
    const { data } = await supabase.from("exam_candidates").select("face_photo").eq("id", row.id).maybeSingle();
    setPhoto({ name: row.full_name, src: data?.face_photo || null, row });
  }

  async function remove(row) {
    if (!confirm(`Delete ${row.name_pending ? `code ${row.access_code}` : row.full_name} and all their exam records? This can't be undone.`)) return;
    const { error } = await supabase.from("exam_candidates").delete().eq("id", row.id);
    if (error) flash(error.message); else load();
  }

  async function copy(text, key) {
    try { await navigator.clipboard.writeText(text); setCopied(key); setTimeout(() => setCopied(""), 1500); }
    catch (e) { prompt("Copy this:", text); }
  }

  const batches = useMemo(() => [...new Set((rows || []).map(r => r.batch).filter(Boolean))].sort(), [rows]);
  const filtered = useMemo(() => (rows || []).filter(r =>
    (!batchFilter || r.batch === batchFilter) &&
    (!query || r.full_name.toLowerCase().includes(query.toLowerCase()) || r.access_code.includes(query.toUpperCase()) || (r.exam_number || "").includes(query.toUpperCase()))), [rows, query, batchFilter]);
  const listText = list => list.map(r => `${r.name_pending ? "(blank)" : r.full_name} — ${r.access_code}`).join("\n") + `\n\nExam site: ${site}`;
  const stamp = () => new Date().toISOString().slice(0, 10);
  const pending = (rows || []).filter(r => r.face_status === "pending").length;
  const waitingFull = (rows || []).filter(r => r.full_access === false && !r.name_pending).length;
  const site = window.location.origin;

  return (
    <div style={{ display: "flex", flexDirection: "column", gap: 16 }}>
      {getSpecialty() === "council" && <ClaimLinkCard rows={rows} onCopy={copy} copied={copied} />}
      <FaceModeCard />
      <AppRequiredCard />
      {getSpecialty() === "council" && <CouncilCard rows={rows} onCreated={made => { setCreated(made); load(); }} />}
      <section className="card">
        <h2 style={{ fontSize: 16, marginTop: 0 }}><UserPlus size={17} /> Create access codes — {specialtyLabel(getSpecialty())}</h2>
        <div className="row" style={{ gap: 6, marginBottom: 12 }} role="tablist">
          <button role="tab" aria-selected={mode === "names"} className={`btn btn-sm ${mode === "names" ? "btn-primary" : "btn-ghost"}`} onClick={() => setMode("names")}>From a list of names</button>
          <button role="tab" aria-selected={mode === "blank"} className={`btn btn-sm ${mode === "blank" ? "btn-primary" : "btn-ghost"}`} onClick={() => setMode("blank")}>Blank codes (no names)</button>
        </div>
        {mode === "names" ? (<>
          <p className="muted" style={{ marginTop: 0, fontSize: 14 }}>
            Paste your class list: one name per line. You can paste straight from Excel, Word or WhatsApp; numbers like “1.” are removed automatically.
          </p>
          <textarea rows={6} value={names} onChange={e => setNames(e.target.value)} placeholder={"1. Ada Obi\n2. Bola Adeyemi\n3. Musa Ibrahim"} />
        </>) : (<>
          <p className="muted" style={{ marginTop: 0, fontSize: 14 }}>
            Make many codes at once without typing names. Each student types their own full name when they register their face,
            and it appears here for you to check when you approve them.
          </p>
          <div className="field" style={{ maxWidth: 220 }}>
            <label htmlFor="blank-count">How many codes? (1–{MAX_BLANK})</label>
            <input id="blank-count" type="number" min={1} max={MAX_BLANK} value={count} onChange={e => setCount(e.target.value)} />
          </div>
        </>)}
        <div className="field" style={{ maxWidth: 320, marginTop: 10 }}>
          <label htmlFor="batch-label"><Layers size={11} /> Group label (optional)</label>
          <input id="batch-label" value={batchLabel} onChange={e => setBatchLabel(e.target.value)} placeholder="e.g. 2026 Set A" maxLength={40} />
        </div>
        <label className="row" style={{ gap: 8, marginTop: 10, fontSize: 14, alignItems: "flex-start", cursor: "pointer" }}>
          <input type="checkbox" checked={testOnly} onChange={e => setTestOnly(e.target.checked)} style={{ marginTop: 3 }} />
          <span><strong>Test Run only</strong> — these students can take only the Test Run until you tap <em>Give full access</em> in the list below.</span>
        </label>
        {getSpecialty() === "council" && mode === "names" && (
          <label className="row" style={{ gap: 8, marginTop: 8, fontSize: 14, alignItems: "flex-start", cursor: "pointer" }}>
            <input type="checkbox" checked={paidNew} onChange={e => setPaidNew(e.target.checked)} style={{ marginTop: 3 }} />
            <span><strong>Paid</strong> — these students can get their code by typing their name on the claim link.</span>
          </label>
        )}
        <div className="row" style={{ marginTop: 12 }}>
          {mode === "names" ? (
            <button className="btn btn-primary" onClick={addStudents} disabled={busy || !parsed.length}>
              {busy ? <Spinner size={16} /> : <UserPlus size={16} />} Create {parsed.length || ""} access code{parsed.length === 1 ? "" : "s"}
            </button>
          ) : (
            <button className="btn btn-primary" onClick={addBlank} disabled={busy}>
              {busy ? <Spinner size={16} /> : <UserPlus size={16} />} Generate {Number(count) || ""} blank code{Number(count) === 1 ? "" : "s"}
            </button>
          )}
          {notice && <span className="notice">{notice}</span>}
        </div>

        {created && created.length > 0 && (
          <div className="banner banner-ok" style={{ marginTop: 14, display: "flex", flexDirection: "column", gap: 8 }}>
            <strong>{created.length} new code{created.length === 1 ? "" : "s"} ready. Share them now:</strong>
            <div className="row" style={{ gap: 6 }}>
              <button className="btn btn-sm btn-primary" onClick={() => printSlips(created, site)}><Printer size={14} /> Print slips</button>
              <button className="btn btn-sm btn-ghost" onClick={() => downloadCsv(created, site, `access-codes-${stamp()}.csv`)}><Download size={14} /> Download for Excel</button>
              <button className="btn btn-sm btn-ghost" onClick={() => copy(listText(created), "created")}>
                {copied === "created" ? <Check size={14} /> : <Copy size={14} />} Copy list
              </button>
              <button className="btn btn-sm btn-ghost" onClick={() => setCreated(null)}><X size={14} /> Done</button>
            </div>
          </div>
        )}
      </section>

      {loadError && <div className="banner banner-bad">{loadError}</div>}
      {waitingFull > 0 && <div className="banner banner-warn row" style={{ gap: 10 }}>
        <span>{waitingFull} student{waitingFull === 1 ? " is" : "s are"} on <strong>Test Run only</strong> — they can take only the 5-question Test Run and won’t see the full mock exams. When a student is ready, tap <strong>Give full access</strong> next to their name, or give it to all of them at once.</span>
        <span className="spacer" />
        <button className="btn btn-sm btn-success" onClick={giveAllFull}><CheckCircle2 size={13} /> Give full access to all {waitingFull}</button>
      </div>}
      {pending > 0 && <div className="banner banner-warn row" style={{ gap: 10 }}>
        <span>{pending} face registration{pending === 1 ? "" : "s"} waiting for your approval. Tap “Photo” to check and approve, or approve them all at once.</span>
        <span className="spacer" />
        <button className="btn btn-sm btn-success" onClick={approveAll}><Check size={13} /> Approve all ({pending})</button>
      </div>}

      <section>
        <div className="row" style={{ marginBottom: 10 }}>
          <h2 style={{ fontSize: 16, margin: 0 }}>Students ({rows ? (filtered.length === rows.length ? rows.length : `${filtered.length} of ${rows.length}`) : "…"})</h2>
          <span className="spacer" />
          <div className="field" style={{ flexDirection: "row", alignItems: "center", gap: 6 }}>
            <Search size={14} />
            <input placeholder="Search name, code or exam no." value={query} onChange={e => setQuery(e.target.value)} style={{ maxWidth: 200 }} />
          </div>
          {batches.length > 0 && (
            <select aria-label="Filter by group" value={batchFilter} onChange={e => setBatchFilter(e.target.value)} style={{ maxWidth: 180 }}>
              <option value="">All groups</option>
              {batches.map(b => <option key={b} value={b}>{b}</option>)}
            </select>
          )}
          <button className="btn btn-primary btn-sm" disabled={!filtered.length} onClick={() => setSettingsFor(filtered)}>
            <SlidersHorizontal size={14} /> Settings for all shown ({filtered.length})
          </button>
          <button className="btn btn-ghost btn-sm" disabled={!filtered.length} onClick={() => copy(listText(filtered), "all")}>
            {copied === "all" ? <Check size={14} /> : <Copy size={14} />} Copy list
          </button>
          <button className="btn btn-ghost btn-sm" disabled={!filtered.length} onClick={() => downloadCsv(filtered, site, `access-codes-${stamp()}.csv`)}>
            <Download size={14} /> Excel
          </button>
          <button className="btn btn-ghost btn-sm" disabled={!filtered.length} onClick={() => printSlips(filtered, site)}>
            <Printer size={14} /> Print slips
          </button>
          {filtered.some(r => r.name_pending && r.face_status === "none") && (
            <button className="btn btn-ghost btn-sm" onClick={() => removeUnused(filtered)}><Trash2 size={14} /> Delete unused blank codes</button>
          )}
        </div>
        {!rows ? <Spinner /> : (
          <div className="table-wrap">
            <table className="data stack">
              <thead><tr><th>Name</th><th>Access code</th><th>Face</th><th>Status</th><th>Actions</th></tr></thead>
              <tbody>
                {filtered.map(r => {
                  const [cls, label] = FACE_PILL[r.face_status];
                  return (
                    <tr key={r.id}>
                      <td>
                        <button className="name-link" title="Open this student's own rules" onClick={() => setSettingsFor([r])}>
                          {r.name_pending ? <span className="muted">Not used yet</span> : r.full_name}
                        </button>
                        {(r.watch || (r.exempt_checks || []).length > 0) && (
                          <div className="chip-row">
                            {r.watch && <span className="pill pill-bad"><Eye size={11} /> Watch closely</span>}
                            {(r.exempt_checks || []).map(k => <span key={k} className="pill pill-ok"><Moon size={11} /> {exemptLabel(k)} OK</span>)}
                          </div>
                        )}
                        {r.exam_number && <div className="exam-no"><Hash size={11} /> Exam no. <strong className="num">{r.exam_number}</strong></div>}
                        {r.batch && <div className="faint" style={{ fontSize: 12 }}>{r.batch}</div>}
                      </td>
                      <td data-label="Access code">
                        <button className="btn btn-sm btn-ghost num" style={{ letterSpacing: "0.12em" }}
                          onClick={() => copy(`${r.name_pending ? "Your" : `${r.full_name}, your`} exam access code is ${r.access_code}. Open ${site}, enter the code${r.no_face ? (r.name_pending ? " and your full name" : "") : ` and register your face${r.name_pending ? " and full name" : ""}`}. Don't share this code.`, r.id)}>
                          {r.access_code} {copied === r.id ? <Check size={13} /> : <Copy size={13} />}
                        </button>
                      </td>
                      <td data-label="Face"><span className={`pill ${cls}`}>{label}</span></td>
                      <td data-label="Status">
                        <div className="chip-row" style={{ marginTop: 0 }}>
                        {r.active ? <span className="pill pill-ok">Active</span> : <span className="pill pill-bad">Disabled</span>}
                        {r.claimable && <div><span className="pill pill-ok" style={{ marginTop: 4 }} title={r.claimed_at ? `Collected ${new Date(r.claimed_at).toLocaleString()}` : "Not collected yet"}><BadgeCheck size={12} /> Paid{r.claimed_at ? ` · code collected${r.claim_count > 1 ? ` (${r.claim_count}×)` : ""}` : r.claim_count > 0 ? " · can collect again" : ""}</span></div>}
                        {r.anytime && <div><span className="pill pill-warn" style={{ marginTop: 4 }}><Clock size={12} /> Anytime</span></div>}
                        {r.full_access === false && <div><span className="pill pill-warn" style={{ marginTop: 4 }}>Test Run only</span></div>}
                        {r.no_face && <div><span className="pill" style={{ marginTop: 4 }}><ScanFace size={12} /> No face check</span></div>}
                        {r.security_level && <div><span className={`pill ${r.security_level === "maximum" ? "pill-bad" : "pill-warn"}`} style={{ marginTop: 4 }}>{r.security_level === "maximum" ? <ShieldAlert size={12} /> : <Shield size={12} />} {securityLabel(r.security_level)}</span></div>}
                        {r.max_warnings_override != null && <div><span className="pill pill-warn" style={{ marginTop: 4 }}>{r.max_warnings_override} warning{r.max_warnings_override === 1 ? "" : "s"} max</span></div>}
                        {r.app_only && <div><span className="pill pill-warn" style={{ marginTop: 4 }}><Smartphone size={12} /> App only</span></div>}
                        </div>
                      </td>
                      <td className="cell-actions">
                        <div className="actions">
                          <button className="btn btn-sm btn-primary" title="This student's own rules: security, checks, warning limit, questions" onClick={() => setSettingsFor([r])}><SlidersHorizontal size={13} /> Rules</button>
                          {r.face_status === "pending" && <>
                            <button className="btn btn-sm btn-success" onClick={() => update(r.id, { face_status: "approved" }, `Approved ${r.full_name}.`)}><Check size={13} /> Approve</button>
                            <button className="btn btn-sm btn-ghost" onClick={() => update(r.id, { face_status: "rejected" }, `Rejected ${r.full_name}. They can register again.`)}><X size={13} /> Reject</button>
                          </>}
                          {r.full_access === false && <button className="btn btn-sm btn-success" onClick={() => update(r.id, { full_access: true }, `${r.full_name || "This student"} now has full access to all exams.`)}><CheckCircle2 size={13} /> Give full access</button>}
                          {r.face_status !== "none" && <button className="btn btn-sm btn-ghost" onClick={() => viewPhoto(r)}><Image size={13} /> Photo</button>}
                          <MoreMenu ariaLabel={`More actions for ${r.full_name}`} icon={<MoreHorizontal size={15} />}>
                              <button onClick={() => update(r.id, { no_face: !r.no_face }, r.no_face ? `${r.full_name || "This student"} must now register and match their face.` : `${r.full_name || "This student"} no longer needs face registration or face checks.`)}>
                                <ScanFace size={15} /> {r.no_face ? "Turn face check back on" : "No face check for this student"}
                              </button>
                              {(r.face_status === "approved" || r.face_status === "rejected") &&
                                <button onClick={() => confirm(`Reset ${r.full_name}'s face? They must register again before their next exam.`) && update(r.id, { face_status: "none", face_descriptor: null, face_photo: null }, "Face reset.")}>
                                  <RotateCcw size={15} /> Reset face
                                </button>}
                              <button onClick={() => update(r.id, { anytime: !r.anytime }, r.anytime ? `${r.full_name || "This student"} now follows the normal exam times.` : `${r.full_name || "This student"} can now take every exam at any time.`)}>
                                <Clock size={15} /> {r.anytime ? "Back to normal exam times" : "Anytime access (all exams, any time)"}
                              </button>
                              {r.full_access !== false && <button onClick={() => confirm(`Limit ${r.full_name || "this student"} to the Test Run only?`) && update(r.id, { full_access: false }, `${r.full_name || "This student"} can now take only the Test Run.`)}>
                                <Layers size={15} /> Test Run only
                              </button>}
                              {"claimable" in r && !r.name_pending && <button onClick={() => update(r.id, { claimable: !r.claimable }, r.claimable ? `${r.full_name} removed from the paid list — the claim link no longer shows their code.` : `${r.full_name} marked as paid — they can get their code on the claim link.`)}>
                                <BadgeCheck size={15} /> {r.claimable ? "Remove from paid list" : "Paid — can get code by name"}
                              </button>}
                              {r.claimable && r.claimed_at && <button onClick={() => confirm(`Let ${r.full_name} collect their code on the claim link one more time?`) && update(r.id, { claimed_at: null }, `${r.full_name} can collect their code on the claim link once more.`)}>
                                <RotateCcw size={15} /> Let them collect the code again
                              </button>}
                              <hr />
                              <button onClick={() => update(r.id, { active: !r.active }, r.active ? "Code disabled — any exam in progress will end." : "Code enabled.")}>
                                {r.active ? <><Ban size={15} /> Disable code</> : <><CheckCircle2 size={15} /> Enable code</>}
                              </button>
                              <button className="danger" onClick={() => remove(r)}><Trash2 size={15} /> Delete student</button>
                            </MoreMenu>
                        </div>
                      </td>
                    </tr>
                  );
                })}
                {filtered.length === 0 && <tr><td colSpan={5} className="muted">No students here yet.</td></tr>}
              </tbody>
            </table>
          </div>
        )}
      </section>

      {settingsFor && <StudentSettings students={settingsFor} onClose={() => setSettingsFor(null)}
        onSaved={msg => { setSettingsFor(null); flash(msg); load(); }} />}

      {photo && (
        <div className="overlay" role="dialog" aria-modal="true" onClick={() => setPhoto(null)}>
          <div className="card" onClick={e => e.stopPropagation()}>
            <h2 style={{ fontSize: 17, marginTop: 0 }}>{photo.name}</h2>
            {photo.src ? <img src={photo.src} alt={`Registered face of ${photo.name}`} style={{ width: "100%", borderRadius: 12 }} /> : <p className="muted">No photo.</p>}
            <p className="muted" style={{ fontSize: 13 }}>Approve only if this is clearly the student, alone, with their face fully visible.</p>
            <div className="row" style={{ justifyContent: "flex-end" }}>
              {photo.row.face_status === "pending" && <>
                <button className="btn btn-ghost" onClick={() => { update(photo.row.id, { face_status: "rejected" }, "Rejected."); setPhoto(null); }}>Reject</button>
                <button className="btn btn-success" onClick={() => { update(photo.row.id, { face_status: "approved" }, `Approved ${photo.name}.`); setPhoto(null); }}>Approve</button>
              </>}
              <button className="btn btn-primary" onClick={() => setPhoto(null)}>Close</button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
}
