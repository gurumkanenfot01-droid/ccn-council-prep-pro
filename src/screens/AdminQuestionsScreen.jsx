import { useEffect, useMemo, useState } from "react";
import { ClipboardList, Plus, Pencil, Trash2, Search, Upload } from "lucide-react";
import { Card, Button, Field, Modal, SectionHeader, EmptyState, Chip, useApp } from "../ui/kit.jsx";
import { supabase } from "../lib/supabase.js";

const emptyForm = { id: null, topic: "", source: "", q: "", opts: ["", "", "", ""], ansIdx: 0, exp: "", category: "", categoryIcon: "📚" };

const BULK_HEADERS = ["question", "optionA", "optionB", "optionC", "optionD", "correct", "explanation", "category", "topic", "source"];

// Minimal RFC4180 CSV parser: handles quoted fields, embedded commas/newlines, "" escapes.
function parseCsv(text) {
  const rows = [];
  let row = [];
  let field = "";
  let inQuotes = false;
  for (let i = 0; i < text.length; i++) {
    const c = text[i];
    if (inQuotes) {
      if (c === '"') {
        if (text[i + 1] === '"') { field += '"'; i++; }
        else inQuotes = false;
      } else field += c;
    } else if (c === '"') {
      inQuotes = true;
    } else if (c === ",") {
      row.push(field); field = "";
    } else if (c === "\n" || c === "\r") {
      if (c === "\r" && text[i + 1] === "\n") i++;
      row.push(field); field = "";
      if (row.some(v => v !== "")) rows.push(row);
      row = [];
    } else {
      field += c;
    }
  }
  if (field !== "" || row.length) { row.push(field); if (row.some(v => v !== "")) rows.push(row); }
  return rows;
}

function parseBulkQuestions(text) {
  const rows = parseCsv(text.trim());
  if (rows.length < 2) throw new Error("No data rows found — include a header row plus at least one question.");
  const header = rows[0].map(h => h.trim());
  const missing = BULK_HEADERS.filter(h => !["topic", "source"].includes(h) && !header.includes(h));
  if (missing.length) throw new Error(`Missing required column(s): ${missing.join(", ")}`);
  const idx = Object.fromEntries(header.map((h, i) => [h, i]));
  return rows.slice(1).map((r, i) => {
    const get = key => (idx[key] != null ? (r[idx[key]] || "").trim() : "");
    const q = get("question");
    const opts = [get("optionA"), get("optionB"), get("optionC"), get("optionD")];
    const correctRaw = get("correct").toUpperCase();
    const correctMap = { A: 0, B: 1, C: 2, D: 3, "1": 0, "2": 1, "3": 2, "4": 3 };
    const ansIdx = correctMap[correctRaw];
    const category = get("category");
    if (!q) throw new Error(`Row ${i + 2}: missing question text.`);
    if (opts.some(o => !o)) throw new Error(`Row ${i + 2}: all 4 options are required.`);
    if (ansIdx === undefined) throw new Error(`Row ${i + 2}: "correct" must be A, B, C, or D (got "${get("correct")}").`);
    if (!category) throw new Error(`Row ${i + 2}: missing category.`);
    return {
      q, opts, ansIdx, category,
      exp: get("explanation"),
      topic: get("topic") || category,
      source: get("source"),
      categoryIcon: "📚",
    };
  });
}

