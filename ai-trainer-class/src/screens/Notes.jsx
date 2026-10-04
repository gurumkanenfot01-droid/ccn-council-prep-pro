import { useState, useEffect, useMemo } from "react";
import { FileText, ClipboardCheck, ListOrdered, ChevronRight, Lightbulb, BookOpen, Star, IdCard, StickyNote, ArrowUp } from "lucide-react";
import { useApp, PageHead, Picture, Empty, Sheet, SheetHead } from "../ui.jsx";
import { ListenButton } from "../lib/reader.jsx";
import { loadJSON, saveJSON } from "../lib/store.js";
import { DAYS, loadDoc } from "../data/course.js";

const KIND = {
  lecture: { icon: BookOpen, fill: "lime", blurb: "The full lesson for the day, chapter by chapter." },
  mustknow: { icon: Star, fill: "yellow", blurb: "Short cards, rules, a cheat sheet and a quiz." },
  cvs: { icon: IdCard, fill: "blue", blurb: "Example CVs for the day's jobs, explained." },
  assignment: { icon: ClipboardCheck, fill: "pink", blurb: "Answers for the day's assignment. Try it yourself first!" },
  other: { icon: StickyNote, fill: "violet", blurb: "Extra notes for the day." },
};

// ================= All notes, by day =================
export function NotesHome() {
  const { go } = useApp();
  const days = DAYS.filter(d => d.docs?.length);
  return (
    <div>
      <PageHead back={{ label: "Library", onClick: () => go("library") }} eyebrow="Read and listen" title={<>Class <span className="serif">notes</span></>}
        sub="Every day's lecture notes, must-know notes and sample CVs. Tap Listen on any chapter to hear it." />
      {!days.length && <Empty icon={FileText} title="No notes yet" sub="Notes appear here when a day's Word files are added." />}
      {[...days].reverse().map(d => (
        <div key={d.day} className="section" style={{ marginTop: 22 }}>
          <div className="section-head">
            <div>
              <div className="eyebrow">Day {d.day}</div>
              <h2 className="h2">{d.subtitle || d.title}</h2>
            </div>
          </div>
          <div className="grid g3">
            {d.docs.map(doc => {
              const k = KIND[doc.kind] || KIND.other;
              return (
                <button key={doc.id} className={`card tap pad fill-${k.fill}`} onClick={() => go("doc", { day: d.day, id: doc.id })}
                  style={{ textAlign: "left", display: "flex", flexDirection: "column", gap: 16, minHeight: 170 }}>
                  <div className="between"><div className="tile-icon" style={{ background: "#fff", borderColor: "var(--ink)", color: "var(--ink)" }}><k.icon size={22} /></div><span className="sticker">~{doc.minutes} min</span></div>
                  <div>
                    <div className="h2">{doc.label}</div>
                    <div style={{ fontSize: 14, marginTop: 4 }}>{k.blurb}</div>
                  </div>
                </button>
              );
            })}
          </div>
        </div>
      ))}
    </div>
  );
}

// Text the AI Reader says for a block.
function speechOf(b) {
  switch (b.t) {
    case "chapter": return `Chapter ${b.n}. ${b.text}.`;
    case "box": return [b.title ? `${b.title.toLowerCase()}.` : "", ...b.lines];
    case "table": return b.rows.map(r => r.filter(Boolean).join(": ")).join(". ");
    case "img": return b.caption ? `Picture: ${b.caption}` : "";
    case "simple": return `In simple English: ${b.text}`;
    case "simply": return `Simply: ${b.text}`;
    case "step": return `Step ${b.n}. ${b.text}`;
    case "li": return `${b.n}. ${b.text}`;
    case "q": return `Question: ${b.text}`;
    case "a": return `Answer: ${b.text}`;
    default: return b.text || "";
  }
}
const SIMPLE_KEEP = new Set(["chapter", "h2", "h3", "simple", "simply", "img", "q", "a"]);

