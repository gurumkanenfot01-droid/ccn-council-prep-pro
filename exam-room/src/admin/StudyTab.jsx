import { useEffect, useMemo, useState } from "react";
import { BookOpen, Star, Layers, ListChecks, FileText, Shuffle, RotateCcw, ChevronLeft, ChevronRight } from "lucide-react";
import { supabase } from "../lib/supabase.js";
import { Spinner } from "../ui.jsx";

// Admin-only study area. Everything comes from the admin_study table, which only
// admins can read (see supabase/admin_study.sql), so none of it reaches students.

const MODES = [
  { id: "must", label: "Must-know 300", icon: Star, collection: "bank", must: true, kind: "quiz" },
  { id: "bank", label: "All 3,000 by topic", icon: ListChecks, collection: "bank", kind: "quiz" },
  { id: "kquiz", label: "Keynote quiz", icon: BookOpen, collection: "keynote_quiz", kind: "quiz" },
  { id: "cards", label: "Flashcards", icon: Layers, collection: "keynote_cards", kind: "cards" },
  { id: "notes", label: "Keynote notes", icon: FileText, collection: "keynote_notes", kind: "notes" },
];

const store = {
  get(k, d) { try { const v = localStorage.getItem(k); return v ? JSON.parse(v) : d; } catch (e) { return d; } },
  set(k, v) { try { localStorage.setItem(k, JSON.stringify(v)); } catch (e) { /* storage full or blocked */ } },
};

// PostgREST returns at most 1000 rows per request, so page through.
async function loadAll(make) {
  const out = [];
  for (let from = 0; ; from += 1000) {
    const { data, error } = await make().range(from, from + 999);
    if (error) throw error;
    out.push(...(data || []));
    if (!data || data.length < 1000) return out;
  }
}

function shuffled(list, seed) {
  const a = list.slice();
  let s = seed || 1;
  for (let i = a.length - 1; i > 0; i--) {
    s = (s * 9301 + 49297) % 233280;
    const j = Math.floor((s / 233280) * (i + 1));
    [a[i], a[j]] = [a[j], a[i]];
  }
  return a;
}

export default function StudyTab() {
  const [mode, setMode] = useState(() => store.get("study:mode", "must"));
  const m = MODES.find(x => x.id === mode) || MODES[0];
  const [areas, setAreas] = useState(null); // [[area, count]]
  const [area, setArea] = useState("");
  const [items, setItems] = useState(null);
  const [error, setError] = useState("");

  useEffect(() => { store.set("study:mode", mode); }, [mode]);

  // Topic / chapter list with counts.
  useEffect(() => {
    let off = false;
    setAreas(null); setItems(null); setError("");
    loadAll(() => {
      let q = supabase.from("admin_study").select("area, sort").eq("collection", m.collection);
      if (m.must) q = q.eq("must", true);
      return q.order("area").order("sort");
    }).then(rows => {
      if (off) return;
      const counts = new Map();
      const first = new Map(); // keynote chapters keep book order, not alphabetical
      rows.forEach(r => {
        counts.set(r.area, (counts.get(r.area) || 0) + 1);
        if (!first.has(r.area) || r.sort < first.get(r.area)) first.set(r.area, r.sort);
      });
      const list = [...counts.entries()];
      if (m.collection !== "bank") list.sort((a, b) => first.get(a[0]) - first.get(b[0]));
      setAreas(list);
      const saved = store.get(`study:area:${m.id}`, "");
      const allowAll = m.id !== "bank" && m.id !== "notes";
      setArea(list.some(([a]) => a === saved) || (saved === "" && allowAll) ? saved : (list[0] ? list[0][0] : ""));
    }).catch(e => !off && setError(e.message || String(e)));
    return () => { off = true; };
  }, [m.id]); // eslint-disable-line react-hooks/exhaustive-deps

  // Items for the chosen topic.
  useEffect(() => {
    if (areas === null) return undefined;
    let off = false;
    setItems(null);
    store.set(`study:area:${m.id}`, area);
    if (m.kind === "notes" && !area) return undefined;
    loadAll(() => {
      let q = supabase.from("admin_study").select("id, area, must, sort, q, opts, ans_idx, answer, exp, ref").eq("collection", m.collection);
      if (m.must) q = q.eq("must", true);
      if (area) q = q.eq("area", area);
      return m.collection === "bank" ? q.order("area").order("sort") : q.order("sort");
    }).then(rows => !off && setItems(rows)).catch(e => !off && setError(e.message || String(e)));
    return () => { off = true; };
  }, [area, areas]); // eslint-disable-line react-hooks/exhaustive-deps

  const total = areas ? areas.reduce((n, [, c]) => n + c, 0) : 0;

  return (
    <div style={{ display: "flex", flexDirection: "column", gap: 14 }}>
      <div className="banner banner-info" style={{ display: "block" }}>
        <strong>Admin study — CCN.</strong> Only admins can see this page. The 3,000 Day 1–15 mock questions are sorted into 18 curriculum
        areas; the <strong>must-know 300</strong> cover every area. The keynote book is here as a quiz, flashcards and notes. Your progress is kept on this device.
      </div>

      <div className="row" role="tablist" aria-label="Study mode" style={{ gap: 6 }}>
        {MODES.map(x => (
          <button key={x.id} role="tab" aria-selected={mode === x.id}
            className={`btn btn-sm ${mode === x.id ? "btn-primary" : "btn-ghost"}`} onClick={() => setMode(x.id)}>
            <x.icon size={14} /> {x.label}
          </button>
        ))}
      </div>

      {error && (
        <div className="banner banner-bad" style={{ display: "block" }}>
          Couldn't load the study pack: {error}. If this is the first time, the pack may not be loaded yet — run the
          “Apply admin study pack to Supabase” workflow on GitHub.
        </div>
      )}

      {!error && areas === null && <div style={{ textAlign: "center", padding: 30 }}><Spinner size={24} /></div>}

      {!error && areas && areas.length === 0 && (
        <div className="card muted">The study pack is empty. Run the “Apply admin study pack to Supabase” workflow on GitHub.</div>
      )}

      {areas && areas.length > 0 && (
        <div className="field" style={{ maxWidth: 640 }}>
          <label htmlFor="study-area">{m.collection === "bank" ? "Curriculum area" : "Keynote chapter"}</label>
          <select id="study-area" value={area} onChange={e => setArea(e.target.value)}>
            {m.id !== "bank" && m.id !== "notes" && <option value="">All {m.collection === "bank" ? "areas" : "chapters"} ({total})</option>}
            {areas.map(([a, c]) => <option key={a} value={a}>{a} ({c})</option>)}
          </select>
        </div>
      )}

      {areas && areas.length > 0 && items === null && !error && <div style={{ textAlign: "center", padding: 30 }}><Spinner size={24} /></div>}

      {items && m.kind === "quiz" && <Quiz key={`${m.id}:${area}`} items={items} storeKey={`study:${m.id}`} />}
      {items && m.kind === "cards" && <Cards key={area} items={items} />}
      {items && m.kind === "notes" && items[0] && <Markdown text={items[0].exp || ""} />}
    </div>
  );
}

