import { useState } from "react";
import { Search, CornerDownLeft, X } from "lucide-react";
import { useApp } from "../ui.jsx";
import { SKILLS, TASKS, GLOSSARY, SKILL_BY_ID } from "../data/course.js";

const PLACES = [
  ["learn", "🗺️", "Learning path"], ["practice", "🎯", "Practice"], ["builder", "🛠️", "Build a test"], ["progress", "📊", "My progress"],
  ["words", "🔑", "Key words"], ["examples", "🧪", "Worked examples"], ["bigpicture", "🖼️", "How AI training works"], ["flashcards", "🃏", "Flashcards"],
  ["bookmarks", "⭐", "Bookmarks"], ["wrong", "↺", "Wrong answers"], ["leaderboard", "🏆", "Leaderboard"], ["me", "👤", "Me and settings"], ["help", "🛟", "Help"],
];

// One search box for everything: screens, lessons, key words and the 360 tasks.
export function SearchSheet({ onClose }) {
  const { go } = useApp();
  const [q, setQ] = useState("");
  const s = q.trim().toLowerCase();
  const places = PLACES.filter(([, , l]) => !s || l.toLowerCase().includes(s));
  const skills = s.length < 2 ? [] : SKILLS.filter(k => [k.n, k.s, k.def].some(f => f.toLowerCase().includes(s))).slice(0, 6);
  const words = s.length < 2 ? [] : GLOSSARY.filter(g => g.word.toLowerCase().includes(s) || g.meaning.toLowerCase().includes(s)).slice(0, 6);
  const tasks = s.length < 3 ? [] : TASKS.filter(t => [t.sit, t.task, t.ans, t.kw].some(f => f.toLowerCase().includes(s))).slice(0, 12);
  const nothing = s && !places.length && !skills.length && !words.length && !tasks.length;

  const Group = ({ title, children }) => <div style={{ marginTop: 14 }}><div className="eyebrow" style={{ margin: "0 6px 6px" }}>{title}</div>{children}</div>;

  return (
    <div className="scrim" onClick={onClose} style={{ alignItems: "flex-start", paddingTop: "8vh" }}>
      <div className="sheet wide" onClick={e => e.stopPropagation()} style={{ borderRadius: 28, maxHeight: "80vh", margin: "0 12px" }} role="dialog" aria-label="Search">
        <div className="row" style={{ position: "relative" }}>
          <Search size={19} style={{ position: "absolute", left: 16, color: "var(--faint)" }} />
          <input className="input" autoFocus value={q} onChange={e => setQ(e.target.value)} placeholder="Search lessons, words, tasks or screens…"
            style={{ paddingLeft: 46, fontSize: 16.5, padding: "15px 14px 15px 46px", borderRadius: 18 }}
            onKeyDown={e => {
              if (e.key === "Escape") onClose();
              if (e.key === "Enter") {
                if (skills[0]) go("skill", { id: skills[0].id });
                else if (places[0]) go(places[0][0]);
              }
            }} />
          <button className="icon-btn" onClick={onClose} aria-label="Close search"><X size={18} /></button>
        </div>

        {places.length > 0 && (
          <Group title={s ? "Screens" : "Go to"}>
            <div className="chips">{places.map(([id, e, l]) => <button key={id} className="chip" onClick={() => go(id)}>{e} {l}</button>)}</div>
          </Group>
        )}
        {skills.length > 0 && (
          <Group title="Lessons">
            {skills.map((k, i) => (
              <button key={k.id} className="list-row" onClick={() => go("skill", { id: k.id })}>
                <span style={{ fontSize: 20 }}>{k.icon}</span><span style={{ flex: 1 }}><b>{k.n}</b><span className="faint" style={{ display: "block", fontSize: 13 }}>{k.s}</span></span>
                {i === 0 && <CornerDownLeft size={15} color="var(--faint)" />}
              </button>
            ))}
          </Group>
        )}
        {words.length > 0 && (
          <Group title="Key words">
            {words.map(w => <div key={w.word} className="list-row" style={{ cursor: "default" }}><span>🔑</span><span><b>{w.word}</b> <span className="muted">— {w.meaning}</span></span></div>)}
          </Group>
        )}
        {tasks.length > 0 && (
          <Group title={`Tasks (${tasks.length}${tasks.length === 12 ? "+" : ""})`}>
            {tasks.map(t => (
              <button key={t.id} className="list-row" onClick={() => go("session", { id: t.skillId, task: t.id })}>
                <span style={{ fontSize: 18 }}>{SKILL_BY_ID[t.skillId].icon}</span>
                <span style={{ flex: 1, minWidth: 0 }}><b style={{ display: "block" }}>{t.task}</b><span className="faint" style={{ fontSize: 13, display: "block", whiteSpace: "nowrap", overflow: "hidden", textOverflow: "ellipsis" }}>{t.category} · {t.sit}</span></span>
              </button>
            ))}
          </Group>
        )}
        {nothing && <div className="empty">Nothing found for “{q}”. Try a shorter word.</div>}
        <div className="faint" style={{ fontSize: 12, marginTop: 16, textAlign: "center" }}>Tip: press <span className="kbd">/</span> to search from anywhere</div>
      </div>
    </div>
  );
}
