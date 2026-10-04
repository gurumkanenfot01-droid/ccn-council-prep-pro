import { useState } from "react";
import { Layers, ChevronLeft, ChevronRight, Search, Lightbulb, BookA, Map, ChevronDown, ChevronUp, PlayCircle } from "lucide-react";
import { useApp, Card, Button, Chip, SectionHeader, EmptyState } from "../ui/kit.jsx";
import { BackButton, Picture } from "../ui/extra.jsx";
import { ListenButton } from "../lib/reader.jsx";
import { shuffle } from "../lib/quiz.js";
import { ROLES, SKILLS, TASKS, GLOSSARY, BIG_PICTURES, SKILL_BY_ID, TASK_BY_ID } from "../data/course.js";
import { ExampleCard } from "./SkillScreens.jsx";

// ---------- Flashcards ----------
const DECK_TYPES = [
  { id: "words", label: "Key words", desc: "Word on the front, meaning on the back" },
  { id: "tasks", label: "Tasks", desc: "Task on the front, answer on the back" },
  { id: "checks", label: "Quick checks", desc: "Short questions from each lesson" },
];

function buildDeck(type, scope, bookmarks) {
  const skills = scope === "All" || scope === "Bookmarks" ? SKILLS : scope.length === 1 ? ROLES.find(r => r.key === scope).skills : [SKILL_BY_ID[scope]];
  if (type === "words") {
    const ids = new Set(skills.map(s => s.id));
    return GLOSSARY.filter(g => ids.has(g.skillId)).map(g => ({ front: g.word, back: g.meaning, tag: SKILL_BY_ID[g.skillId].n, icon: SKILL_BY_ID[g.skillId].icon }));
  }
  if (type === "checks") {
    return skills.flatMap(s => s.check.map(([q, a]) => ({ front: q, back: a, tag: s.n, icon: s.icon })));
  }
  const tasks = scope === "Bookmarks" ? bookmarks.map(id => TASK_BY_ID[id]).filter(Boolean) : skills.flatMap(s => s.taskIds.map(id => TASK_BY_ID[id]));
  return tasks.map(q => ({ front: q.task, sub: q.sit, back: q.ans, why: q.why, tag: q.category, icon: q.categoryIcon }));
}