// ---------------------------------------------------------------------------
// Multiple-choice practice
// ---------------------------------------------------------------------------

function Quiz({ items, storeKey }) {
  const [picks, setPicks] = useState(() => store.get(storeKey, {})); // id -> chosen option
  const [filter, setFilter] = useState("all"); // all | new | wrong
  const [seed, setSeed] = useState(0); // 0 = in order
  const [pos, setPos] = useState(0);

  useEffect(() => { store.set(storeKey, picks); }, [storeKey, picks]);

  const list = useMemo(() => {
    let l = items;
    if (filter === "new") l = l.filter(x => picks[x.id] === undefined);
    if (filter === "wrong") l = l.filter(x => picks[x.id] !== undefined && picks[x.id] !== x.ans_idx);
    return seed ? shuffled(l, seed) : l;
  }, [items, filter, seed]); // eslint-disable-line react-hooks/exhaustive-deps
  // (picks is left out on purpose: answering must not reshuffle or drop the current question)

  const answered = items.filter(x => picks[x.id] !== undefined);
  const right = answered.filter(x => picks[x.id] === x.ans_idx).length;
  const cur = list[Math.min(pos, list.length - 1)];
  const chosen = cur ? picks[cur.id] : undefined;

  function choose(i) { if (chosen === undefined) setPicks(p => ({ ...p, [cur.id]: i })); }
  function go(d) { setPos(p => Math.max(0, Math.min(list.length - 1, p + d))); window.scrollTo({ top: 0, behavior: "smooth" }); }
  function reset() {
    if (!confirm("Clear your answers for this set?")) return;
    setPicks(p => { const n = { ...p }; items.forEach(x => { delete n[x.id]; }); return n; });
    setPos(0);
  }

  return (
    <div style={{ display: "flex", flexDirection: "column", gap: 12 }}>
      <div className="stat-grid">
        <div className="stat"><div className="num">{items.length}</div><div className="lbl">Questions</div></div>
        <div className="stat"><div className="num">{answered.length}</div><div className="lbl">Answered</div></div>
        <div className="stat"><div className="num">{answered.length ? Math.round((right / answered.length) * 100) : 0}%</div><div className="lbl">Score ({right} right)</div></div>
      </div>
      <div className="row" style={{ gap: 6 }}>
        {[["all", "All"], ["new", "Not answered"], ["wrong", "My wrong ones"]].map(([id, label]) => (
          <button key={id} className={`btn btn-sm ${filter === id ? "btn-primary" : "btn-ghost"}`} onClick={() => { setFilter(id); setPos(0); }}>{label}</button>
        ))}
        <button className={`btn btn-sm ${seed ? "btn-primary" : "btn-ghost"}`} onClick={() => { setSeed(seed ? 0 : Date.now() % 100000 + 1); setPos(0); }}><Shuffle size={14} /> {seed ? "Shuffled" : "Shuffle"}</button>
        <button className="btn btn-sm btn-ghost" onClick={reset}><RotateCcw size={14} /> Reset</button>
      </div>

      {!cur ? (
        <div className="card muted">{filter === "wrong" ? "No wrong answers here — well done." : filter === "new" ? "You've answered every question in this set." : "No questions."}</div>
      ) : (
        <div className="card" style={{ display: "flex", flexDirection: "column", gap: 12 }}>
          <div className="row" style={{ justifyContent: "space-between" }}>
            <span className="faint" style={{ fontSize: 12 }}>Question {Math.min(pos, list.length - 1) + 1} of {list.length}</span>
            {cur.must && <span className="pill pill-warn"><Star size={12} /> Must-know</span>}
          </div>
          <div className="faint" style={{ fontSize: 12 }}>{cur.area}</div>
          <div style={{ fontSize: 17, fontWeight: 600, whiteSpace: "pre-line", lineHeight: 1.45 }}>{cur.q}</div>
          <div style={{ display: "flex", flexDirection: "column", gap: 8 }}>
            {(cur.opts || []).map((o, i) => {
              const cls = chosen === undefined ? "" : i === cur.ans_idx ? "correct" : i === chosen ? "wrong" : "";
              return (
                <button key={i} className={`option ${cls}`} disabled={chosen !== undefined} onClick={() => choose(i)}>
                  <span className="letter">{"ABCDEFG"[i]}</span><span>{o}</span>
                </button>
              );
            })}
          </div>
          {chosen !== undefined && (
            <div className={`banner ${chosen === cur.ans_idx ? "banner-ok" : "banner-warn"}`} style={{ display: "block", whiteSpace: "pre-line", fontWeight: 400, lineHeight: 1.5 }}>
              <strong>{chosen === cur.ans_idx ? "Correct." : "Not quite."}</strong>{"\n"}{cur.exp}
            </div>
          )}
          {cur.ref && <div className="faint" style={{ fontSize: 12 }}>{cur.ref}</div>}
          <div className="row" style={{ justifyContent: "space-between" }}>
            <button className="btn btn-ghost" disabled={pos === 0} onClick={() => go(-1)}><ChevronLeft size={16} /> Back</button>
            <button className="btn btn-primary" disabled={pos >= list.length - 1} onClick={() => go(1)}>Next <ChevronRight size={16} /></button>
          </div>
        </div>
      )}
    </div>
  );
}

