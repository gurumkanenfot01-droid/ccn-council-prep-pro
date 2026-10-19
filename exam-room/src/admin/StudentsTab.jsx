import { useCallback, useEffect, useMemo, useState } from "react";
import { UserPlus, Copy, Check, X, RotateCcw, Ban, CheckCircle2, Trash2, Search, Image } from "lucide-react";
import { supabase } from "../lib/supabase.js";
import { Spinner } from "../ui.jsx";

// No look-alike characters (0/O, 1/I/L), so codes are easy to read out.
const ALPHABET = "ABCDEFGHJKMNPQRSTUVWXYZ23456789";
export function newCode(length = 8) {
  const bytes = new Uint32Array(length);
  crypto.getRandomValues(bytes);
  return Array.from(bytes, b => ALPHABET[b % ALPHABET.length]).join("");
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
  const [query, setQuery] = useState("");
  const [photo, setPhoto] = useState(null); // { name, src }
  const [copied, setCopied] = useState("");

  const load = useCallback(async () => {
    const { data, error } = await supabase
      .from("exam_candidates")
      .select("id, full_name, access_code, face_status, active, enrolled_at, created_at")
      .order("created_at", { ascending: false });
    if (error) setNotice(error.message); else setRows(data);
  }, []);
  useEffect(() => { load(); }, [load]);

  function flash(text) { setNotice(text); setTimeout(() => setNotice(""), 4000); }

  async function addStudents() {
    const list = names.split("\n").map(n => n.trim()).filter(Boolean);
    if (!list.length) return;
    setBusy(true);
    let added = 0;
    for (const full_name of list) {
      for (let tries = 0; tries < 5; tries++) {
        const { error } = await supabase.from("exam_candidates").insert({ full_name, access_code: newCode() });
        if (!error) { added++; break; }
        if (error.code !== "23505") { flash(error.message); break; } // 23505 = code already used, try another
      }
    }
    setNames(""); setBusy(false);
    flash(`Added ${added} student${added === 1 ? "" : "s"} with new access codes.`);
    load();
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
    if (!confirm(`Delete ${row.full_name} and all their exam records? This can't be undone.`)) return;
    const { error } = await supabase.from("exam_candidates").delete().eq("id", row.id);
    if (error) flash(error.message); else load();
  }

  async function copy(text, key) {
    try { await navigator.clipboard.writeText(text); setCopied(key); setTimeout(() => setCopied(""), 1500); }
    catch (e) { prompt("Copy this:", text); }
  }

  const filtered = useMemo(() => (rows || []).filter(r =>
    !query || r.full_name.toLowerCase().includes(query.toLowerCase()) || r.access_code.includes(query.toUpperCase())), [rows, query]);
  const pending = (rows || []).filter(r => r.face_status === "pending").length;
  const site = window.location.origin;

  return (
    <div style={{ display: "flex", flexDirection: "column", gap: 16 }}>
      <section className="card">
        <h2 style={{ fontSize: 16, marginTop: 0 }}><UserPlus size={17} /> Add students</h2>
        <p className="muted" style={{ marginTop: 0, fontSize: 14 }}>One full name per line. Each student gets their own access code.</p>
        <textarea rows={4} value={names} onChange={e => setNames(e.target.value)} placeholder={"Ada Obi\nBola Adeyemi"} />
        <div className="row" style={{ marginTop: 10 }}>
          <button className="btn btn-primary" onClick={addStudents} disabled={busy || !names.trim()}>
            {busy ? <Spinner size={16} /> : <UserPlus size={16} />} Create access codes
          </button>
          {notice && <span className="notice">{notice}</span>}
        </div>
      </section>

      {pending > 0 && <div className="banner banner-warn">{pending} face registration{pending === 1 ? "" : "s"} waiting for your approval. Tap “Photo” to check and approve.</div>}

      <section>
        <div className="row" style={{ marginBottom: 10 }}>
          <h2 style={{ fontSize: 16, margin: 0 }}>Students ({rows ? rows.length : "…"})</h2>
          <span className="spacer" />
          <div className="field" style={{ flexDirection: "row", alignItems: "center", gap: 6 }}>
            <Search size={14} />
            <input placeholder="Search name or code" value={query} onChange={e => setQuery(e.target.value)} style={{ maxWidth: 200 }} />
          </div>
          <button className="btn btn-ghost btn-sm" disabled={!rows || !rows.length}
            onClick={() => copy(filtered.map(r => `${r.full_name} — ${r.access_code}`).join("\n") + `\n\nExam site: ${site}`, "all")}>
            {copied === "all" ? <Check size={14} /> : <Copy size={14} />} Copy codes list
          </button>
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
                      <td><strong>{r.full_name}</strong></td>
                      <td>
                        <button className="btn btn-sm btn-ghost num" style={{ letterSpacing: "0.12em" }}
                          onClick={() => copy(`${r.full_name}, your CCN exam access code is ${r.access_code}. Open ${site} to register your face. Don't share this code.`, r.id)}>
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
                {filtered.length === 0 && <tr><td colSpan={5} className="muted">No students yet.</td></tr>}
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