export function FlashcardsScreen() {
  const { t, bookmarks, logActivity } = useApp();
  const [type, setType] = useState("words");
  const [deck, setDeck] = useState(null);
  const [deckName, setDeckName] = useState("");
  const [i, setI] = useState(0);
  const [flipped, setFlipped] = useState(false);

  function startDeck(scope, name) {
    const cards = shuffle(buildDeck(type, scope, bookmarks), Date.now() % 100000).slice(0, 30);
    if (!cards.length) return;
    setDeck(cards); setDeckName(name); setI(0); setFlipped(false);
    logActivity();
  }

  if (!deck) {
    return (
      <div className="fade-in">
        <SectionHeader icon={Layers} title="Flashcards" />
        <div style={{ fontSize: 13.5, color: t.textMuted, marginBottom: 12 }}>1. Pick a type of card.</div>
        <div style={{ display: "grid", gridTemplateColumns: "repeat(auto-fit, minmax(180px, 1fr))", gap: 10, marginBottom: 20 }}>
          {DECK_TYPES.map(d => (
            <Card key={d.id} hover onClick={() => setType(d.id)} style={{ padding: 14, borderColor: type === d.id ? t.navy : t.cardBorder, borderWidth: type === d.id ? 2 : 1, background: type === d.id ? t.navySoft : t.card }}>
              <div style={{ fontSize: 14, fontWeight: 700, color: type === d.id ? t.navy : t.text }}>{d.label}</div>
              <div style={{ fontSize: 12, color: t.textFaint, marginTop: 2 }}>{d.desc}</div>
            </Card>
          ))}
        </div>
        <div style={{ fontSize: 13.5, color: t.textMuted, marginBottom: 12 }}>2. Pick what to study.</div>
        <div style={{ display: "flex", flexWrap: "wrap", gap: 8 }}>
          <Chip onClick={() => startDeck("All", "Mixed")}>📚 Mixed &middot; All</Chip>
          {type === "tasks" && bookmarks.length > 0 && <Chip onClick={() => startDeck("Bookmarks", "Bookmarks")} icon="⭐">Bookmarks ({bookmarks.length})</Chip>}
          {ROLES.map(r => <Chip key={r.key} onClick={() => startDeck(r.key, r.name)} icon={r.icon}>{r.short}</Chip>)}
          {SKILLS.map(s => <Chip key={s.id} onClick={() => startDeck(s.id, s.n)} icon={s.icon}>{s.n}</Chip>)}
        </div>
      </div>
    );
  }

  const c = deck[i];
  const speech = flipped ? [c.back, c.why || ""] : [c.sub || "", c.front];
  return (
    <div className="fade-in">
      <BackButton onClick={() => setDeck(null)}>Choose another deck</BackButton>
      <div style={{ fontSize: 12.5, color: t.textFaint, textAlign: "center", marginBottom: 14 }}>Card {i + 1} of {deck.length} &middot; {deckName}</div>
      <div onClick={() => setFlipped(f => !f)} style={{ marginBottom: 14 }}>
        <Card hover style={{ padding: 30, minHeight: 240, display: "flex", alignItems: "center", justifyContent: "center", textAlign: "center", background: flipped ? t.emeraldSoft : t.card }}>
          {!flipped ? (
            <div>
              <div style={{ fontSize: 11, color: t.navy, fontWeight: 700, marginBottom: 14, textTransform: "uppercase" }}>{c.icon} {c.tag}</div>
              {c.sub && <div style={{ fontSize: 13.5, color: t.textMuted, marginBottom: 12, lineHeight: 1.5 }}>{c.sub}</div>}
              <div className="f-serif" style={{ fontSize: type === "words" ? 26 : 18, fontWeight: 700, color: t.text, lineHeight: 1.5 }}>{c.front}</div>
              <div style={{ fontSize: 12, color: t.textFaint, marginTop: 18 }}>Tap to turn the card</div>
            </div>
          ) : (
            <div>
              <div style={{ fontSize: 16, fontWeight: 800, color: t.emerald, marginBottom: 12, lineHeight: 1.5 }}>{c.back}</div>
              {c.why && <div style={{ fontSize: 13.5, color: t.textMuted, lineHeight: 1.55 }}><strong style={{ color: t.navy }}>Why: </strong>{c.why}</div>}
            </div>
          )}
        </Card>
      </div>
      <div style={{ display: "flex", justifyContent: "center", marginBottom: 16 }}>
        <ListenButton text={speech} id={`fc-${i}-${flipped}`} label={flipped ? "Listen to the back" : "Listen to the front"} />
      </div>
      <div style={{ display: "flex", justifyContent: "space-between", gap: 10 }}>
        <Button variant="ghost" icon={ChevronLeft} onClick={() => { setI(x => Math.max(0, x - 1)); setFlipped(false); }} disabled={i === 0}>Back</Button>
        <Button variant="primary" style={{ flexDirection: "row-reverse" }} icon={ChevronRight} onClick={() => { setI(x => Math.min(deck.length - 1, x + 1)); setFlipped(false); }} disabled={i === deck.length - 1}>Next</Button>
      </div>
    </div>
  );
}