// ---------------------------------------------------------------------------
// Flashcards
// ---------------------------------------------------------------------------

function Cards({ items }) {
  const [seed, setSeed] = useState(0);
  const [pos, setPos] = useState(0);
  const [flip, setFlip] = useState(false);
  const list = useMemo(() => (seed ? shuffled(items, seed) : items), [items, seed]);
  const cur = list[pos];
  if (!cur) return <div className="card muted">No cards.</div>;
  const go = d => { setFlip(false); setPos(p => Math.max(0, Math.min(list.length - 1, p + d))); };
  return (
    <div style={{ display: "flex", flexDirection: "column", gap: 12, maxWidth: 720 }}>
      <div className="row" style={{ justifyContent: "space-between" }}>
        <span className="faint" style={{ fontSize: 12 }}>Card {pos + 1} of {list.length}</span>
        <button className={`btn btn-sm ${seed ? "btn-primary" : "btn-ghost"}`} onClick={() => { setSeed(seed ? 0 : Date.now() % 100000 + 1); setPos(0); setFlip(false); }}><Shuffle size={14} /> {seed ? "Shuffled" : "Shuffle"}</button>
      </div>
      <button className="card flashcard" onClick={() => setFlip(f => !f)} aria-label={flip ? "Show the question" : "Show the answer"}>
        <div className="faint" style={{ fontSize: 12, marginBottom: 10 }}>{cur.ref}</div>
        {!flip
          ? <div style={{ fontSize: 22, fontWeight: 700 }}>{cur.q}</div>
          : <div style={{ fontSize: 16, lineHeight: 1.55, textAlign: "left" }}><div style={{ fontWeight: 700, marginBottom: 8 }}>{cur.q}</div>{cur.answer}</div>}
        <div className="faint" style={{ fontSize: 12, marginTop: 14 }}>{flip ? "Tap to hide" : "Tap to see the answer"}</div>
      </button>
      <div className="row" style={{ justifyContent: "space-between" }}>
        <button className="btn btn-ghost" disabled={pos === 0} onClick={() => go(-1)}><ChevronLeft size={16} /> Back</button>
        <button className="btn btn-primary" disabled={pos >= list.length - 1} onClick={() => go(1)}>Next <ChevronRight size={16} /></button>
      </div>
    </div>
  );
}