// ================= One document =================
export function DocReader({ day, id }) {
  const { go, logActivity } = useApp();
  const [doc, setDoc] = useState(null);
  const [error, setError] = useState(false);
  const [simple, setSimple] = useState(() => loadJSON("notes-simple", false));
  const [showToc, setShowToc] = useState(false);
  const meta = DAYS.find(d => d.day === day)?.docs.find(x => x.id === id);

  useEffect(() => {
    let alive = true;
    loadDoc(day, id).then(d => { if (alive) { setDoc(d); logActivity(); } }).catch(() => alive && setError(true));
    return () => { alive = false; };
  }, [day, id]); // eslint-disable-line

  // Group blocks into chapters so each chapter can be read aloud on its own.
  const chapters = useMemo(() => {
    if (!doc) return [];
    const out = [{ head: null, blocks: [] }];
    doc.blocks.forEach(b => { if (b.t === "chapter") out.push({ head: b, blocks: [] }); else out[out.length - 1].blocks.push(b); });
    return out.filter(c => c.head || c.blocks.length);
  }, [doc]);

  function toggleSimple() { setSimple(s => { saveJSON("notes-simple", !s); return !s; }); }
  function jump(n) { setShowToc(false); document.getElementById(`ch-${n}`)?.scrollIntoView({ behavior: "smooth", block: "start" }); }

  if (error) return <Empty icon={FileText} title="These notes could not open" sub="Check your internet and try again."><button className="btn primary" onClick={() => go("notes")}>Back to notes</button></Empty>;
  if (!doc) return <Empty icon={FileText} title="Opening the notes…" />;

  return (
    <div>
      <PageHead back={{ label: "All notes", onClick: () => go("notes") }} eyebrow={`Day ${day} · ${meta?.label || "Notes"}`} title={doc.title} sub={doc.subtitle} />

      <div className="card pad between wrap" style={{ marginBottom: 22, gap: 12, position: "sticky", top: 86, zIndex: 5 }}>
        <div className="row wrap" style={{ gap: 8 }}>
          {chapters.some(c => c.head) && <button className="btn sm" onClick={() => setShowToc(true)}><ListOrdered size={16} /> Contents</button>}
          <button className="btn sm" onClick={() => window.scrollTo({ top: 0, behavior: "smooth" })} aria-label="Back to top"><ArrowUp size={16} /></button>
        </div>
        <button className="row" onClick={toggleSimple} style={{ border: "none", background: "none", gap: 8, fontWeight: 700, fontSize: 14, color: "var(--text)" }}>
          Simple lines only <span className={`switch${simple ? " on" : ""}`} role="switch" aria-checked={simple} />
        </button>
      </div>

      <div className="stack" style={{ gap: 26 }}>
        {chapters.map((c, ci) => {
          const blocks = simple ? c.blocks.filter(b => SIMPLE_KEEP.has(b.t)) : c.blocks;
          const speech = [c.head ? speechOf(c.head) : "", ...blocks.map(speechOf)].flat().filter(Boolean);
          return (
            <section key={ci} id={c.head ? `ch-${c.head.n}` : undefined} style={{ scrollMarginTop: 170 }}>
              {c.head && (
                <div className={`role-band fill-${["lime", "pink", "blue", "yellow", "violet", "orange", "green"][ci % 7]}`} style={{ marginBottom: 16 }}>
                  <div style={{ minWidth: 0, flex: "1 1 240px" }}>
                    <div className="eyebrow">Chapter {c.head.n}</div>
                    <div className="h2" style={{ marginTop: 4 }}>{c.head.text}</div>
                  </div>
                  <ListenButton text={speech} id={`doc-${day}-${id}-${ci}`} label="Listen" title={c.head.text} />
                </div>
              )}
              {!c.head && blocks.length > 0 && <div style={{ marginBottom: 12 }}><ListenButton text={speech} id={`doc-${day}-${id}-intro`} label="Listen to the intro" title={doc.title} /></div>}
              <div className="stack" style={{ gap: 12 }}>{blocks.map((b, bi) => <Block key={bi} b={b} />)}</div>
            </section>
          );
        })}
      </div>

      {showToc && (
        <Sheet onClose={() => setShowToc(false)}>
          <SheetHead title="Contents" onClose={() => setShowToc(false)} />
          <div className="stack" style={{ gap: 4 }}>
            {chapters.filter(c => c.head).map(c => (
              <button key={c.head.n} className="list-row" onClick={() => jump(c.head.n)}>
                <span className="mono" style={{ fontWeight: 700, width: 28 }}>{String(c.head.n).padStart(2, "0")}</span>
                <span style={{ flex: 1, fontWeight: 600 }}>{c.head.text}</span>
                <ChevronRight size={17} />
              </button>
            ))}
          </div>
        </Sheet>
      )}
    </div>
  );
}