// ---------- Search ----------
export function SearchScreen({ go }) {
  const { t } = useApp();
  const [query, setQuery] = useState("");
  const q = query.toLowerCase();
  const ok = query.length >= 3;
  const results = !ok ? [] : TASKS.filter(x => [x.sit, x.task, x.ans, x.kw].some(f => f.toLowerCase().includes(q))).slice(0, 40);
  const lessonResults = !ok ? [] : SKILLS.filter(s => [s.n, s.s, s.def, ...s.words.flat(), ...s.steps.flat(), ...s.mistakes.flat()].some(f => f.toLowerCase().includes(q)));
  const wordResults = !ok ? [] : GLOSSARY.filter(g => g.word.toLowerCase().includes(q) || g.meaning.toLowerCase().includes(q)).slice(0, 12);

  return (
    <div className="fade-in">
      <SectionHeader icon={Search} title="Search" />
      <div style={{ position: "relative", marginBottom: 20 }}>
        <Search size={16} color={t.textFaint} style={{ position: "absolute", left: 14, top: 13 }} />
        <input autoFocus value={query} onChange={e => setQuery(e.target.value)} placeholder="Search tasks, lessons or words (3+ letters)..."
          style={{ width: "100%", padding: "12px 14px 12px 38px", borderRadius: 12, border: `1px solid ${t.cardBorder}`, background: t.card, fontSize: 14.5, color: t.text, outline: "none" }} />
      </div>
      {ok && <div style={{ fontSize: 12.5, color: t.textFaint, marginBottom: 14 }}>{results.length} tasks &middot; {lessonResults.length} lessons &middot; {wordResults.length} key words</div>}
      {wordResults.length > 0 && (
        <div style={{ marginBottom: 24 }}>
          <div style={{ fontSize: 12, fontWeight: 700, color: t.textMuted, textTransform: "uppercase", marginBottom: 10 }}>Key Words</div>
          <div style={{ display: "flex", flexDirection: "column", gap: 8 }}>
            {wordResults.map(g => (
              <Card key={g.word} style={{ padding: 12, fontSize: 13.5, color: t.text }}><strong style={{ color: t.amber }}>{g.word}</strong> — {g.meaning}</Card>
            ))}
          </div>
        </div>
      )}
      {lessonResults.length > 0 && (
        <div style={{ marginBottom: 24 }}>
          <div style={{ fontSize: 12, fontWeight: 700, color: t.textMuted, textTransform: "uppercase", marginBottom: 10 }}>Lessons</div>
          <div style={{ display: "flex", flexDirection: "column", gap: 8 }}>
            {lessonResults.slice(0, 8).map(s => (
              <Card key={s.id} hover onClick={() => go("skill", { id: s.id, tab: "lesson" })} style={{ padding: 14, fontSize: 13.5, fontWeight: 600, color: t.text }}>{s.icon} {s.n} <span style={{ color: t.textFaint, fontWeight: 500 }}>· {s.s}</span></Card>
            ))}
          </div>
        </div>
      )}
      {results.length > 0 && (
        <div>
          <div style={{ fontSize: 12, fontWeight: 700, color: t.textMuted, textTransform: "uppercase", marginBottom: 10 }}>Tasks</div>
          <div style={{ display: "flex", flexDirection: "column", gap: 10 }}>
            {results.map(x => (
              <Card key={x.id} hover onClick={() => go("skill", { id: x.skillId, tab: "practice", task: x.id })} style={{ padding: 14 }}>
                <div style={{ fontSize: 11.5, fontWeight: 700, color: t.navy, marginBottom: 4 }}>{x.categoryIcon} {x.category} · Task {x.num}</div>
                <div style={{ fontSize: 13, color: t.textMuted, marginBottom: 4 }}>{x.sit}</div>
                <div style={{ fontSize: 13.5, color: t.text, fontWeight: 600 }}>{x.task}</div>
              </Card>
            ))}
          </div>
        </div>
      )}
      {ok && results.length === 0 && lessonResults.length === 0 && wordResults.length === 0 && <EmptyState icon={Search} text="Nothing found" sub="Try a shorter word" />}
    </div>
  );
}

