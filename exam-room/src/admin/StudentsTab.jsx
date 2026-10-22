import { useCallback, useEffect, useMemo, useState } from "react";
import { UserPlus, Copy, Check, X, RotateCcw, Ban, CheckCircle2, Trash2, Search, Image, Download, Printer, Layers } from "lucide-react";
import { supabase } from "../lib/supabase.js";
import { adminDbMessage } from "../lib/api.js";
import { Spinner } from "../ui.jsx";

// No look-alike characters (0/O, 1/I/L), so codes are easy to read out.
const ALPHABET = "ABCDEFGHJKMNPQRSTUVWXYZ23456789";
export function newCode(length = 8) {
  const bytes = new Uint32Array(length);
  crypto.getRandomValues(bytes);
  return Array.from(bytes, b => ALPHABET[b % ALPHABET.length]).join("");
}

const FIELDS = "id, full_name, access_code, face_status, active, enrolled_at, created_at, name_pending, batch";
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
      const { data, error } = await supabase.from("exam_candidates").insert(chunk).select(FIELDS);
      if (!error) { created.push(...data); break; }
      if (error.code !== "23505" || tries >= 4) throw new Error(error.message);
      chunk = chunk.map(r => ({ ...r, access_code: newCode() }));
    }
  }
  return created;
}

function csvCell(v) { const t = String(v ?? ""); return /[",\n]/.test(t) ? `"${t.replace(/"/g, '""')}"` : t; }

function downloadCsv(list, site, filename) {
  const lines = [["Name", "Access code", "Batch", "Face", "Exam site"],
    ...list.map(r => [r.name_pending ? "" : r.full_name, r.access_code, r.batch, r.face_status, site])];
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
    <div class="t">CCN Exam Room</div>
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

  const load = useCallback(async () => {
    const { data, error } = await supabase
      .from("exam_candidates")
      .select(FIELDS)
      .order("created_at", { ascending: false });
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
      const rows = await insertCandidates(parsed.map(full_name => ({ full_name, access_code: newCode(), batch })));
      setNames(""); setCreated(rows);
      flash(`Created ${rows.length} access code${rows.length === 1 ? "" : "s"}.`);
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
        access_code: newCode(), name_pending: true, batch,
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
    (!query || r.full_name.toLowerCase().includes(query.toLowerCase()) || r.access_code.includes(query.toUpperCase()))), [rows, query, batchFilter]);
  const listText = list => list.map(r => `${r.name_pending ? "(blank)" : r.full_name} — ${r.access_code}`).join("\n") + `\n\nExam site: ${site}`;
  const stamp = () => new Date().toISOString().slice(0, 10);
  const pending = (rows || []).filter(r => r.face_status === "pending").length;
  const site = window.location.origin;

  return (
    <div style={{ display: "flex", flexDirection: "column", gap: 16 }}>
      <section className="card">
        <h2 style={{ fontSize: 16, marginTop: 0 }}><UserPlus size={17} /> Create access codes</h2>
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
      {pending > 0 && <div className="banner banner-warn">{pending} face registration{pending === 1 ? "" : "s"} waiting for your approval. Tap “Photo” to check and approve.</div>}

      <section>
        <div className="row" style={{ marginBottom: 10 }}>
          <h2 style={{ fontSize: 16, margin: 0 }}>Students ({rows ? (filtered.length === rows.length ? rows.length : `${filtered.length} of ${rows.length}`) : "…"})</h2>
          <span className="spacer" />
          <div className="field" style={{ flexDirection: "row", alignItems: "center", gap: 6 }}>
            <Search size={14} />
            <input placeholder="Search name or code" value={query} onChange={e => setQuery(e.target.value)} style={{ maxWidth: 200 }} />
          </div>
          {batches.length > 0 && (
            <select aria-label="Filter by group" value={batchFilter} onChange={e => setBatchFilter(e.target.value)} style={{ maxWidth: 180 }}>
              <option value="">All groups</option>
              {batches.map(b => <option key={b} value={b}>{b}</option>)}
            </select>
          )}
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
            <table className="data">
              <thead><tr><th>Name</th><th>Access code</th><th>Face</th><th>Status</th><th>Actions</th></tr></thead>
              <tbody>
                {filtered.map(r => {
                  const [cls, label] = FACE_PILL[r.face_status];
                  return (
                    <tr key={r.id}>
                      <td>
                        {r.name_pending ? <span className="muted">Not used yet</span> : <strong>{r.full_name}</strong>}
                        {r.batch && <div className="faint" style={{ fontSize: 12 }}>{r.batch}</div>}
                      </td>
                      <td>
                        <button className="btn btn-sm btn-ghost num" style={{ letterSpacing: "0.12em" }}
                          onClick={() => copy(`${r.name_pending ? "Your" : `${r.full_name}, your`} CCN exam access code is ${r.access_code}. Open ${site}, enter the code and register your face${r.name_pending ? " and full name" : ""}. Don't share this code.`, r.id)}>
                          {r.access_code} {copied === r.id ? <Check size={13} /> : <Copy size={13} />}
                        </button>
                      </td>
                      <td><span className={`pill ${cls}`}>{label}</span></td>
                      <td>{r.active ? <span className="pill pill-ok">Active</span> : <span className="pill pill-bad">Disabled</span>}</td>
                      <td>
                        <div className="row" style={{ gap: 6 }}>
                          {r.face_status !== "none" && <button className="btn btn-sm btn-ghost" onClick={() => viewPhoto(r)}><Image size={13} /> Photo</button>}
                          {r.face_status === "pending" && <>
                            <button className="btn btn-sm btn-success" onClick={() => update(r.id, { face_status: "approved" }, `Approved ${r.full_name}.`)}><Check size={13} /> Approve</button>
                            <button className="btn btn-sm btn-ghost" onClick={() => update(r.id, { face_status: "rejected" }, `Rejected ${r.full_name}. They can register again.`)}><X size={13} /> Reject</button>
                          </>}
                          {(r.face_status === "approved" || r.face_status === "rejected") &&
                            <button className="btn btn-sm btn-ghost" onClick={() => confirm(`Reset ${r.full_name}'s face? They must register again before their next exam.`) && update(r.id, { face_status: "none", face_descriptor: null, face_photo: null }, "Face reset.")}>
                              <RotateCcw size={13} /> Reset face
                            </button>}
                          <button className="btn btn-sm btn-ghost" onClick={() => update(r.id, { active: !r.active }, r.active ? "Code disabled — any exam in progress will end." : "Code enabled.")}>
                            {r.active ? <><Ban size={13} /> Disable</> : <><CheckCircle2 size={13} /> Enable</>}
                          </button>
                          <button className="btn btn-sm btn-ghost" aria-label={`Delete ${r.full_name}`} onClick={() => remove(r)}><Trash2 size={13} /></button>
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