function Block({ b }) {
  switch (b.t) {
    case "h2": return <h3 className="h2" style={{ marginTop: 10 }}>{b.text}</h3>;
    case "h3": return <h4 className="h3" style={{ marginTop: 6 }}>● {b.text}</h4>;
    case "p": return <p style={{ margin: 0, fontSize: 16.5, lineHeight: 1.7 }}>{b.text}</p>;
    case "simple": return <div className="short" style={{ marginTop: 0 }}><Lightbulb size={18} style={{ flexShrink: 0, marginTop: 2 }} /><span>In simple English: {b.text}</span></div>;
    case "simply": return <div className="serif" style={{ fontSize: 19, margin: "-6px 0 0 46px" }}>Simply: {b.text}</div>;
    case "step": return <div className="step" style={{ cursor: "default" }}><div className="num">{b.n}</div><div style={{ fontSize: 16 }}>{b.text}</div></div>;
    case "li": return <div className="row" style={{ alignItems: "flex-start", gap: 12 }}><span className="num" style={{ width: 28, height: 28, fontSize: 13 }}>{b.n}</span><span style={{ fontSize: 16, paddingTop: 2 }}>{b.text}</span></div>;
    case "bullet": return <div className="row" style={{ alignItems: "flex-start", gap: 10 }}><span style={{ width: 10, height: 10, borderRadius: 3, background: "var(--lime)", border: "2px solid var(--line)", marginTop: 8, flexShrink: 0 }} /><span style={{ fontSize: 16 }}>{b.text}</span></div>;
    case "q": return <div className="soft"><span className="eyebrow">Question</span><div style={{ fontWeight: 700, fontSize: 16 }}>{b.text}</div></div>;
    case "a": return <div style={{ fontWeight: 700, color: "var(--mint)", margin: "-4px 0 0 4px" }}>✅ {b.text}</div>;
    case "img": return (
      <figure style={{ margin: 0 }}>
        <Picture src={b.src} alt={b.caption} />
        {b.caption && <figcaption className="serif" style={{ fontSize: 18, marginTop: 8, textAlign: "center" }}>{b.caption}</figcaption>}
      </figure>
    );
    case "box": {
      const tt = (b.title || "").toUpperCase();
      const fill = /^DEFINITION/.test(tt) ? "blue" : /^THINK OF/.test(tt) ? "pink" : /^EXAMPLE|TASK/.test(tt) ? "violet" : b.title ? "yellow" : "";
      return (
        <div className={`card pad${fill ? ` fill-${fill}` : ""}`}>
          {b.title && <div className="eyebrow" style={{ marginBottom: 6 }}>{b.title}</div>}
          {b.lines.map((l, i) => <p key={i} style={{ margin: i ? "8px 0 0" : 0, fontSize: 16, lineHeight: 1.6 }}>{l}</p>)}
        </div>
      );
    }
    case "table": return (
      <div className="doc-table">
        <table>
          <thead><tr>{b.rows[0].map((c, i) => <th key={i}>{c}</th>)}</tr></thead>
          <tbody>{b.rows.slice(1).map((r, i) => <tr key={i}>{r.map((c, j) => <td key={j}>{c}</td>)}</tr>)}</tbody>
        </table>
      </div>
    );
    default: return null;
  }
}