// ---------------------------------------------------------------------------
// Minimal Markdown reader for the keynote chapters (headings, lists, tables,
// quotes, images, bold/italic). Builds React elements — no raw HTML.
// ---------------------------------------------------------------------------

function inline(text, key) {
  const parts = [];
  const re = /(\*\*[^*]+\*\*|`[^`]+`|(?<![\w*])\*[^*\s][^*]*\*(?![\w*]))/g;
  let last = 0; let m; let n = 0;
  while ((m = re.exec(text))) {
    if (m.index > last) parts.push(text.slice(last, m.index));
    const t = m[0];
    if (t.startsWith("**")) parts.push(<strong key={`${key}-${n++}`}>{t.slice(2, -2)}</strong>);
    else if (t.startsWith("`")) parts.push(<code key={`${key}-${n++}`}>{t.slice(1, -1)}</code>);
    else parts.push(<em key={`${key}-${n++}`}>{t.slice(1, -1)}</em>);
    last = m.index + t.length;
  }
  if (last < text.length) parts.push(text.slice(last));
  return parts;
}

function Markdown({ text }) {
  const lines = text.split("\n");
  const out = [];
  let i = 0;
  const cells = l => l.trim().replace(/^\||\|$/g, "").split("|").map(c => c.trim());
  while (i < lines.length) {
    const l = lines[i];
    const k = `b${i}`;
    if (!l.trim()) { i++; continue; }
    const h = l.match(/^(#{1,4})\s+(.*)$/);
    if (h) {
      const Tag = `h${Math.min(4, h[1].length + 1)}`;
      out.push(<Tag key={k} className="serif">{inline(h[2], k)}</Tag>);
      i++; continue;
    }
    const img = l.match(/^!\[([^\]]*)\]\(([^)]+)\)\s*$/);
    if (img) {
      out.push(<figure key={k}><img src={img[2]} alt={img[1]} loading="lazy" /><figcaption className="faint">{img[1]}</figcaption></figure>);
      i++; continue;
    }
    if (l.startsWith("|") && lines[i + 1] && /^\|\s*:?-{2,}/.test(lines[i + 1])) {
      const head = cells(l); const rows = [];
      i += 2;
      while (i < lines.length && lines[i].startsWith("|")) { rows.push(cells(lines[i])); i++; }
      out.push(
        <div key={k} className="md-table"><table>
          <thead><tr>{head.map((c, j) => <th key={j}>{inline(c, `${k}h${j}`)}</th>)}</tr></thead>
          <tbody>{rows.map((r, ri) => <tr key={ri}>{r.map((c, j) => <td key={j}>{inline(c, `${k}r${ri}c${j}`)}</td>)}</tr>)}</tbody>
        </table></div>,
      );
      continue;
    }
    if (/^\s*([-*•]|\d+\.)\s+/.test(l)) {
      const ordered = /^\s*\d+\./.test(l);
      const li = [];
      while (i < lines.length && /^\s*([-*•]|\d+\.)\s+/.test(lines[i])) { li.push(lines[i].replace(/^\s*([-*•]|\d+\.)\s+/, "")); i++; }
      const List = ordered ? "ol" : "ul";
      out.push(<List key={k}>{li.map((t, j) => <li key={j}>{inline(t, `${k}l${j}`)}</li>)}</List>);
      continue;
    }
    if (l.startsWith(">")) {
      const q = [];
      while (i < lines.length && lines[i].startsWith(">")) { q.push(lines[i].replace(/^>\s?/, "")); i++; }
      out.push(<blockquote key={k}>{inline(q.join(" "), k)}</blockquote>);
      continue;
    }
    const p = [];
    while (i < lines.length && lines[i].trim() && !/^(#{1,4}\s|\||>|!\[|\s*([-*•]|\d+\.)\s+)/.test(lines[i])) { p.push(lines[i]); i++; }
    if (!p.length) { p.push(l); i++; }
    out.push(<p key={k}>{inline(p.join(" "), k)}</p>);
  }
  return <article className="card study-md">{out}</article>;
}