// ---------- Worked Examples (all skills) ----------
export function ExamplesScreen({ go }) {
  const { t } = useApp();
  const [open, setOpen] = useState(null);
  return (
    <div className="fade-in">
      <SectionHeader icon={Lightbulb} title="Worked Examples" />
      <Card style={{ padding: "14px 18px", marginBottom: 20, background: t.navySoft, border: `1px solid ${t.navy}22` }}>
        <div style={{ fontSize: 13, color: t.textMuted, lineHeight: 1.5 }}>
          See how an expert thinks. Each example shows the <strong>situation</strong>, what to <strong>check</strong>, the <strong>result</strong> and the <strong>lesson</strong>. There are {SKILLS.reduce((n, s) => n + s.examples.length, 0)} examples.
        </div>
      </Card>
      <div style={{ display: "flex", flexDirection: "column", gap: 10 }}>
        {SKILLS.map(s => {
          const isOpen = open === s.id;
          return (
            <Card key={s.id} style={{ padding: 0, overflow: "hidden" }}>
              <div onClick={() => setOpen(isOpen ? null : s.id)} className="press" style={{ padding: "14px 18px", display: "flex", alignItems: "center", justifyContent: "space-between", gap: 10, cursor: "pointer" }}>
                <div>
                  <div style={{ fontSize: 14.5, fontWeight: 700, color: t.text }}>{s.icon} {s.n}</div>
                  <div style={{ fontSize: 12, color: t.textFaint }}>{s.roleShort} · {s.examples.length} examples</div>
                </div>
                {isOpen ? <ChevronUp size={18} color={t.textFaint} /> : <ChevronDown size={18} color={t.textFaint} />}
              </div>
              {isOpen && (
                <div className="fade-in" style={{ padding: "0 18px 18px", display: "flex", flexDirection: "column", gap: 12 }}>
                  <div style={{ display: "flex", gap: 8, flexWrap: "wrap" }}>
                    <ListenButton text={s.examples.map(([title, sit, check, result, lesson], i) => `Example ${i + 1}: ${title}. ${sit} Check: ${check} Result: ${result} Lesson: ${lesson}`)} id={`ex-all-${s.id}`} label="Listen to all examples" />
                    <Button size="sm" variant="ghost" onClick={() => go("skill", { id: s.id, tab: "lesson" })}>Open lesson</Button>
                  </div>
                  {s.examples.map((ex, i) => <ExampleCard key={i} ex={ex} n={i + 1} />)}
                </div>
              )}
            </Card>
          );
        })}
      </div>
    </div>
  );
}