export default function AdminQuestionsScreen() {
  const { t } = useApp();
  const [rows, setRows] = useState([]);
  const [loading, setLoading] = useState(true);
  const [query, setQuery] = useState("");
  const [category, setCategory] = useState("All");
  const [editing, setEditing] = useState(null); // form object or null
  const [saving, setSaving] = useState(false);
  const [error, setError] = useState("");
  const [bulkOpen, setBulkOpen] = useState(false);
  const [bulkText, setBulkText] = useState("");
  const [bulkError, setBulkError] = useState("");
  const [bulkSaving, setBulkSaving] = useState(false);
  const [bulkResult, setBulkResult] = useState("");

  async function load() {
    setLoading(true);
    // Paginate past PostgREST's default 1000-row cap per request.
    const pageSize = 1000;
    let from = 0;
    let all = [];
    while (true) {
      const { data, error } = await supabase
        .from("questions")
        .select("id, topic, source, q, opts, ans_idx, exp, category, category_icon, is_active")
        .eq("is_active", true)
        .order("id")
        .range(from, from + pageSize - 1);
      if (error || !data) break;
      all = all.concat(data);
      if (data.length < pageSize) break;
      from += pageSize;
    }
    setRows(all);
    setLoading(false);
  }

  useEffect(() => { load(); }, []);

  const categories = useMemo(() => ["All", ...Array.from(new Set(rows.map(r => r.category))).sort()], [rows]);
  const filtered = useMemo(() => {
    return rows.filter(r => {
      if (category !== "All" && r.category !== category) return false;
      if (query.length >= 2 && !r.q.toLowerCase().includes(query.toLowerCase())) return false;
      return true;
    });
  }, [rows, category, query]);

  function openAdd() {
    const nextId = rows.reduce((m, r) => Math.max(m, r.id), 1797) + 1;
    setEditing({ ...emptyForm, id: nextId });
    setError("");
  }

  function openEdit(row) {
    setEditing({
      id: row.id, topic: row.topic || "", source: row.source || "", q: row.q,
      opts: [...row.opts], ansIdx: row.ans_idx, exp: row.exp || "",
      category: row.category || "", categoryIcon: row.category_icon || "📚",
    });
    setError("");
  }

  async function save() {
    if (!editing.q.trim() || editing.opts.some(o => !o.trim()) || !editing.category.trim()) {
      setError("Question text, all 4 options, and a category are required.");
      return;
    }
    setSaving(true);
    setError("");
    const isNew = !rows.some(r => r.id === editing.id);
    const { error } = await supabase.from("questions").upsert({
      id: editing.id,
      topic: editing.topic,
      source: editing.source,
      q: editing.q,
      opts: editing.opts,
      ans_idx: editing.ansIdx,
      exp: editing.exp,
      category: editing.category,
      category_icon: editing.categoryIcon,
      is_active: true,
    });
    setSaving(false);
    if (error) { setError(error.message); return; }
    setEditing(null);
    load();
  }

  async function remove(row) {
    if (!confirm(`Remove "${row.q.slice(0, 60)}..."? This hides it from users but keeps their past history intact.`)) return;
    await supabase.from("questions").update({ is_active: false }).eq("id", row.id);
    load();
  }

  async function submitBulk() {
    setBulkError("");
    setBulkResult("");
    let parsed;
    try {
      parsed = parseBulkQuestions(bulkText);
    } catch (e) {
      setBulkError(e.message);
      return;
    }
    setBulkSaving(true);
    let nextId = rows.reduce((m, r) => Math.max(m, r.id), 1797) + 1;
    const inserts = parsed.map(p => ({
      id: nextId++,
      topic: p.topic,
      source: p.source,
      q: p.q,
      opts: p.opts,
      ans_idx: p.ansIdx,
      exp: p.exp,
      category: p.category,
      category_icon: p.categoryIcon,
      is_active: true,
    }));
    const { error } = await supabase.from("questions").insert(inserts);
    setBulkSaving(false);
    if (error) { setBulkError(error.message); return; }
    setBulkResult(`Added ${inserts.length} question${inserts.length === 1 ? "" : "s"}.`);
    setBulkText("");
    load();
  }

  return (
    <div className="fade-in">
      <SectionHeader icon={ClipboardList} title="Manage Questions"
        action={
          <div style={{ display: "flex", gap: 8 }}>
            <Button size="sm" variant="ghost" icon={Upload} onClick={() => { setBulkOpen(true); setBulkError(""); setBulkResult(""); }}>Bulk Import</Button>
            <Button size="sm" icon={Plus} onClick={openAdd}>Add Question</Button>
          </div>
        } />

      <div style={{ display: "flex", gap: 10, flexWrap: "wrap", marginBottom: 16, alignItems: "center" }}>
        <div style={{ display: "flex", alignItems: "center", gap: 8, border: `1px solid ${t.cardBorder}`, borderRadius: 10, padding: "8px 12px", background: t.bgAlt, flex: "1 1 220px" }}>
          <Search size={14} color={t.textFaint} />
          <input value={query} onChange={e => setQuery(e.target.value)} placeholder="Search question text..."
            style={{ border: "none", outline: "none", background: "transparent", fontSize: 13.5, color: t.text, width: "100%" }} />
        </div>
        <div style={{ display: "flex", gap: 6, flexWrap: "wrap" }}>
          {categories.slice(0, 8).map(c => (
            <Chip key={c} active={category === c} onClick={() => setCategory(c)}>{c}</Chip>
          ))}
        </div>
      </div>

      {loading ? (
        <div style={{ padding: 30, textAlign: "center", color: t.textMuted, fontSize: 13.5 }}>Loading questions...</div>
      ) : filtered.length === 0 ? (
        <EmptyState icon={ClipboardList} text="No questions match" />
      ) : (
        <div style={{ display: "flex", flexDirection: "column", gap: 8 }}>
          {filtered.slice(0, 200).map(row => (
            <Card key={row.id} style={{ padding: 14, display: "flex", gap: 12, alignItems: "flex-start" }}>
              <div style={{ flex: 1, minWidth: 0 }}>
                <div style={{ fontSize: 11, color: t.textFaint, fontWeight: 700, marginBottom: 3 }}>#{row.id} · {row.category}</div>
                <div style={{ fontSize: 13.5, color: t.text, fontWeight: 600 }}>{row.q}</div>
              </div>
              <div style={{ display: "flex", gap: 6, flexShrink: 0 }}>
                <Button size="sm" variant="ghost" icon={Pencil} onClick={() => openEdit(row)}>Edit</Button>
                <Button size="sm" variant="ghost" icon={Trash2} onClick={() => remove(row)}>Remove</Button>
              </div>
            </Card>
          ))}
          {filtered.length > 200 && (
            <div style={{ textAlign: "center", fontSize: 12.5, color: t.textFaint, padding: 10 }}>
              Showing first 200 of {filtered.length} matches — narrow your search or category to see more.
            </div>
          )}
        </div>
      )}

      {editing && (
        <Modal onClose={() => setEditing(null)} width={560}>
          <div className="f-serif" style={{ fontSize: 17, fontWeight: 700, color: t.text, marginBottom: 16 }}>
            {rows.some(r => r.id === editing.id) ? "Edit Question" : "Add Question"}
          </div>
          <div style={{ display: "flex", flexDirection: "column", gap: 12 }}>
            <Field label="Question" icon={ClipboardList} value={editing.q} onChange={v => setEditing(f => ({ ...f, q: v }))} />
            {editing.opts.map((opt, i) => (
              <div key={i} style={{ display: "flex", gap: 8, alignItems: "center" }}>
                <input type="radio" checked={editing.ansIdx === i} onChange={() => setEditing(f => ({ ...f, ansIdx: i }))} />
                <div style={{ flex: 1 }}>
                  <Field label={`Option ${String.fromCharCode(65 + i)}`} icon={ClipboardList} value={opt}
                    onChange={v => setEditing(f => ({ ...f, opts: f.opts.map((o, j) => j === i ? v : o) }))} />
                </div>
              </div>
            ))}
            <div style={{ fontSize: 11.5, color: t.textFaint }}>Select the radio next to the correct answer.</div>
            <Field label="Explanation" icon={ClipboardList} value={editing.exp} onChange={v => setEditing(f => ({ ...f, exp: v }))} />
            <div style={{ display: "flex", gap: 10 }}>
              <div style={{ flex: 1 }}>
                <Field label="Category" icon={ClipboardList} value={editing.category} onChange={v => setEditing(f => ({ ...f, category: v }))} />
              </div>
              <div style={{ flex: 1 }}>
                <Field label="Topic" icon={ClipboardList} value={editing.topic} onChange={v => setEditing(f => ({ ...f, topic: v }))} />
              </div>
            </div>
            <Field label="Source" icon={ClipboardList} value={editing.source} onChange={v => setEditing(f => ({ ...f, source: v }))} />

            {error && <div style={{ fontSize: 13, color: t.red, fontWeight: 600 }}>{error}</div>}

            <div style={{ display: "flex", gap: 10, marginTop: 6 }}>
              <Button variant="ghost" full onClick={() => setEditing(null)}>Cancel</Button>
              <Button variant="primary" full disabled={saving} onClick={save}>{saving ? "Saving..." : "Save"}</Button>
            </div>
          </div>
        </Modal>
      )}

      {bulkOpen && (
        <Modal onClose={() => setBulkOpen(false)} width={560}>
          <div className="f-serif" style={{ fontSize: 17, fontWeight: 700, color: t.text, marginBottom: 10 }}>Bulk Import Questions</div>
          <div style={{ fontSize: 12.5, color: t.textMuted, marginBottom: 14, lineHeight: 1.5 }}>
            Paste CSV with a header row. Required columns: <b>question, optionA, optionB, optionC, optionD, correct, category</b>.
            "correct" is the letter (A/B/C/D) of the right option. Optional columns: <b>explanation, topic, source</b>.
            If pasting from Excel/Google Sheets, keep the exported quoting as-is.
          </div>
          <div style={{ background: t.bgAlt, border: `1px solid ${t.cardBorder}`, borderRadius: 10, padding: 10, fontSize: 11, fontFamily: "monospace", color: t.textFaint, marginBottom: 14, overflowX: "auto", whiteSpace: "pre" }}>
{`question,optionA,optionB,optionC,optionD,correct,explanation,category
"What is normal adult HR?","40-60","60-100","100-140","140-180",B,"60-100 bpm is normal for a resting adult.","Cardiovascular"`}
          </div>
          <textarea
            value={bulkText}
            onChange={e => setBulkText(e.target.value)}
            placeholder="Paste CSV here..."
            style={{
              width: "100%", minHeight: 180, borderRadius: 10, border: `1px solid ${t.cardBorder}`,
              background: t.bgAlt, color: t.text, fontSize: 12.5, fontFamily: "monospace", padding: 10,
              boxSizing: "border-box", resize: "vertical",
            }}
          />
          {bulkError && <div style={{ fontSize: 13, color: t.red, fontWeight: 600, marginTop: 10 }}>{bulkError}</div>}
          {bulkResult && <div style={{ fontSize: 13, color: t.emerald, fontWeight: 600, marginTop: 10 }}>{bulkResult}</div>}
          <div style={{ display: "flex", gap: 10, marginTop: 14 }}>
            <Button variant="ghost" full onClick={() => setBulkOpen(false)}>Close</Button>
            <Button variant="primary" full disabled={bulkSaving || !bulkText.trim()} onClick={submitBulk}>
              {bulkSaving ? "Importing..." : "Import"}
            </Button>
          </div>
        </Modal>
      )}
    </div>
  );
}