// ---------- Key Words (glossary) ----------
export function KeyWordsScreen() {
  const { t } = useApp();
  const [query, setQuery] = useState("");
  const [role, setRole] = useState("All");
  const list = GLOSSARY.filter(g =>
    (role === "All" || SKILL_BY_ID[g.skillId].roleKey === role) &&
    (!query || g.word.toLowerCase().includes(query.toLowerCase()) || g.meaning.toLowerCase().includes(query.toLowerCase())));
  const groups = {};
  list.forEach(g => { const L = g.word[0].toUpperCase(); (groups[L] = groups[L] || []).push(g); });
  return (
    <div className="fade-in">
      <SectionHeader icon={BookA} title="Key Words" action={<div className="f-mono" style={{ fontSize: 12, color: t.textFaint }}>{list.length} words</div>} />
      <Card style={{ padding: "14px 18px", marginBottom: 16, background: t.navySoft, border: `1px solid ${t.navy}22`, fontSize: 13, color: t.textMuted, lineHeight: 1.5 }}>
        Every key word from the lessons and the 360 tasks, with a simple meaning. Tap <strong>Listen</strong> to hear a word.
      </Card>
      <div style={{ position: "relative", marginBottom: 12 }}>
        <Search size={16} color={t.textFaint} style={{ position: "absolute", left: 14, top: 13 }} />
        <input value={query} onChange={e => setQuery(e.target.value)} placeholder="Find a word..."
          style={{ width: "100%", padding: "11px 14px 11px 38px", borderRadius: 12, border: `1px solid ${t.cardBorder}`, background: t.card, fontSize: 14, color: t.text, outline: "none" }} />
      </div>
      <div style={{ display: "flex", gap: 8, flexWrap: "wrap", marginBottom: 18 }}>
        <Chip active={role === "All"} onClick={() => setRole("All")}>Both roles</Chip>
        {ROLES.map(r => <Chip key={r.key} active={role === r.key} onClick={() => setRole(r.key)} icon={r.icon}>{r.short}</Chip>)}
      </div>
      {Object.keys(groups).sort().map(L => (
        <div key={L} style={{ marginBottom: 16 }}>
          <div className="f-serif" style={{ fontSize: 18, fontWeight: 700, color: t.navy, marginBottom: 8 }}>{L}</div>
          <div style={{ display: "flex", flexDirection: "column", gap: 8 }}>
            {groups[L].map(g => (
              <Card key={g.word} style={{ padding: "12px 14px", display: "flex", alignItems: "center", justifyContent: "space-between", gap: 10 }}>
                <div style={{ minWidth: 0 }}>
                  <div style={{ fontSize: 14.5, fontWeight: 800, color: t.text }}>{g.word}</div>
                  <div style={{ fontSize: 13.5, color: t.textMuted, lineHeight: 1.5 }}>{g.meaning}</div>
                  <div style={{ fontSize: 11, color: t.textFaint, marginTop: 2 }}>{SKILL_BY_ID[g.skillId].icon} {SKILL_BY_ID[g.skillId].n}</div>
                </div>
                <ListenButton text={`${g.word}. ${g.meaning}`} id={`kw-${g.word}`} />
              </Card>
            ))}
          </div>
        </div>
      ))}
      {list.length === 0 && <EmptyState icon={Search} text="No word found" />}
    </div>
  );
}

// ---------- How AI Training Works (picture guide) ----------
export function BigPictureScreen({ go }) {
  const { t } = useApp();
  return (
    <div className="fade-in">
      <SectionHeader icon={Map} title="How AI Training Works" action={<ListenButton text={BIG_PICTURES.map(p => `${p.title}. ${p.text}`)} id="bigpicture-all" label="Listen to all" />} />
      <Card style={{ padding: "14px 18px", marginBottom: 20, background: t.navySoft, border: `1px solid ${t.navy}22`, fontSize: 13.5, color: t.textMuted, lineHeight: 1.55 }}>
        Before the lessons, see the big picture. AI learns from people like you. Your careful work makes AI answers better for everyone.
      </Card>
      {BIG_PICTURES.map((p, i) => (
        <Card key={p.img} style={{ padding: 20, marginBottom: 16 }}>
          <div style={{ display: "flex", justifyContent: "space-between", alignItems: "flex-start", gap: 10, marginBottom: 12 }}>
            <div className="f-serif" style={{ fontSize: 17, fontWeight: 700, color: t.text }}>{i + 1}. {p.title}</div>
            <ListenButton text={`${p.title}. ${p.text}`} id={`bp-${i}`} />
          </div>
          <Picture src={p.img} alt={p.title} style={{ marginBottom: 12 }} />
          <div style={{ fontSize: 14.5, color: t.text, lineHeight: 1.65 }}>{p.text}</div>
          <div style={{ marginTop: 10, background: t.emeraldSoft, color: t.emerald, fontWeight: 700, fontSize: 13.5, borderRadius: 10, padding: "8px 12px", display: "flex", gap: 8 }}>
            <Lightbulb size={15} style={{ flexShrink: 0, marginTop: 2 }} /> In short: {p.simple}
          </div>
        </Card>
      ))}
      <Button full size="lg" variant="accent" icon={PlayCircle} onClick={() => go("skill", { id: SKILLS[0].id, tab: "lesson" })}>Start Lesson 1: {SKILLS[0].n}</Button>
    </div>
  );
}
