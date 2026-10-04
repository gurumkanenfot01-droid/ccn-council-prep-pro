import { useState } from "react";
import {
  BookA, Lightbulb, Map, Bookmark, FileText, XCircle, Layers, Crown, Search, ChevronRight, ChevronLeft, ChevronDown, Play, RotateCcw, Repeat, Trophy, Send, Megaphone, Award,
} from "lucide-react";
import { useApp, PageHead, Picture, Empty, Explanation, Situation } from "../ui.jsx";
import { ListenButton } from "../lib/reader.jsx";
import { loadJSON } from "../lib/store.js";
import { shuffle } from "../lib/quiz.js";
import { ROLES, SKILLS, TASKS, GLOSSARY, BIG_PICTURES, SKILL_BY_ID, TASK_BY_ID } from "../data/course.js";
import { ExampleBody } from "./Learn.jsx";
import { ClassLeaderboard } from "./Class.jsx";

const back = go => ({ label: "Library", onClick: () => go("library") });

// ================= Library home =================
export function LibraryHome() {
  const { go, bookmarks, wrongBank } = useApp();
  const items = [
    { id: "notes", icon: FileText, tone: "lime", title: "Class notes", sub: "Lecture notes, must-know notes, CVs" },
    { id: "bigpicture", icon: Map, tone: "sky", title: "How AI training works", sub: "5 simple pictures" },
    { id: "words", icon: BookA, tone: "sun", title: "Key words", sub: `${GLOSSARY.length} words, simply explained` },
    { id: "examples", icon: Lightbulb, tone: "brand", title: "Worked examples", sub: `${SKILLS.reduce((n, s) => n + s.examples.length, 0)} expert examples` },
    { id: "flashcards", icon: Layers, tone: "mint", title: "Flashcards", sub: "Flip and remember" },
    { id: "bookmarks", icon: Bookmark, tone: "sun", title: "Bookmarks", sub: `${bookmarks.length} saved tasks` },
    { id: "wrong", icon: XCircle, tone: "coral", title: "Wrong answers", sub: `${Object.keys(wrongBank).length} to review` },
    { id: "leaderboard", icon: Crown, tone: "brand", title: "Leaderboard", sub: "See how you rank" },
    { id: "assignments", icon: Send, tone: "sky", title: "Assignments", sub: "Hand in your work, see marks" },
    { id: "news", icon: Megaphone, tone: "sun", title: "Messages", sub: "News from your teacher" },
    { id: "certificates", icon: Award, tone: "mint", title: "Certificates", sub: "One for every day you finish" },
  ];
  return (
    <div>
      <PageHead eyebrow="Library" title="Everything in one place" sub="Look things up, review and revise." />
      <div className="grid g3">
        {items.map(it => (
          <button key={it.id} className="card tap pad" onClick={() => go(it.id)} style={{ textAlign: "left", display: "flex", gap: 14, alignItems: "center" }}>
            <div className={`tile-icon fill-${{ brand: "violet", sky: "blue", sun: "yellow", mint: "green", coral: "pink", lime: "lime" }[it.tone]}`}><it.icon size={22} /></div>
            <div style={{ flex: 1, minWidth: 0 }}><div className="h3">{it.title}</div><div className="muted" style={{ fontSize: 13.5 }}>{it.sub}</div></div>
            <ChevronRight size={18} color="var(--faint)" />
          </button>
        ))}
      </div>
      <div className="section">
        <div className="section-head"><h2 className="h2">All lessons</h2></div>
        <div className="grid g2">
          {ROLES.map(r => (
            <div key={r.key} className="card pad">
              <div className="eyebrow" style={{ marginBottom: 8 }}>Day {r.day} · {r.icon} {r.name}</div>
              {r.skills.map((s, i) => (
                <button key={s.id} className="list-row" style={{ padding: "10px 8px" }} onClick={() => go("lesson", { id: s.id })}>
                  <span className="faint mono" style={{ width: 20, fontSize: 13 }}>{i + 1}</span>
                  <span style={{ fontSize: 18 }}>{s.icon}</span>
                  <span style={{ flex: 1, fontWeight: 600 }}>{s.n}</span>
                  <Play size={15} color="var(--brand-ink)" />
                </button>
              ))}
            </div>
          ))}
        </div>
      </div>
    </div>
  );
}

// ================= Key words =================
export function KeyWords() {
  const { go } = useApp();
  const [q, setQ] = useState("");
  const [role, setRole] = useState("all");
  const list = GLOSSARY.filter(g => (role === "all" || SKILL_BY_ID[g.skillId].roleKey === role) && (!q || `${g.word} ${g.meaning}`.toLowerCase().includes(q.toLowerCase())));
  const groups = {};
  list.forEach(g => { const L = g.word[0].toUpperCase(); (groups[L] = groups[L] || []).push(g); });
  return (
    <div>
      <PageHead back={back(go)} eyebrow="Glossary" title="Key words" sub={`${list.length} words from the lessons and the ${TASKS.length} tasks.`} />
      <div className="row" style={{ position: "relative", marginBottom: 12 }}>
        <Search size={17} style={{ position: "absolute", left: 14, color: "var(--faint)" }} />
        <input className="input" style={{ paddingLeft: 42 }} value={q} onChange={e => setQ(e.target.value)} placeholder="Find a word…" aria-label="Find a word" />
      </div>
      <div className="chips" style={{ marginBottom: 20 }}>
        <button className={`chip${role === "all" ? " on" : ""}`} onClick={() => setRole("all")}>All roles</button>
        {ROLES.map(r => <button key={r.key} className={`chip${role === r.key ? " on" : ""}`} onClick={() => setRole(r.key)}>{r.icon} Day {r.day} · {r.short}</button>)}
      </div>
      {Object.keys(groups).sort().map(L => (
        <div key={L} style={{ marginBottom: 18 }}>
          <div className="display grad-text" style={{ fontSize: 26, fontWeight: 800, marginBottom: 8 }}>{L}</div>
          <div className="grid g2">
            {groups[L].map(g => (
              <div key={g.word} className="card pad between" style={{ alignItems: "flex-start", padding: 16 }}>
                <div style={{ minWidth: 0 }}>
                  <div className="h3">{g.word}</div>
                  <div className="muted" style={{ fontSize: 14.5 }}>{g.meaning}</div>
                  <div className="faint" style={{ fontSize: 12, marginTop: 4 }}>{SKILL_BY_ID[g.skillId].icon} {SKILL_BY_ID[g.skillId].n}</div>
                </div>
                <ListenButton text={`${g.word}. ${g.meaning}`} id={`w-${g.word}`} label="" title={g.word} />
              </div>
            ))}
          </div>
        </div>
      ))}
      {!list.length && <Empty icon={Search} title="No word found" sub="Try a shorter word." />}
    </div>
  );
}

// ================= Worked examples =================
export function Examples() {
  const { go } = useApp();
  const [open, setOpen] = useState(SKILLS[0].id);
  return (
    <div>
      <PageHead back={back(go)} eyebrow="Learn from experts" title="Worked examples" sub="Each one shows the situation, what to check, the result and the lesson." />
      <div className="stack" style={{ gap: 10 }}>
        {SKILLS.map(s => {
          const isOpen = open === s.id;
          return (
            <div key={s.id} className="card" style={{ overflow: "hidden" }}>
              <button className="list-row" style={{ padding: 18, borderRadius: 0 }} onClick={() => setOpen(isOpen ? null : s.id)} aria-expanded={isOpen}>
                <span style={{ fontSize: 24 }}>{s.icon}</span>
                <span style={{ flex: 1 }}><span className="h3" style={{ display: "block" }}>{s.n}</span><span className="faint" style={{ fontSize: 13 }}>{s.roleShort} · {s.examples.length} examples</span></span>
                <ChevronDown size={20} color="var(--faint)" style={{ transform: isOpen ? "rotate(180deg)" : "none", transition: "transform .2s" }} />
              </button>
              {isOpen && (
                <div className="fade" style={{ padding: "0 18px 18px" }}>
                  <ListenButton text={s.examples.map(([t, sit, c, r, l], i) => `Example ${i + 1}: ${t}. ${sit} Check: ${c} Result: ${r} Lesson: ${l}`)} id={`ex-${s.id}`} label="Listen to all examples" title={`${s.n} examples`} style={{ marginBottom: 14 }} />
                  <div className="grid g2">
                    {s.examples.map((ex, i) => (
                      <div key={i} className="soft" style={{ padding: 16 }}>
                        <div className="h3" style={{ marginBottom: 10 }}>{i + 1}. {ex[0]}</div>
                        <ExampleBody ex={ex} />
                      </div>
                    ))}
                  </div>
                </div>
              )}
            </div>
          );
        })}
      </div>
    </div>
  );
}

// ================= Big picture =================
export function BigPicture() {
  const { go } = useApp();
  return (
    <div>
      <PageHead back={back(go)} eyebrow="Start here" title="How AI training works" sub="AI learns from people like you. Your careful work makes AI better for everyone."
        action={<ListenButton text={BIG_PICTURES.map(p => `${p.title}. ${p.text}`)} id="bigpicture" label="Listen to all" title="How AI training works" />} />
      <div className="stack" style={{ gap: 18 }}>
        {BIG_PICTURES.map((p, i) => (
          <div key={p.img} className="card pad rise">
            <div className="between" style={{ alignItems: "flex-start", marginBottom: 14 }}>
              <div className="row" style={{ alignItems: "flex-start" }}>
                <span className="num">{i + 1}</span>
                <h2 className="h2">{p.title}</h2>
              </div>
              <ListenButton text={`${p.title}. ${p.text}`} id={`bp-${i}`} title={p.title} />
            </div>
            <Picture src={p.img} alt={p.title} style={{ marginBottom: 14 }} />
            <p className="big-text" style={{ margin: 0, fontSize: 17 }}>{p.text}</p>
            <div className="short"><Lightbulb size={18} style={{ flexShrink: 0, marginTop: 2 }} /> In short: {p.simple}</div>
          </div>
        ))}
      </div>
      <button className="btn grad lg full section" onClick={() => go("lesson", { id: SKILLS[0].id })}><Play size={18} fill="currentColor" /> Start Lesson 1: {SKILLS[0].n}</button>
    </div>
  );
}

// ================= Bookmarks & wrong answers =================
function TaskList({ ids, empty, extra }) {
  const { go } = useApp();
  const [open, setOpen] = useState(null);
  if (!ids.length) return empty;
  return (
    <div className="stack" style={{ gap: 10 }}>
      {ids.map(id => {
        const q = TASK_BY_ID[id];
        const isOpen = open === id;
        return (
          <div key={id} className="card pad">
            <div className="between" style={{ marginBottom: 8 }}>
              <span className="faint" style={{ fontSize: 13 }}>{q.categoryIcon} {q.category} · Task {q.num}</span>
              {extra?.(q)}
            </div>
            <Situation q={q} size={14.5} />
            <div className="h3" style={{ margin: "12px 0" }}>{q.task}</div>
            {isOpen ? <div className="fade"><Explanation q={q} /></div> : null}
            <div className="row wrap" style={{ marginTop: 12 }}>
              <button className="btn sm soft" onClick={() => setOpen(isOpen ? null : id)}>{isOpen ? "Hide answer" : "Show answer"}</button>
              <button className="btn sm ghost" onClick={() => go("session", { id: q.skillId, task: q.id })}>Practise it <ChevronRight size={15} /></button>
            </div>
          </div>
        );
      })}
    </div>
  );
}

export function Bookmarks() {
  const { go, bookmarks, toggleBookmark, startQuiz } = useApp();
  const ids = bookmarks.filter(id => TASK_BY_ID[id]);
  return (
    <div>
      <PageHead back={back(go)} eyebrow="Saved" title="Bookmarks"
        action={ids.length > 0 && <button className="btn primary sm" onClick={() => startQuiz({ count: ids.length, category: "Bookmarks", idPool: ids, mode: "learn" })}><Play size={15} /> Test me</button>} />
      <TaskList ids={ids} empty={<Empty icon={Bookmark} title="No bookmarks yet" sub="Tap the bookmark icon on any task to save it here." />}
        extra={q => <button className="icon-btn" style={{ width: 34, height: 34, color: "var(--sun)" }} onClick={() => toggleBookmark(q.id)} aria-label="Remove bookmark"><Bookmark size={16} fill="currentColor" /></button>} />
    </div>
  );
}

export function WrongAnswers() {
  const { go, wrongBank, startQuiz } = useApp();
  const ids = Object.keys(wrongBank).filter(id => TASK_BY_ID[id]).sort((a, b) => (wrongBank[b].count || 0) - (wrongBank[a].count || 0));
  return (
    <div>
      <PageHead back={back(go)} eyebrow="Fix your weak spots" title="Wrong answers"
        action={ids.length > 0 && <button className="btn primary sm" onClick={() => startQuiz({ count: ids.length, category: "Weak spots", idPool: ids, mode: "learn" })}><RotateCcw size={15} /> Retry all</button>} />
      <TaskList ids={ids} empty={<Empty icon={Trophy} title="Nothing to fix!" sub="Tasks you get wrong, or mark 'not yet', show up here." />}
        extra={q => <span className="pill coral">missed ×{wrongBank[q.id]?.count || 1}</span>} />
    </div>
  );
}

// ================= Flashcards =================
function buildDeck(type, scope, bookmarks) {
  const role = ROLES.find(r => r.id === scope);
  const skills = scope === "all" || scope === "bookmarks" ? SKILLS : role ? role.skills : [SKILL_BY_ID[scope]].filter(Boolean);
  if (type === "words") {
    const set = new Set(skills.map(s => s.id));
    return GLOSSARY.filter(g => set.has(g.skillId)).map(g => ({ front: g.word, back: g.meaning, tag: SKILL_BY_ID[g.skillId].n }));
  }
  if (type === "checks") return skills.flatMap(s => s.check.map(([q, a]) => ({ front: q, back: a, tag: s.n })));
  const tasks = scope === "bookmarks" ? bookmarks.map(id => TASK_BY_ID[id]).filter(Boolean) : skills.flatMap(s => s.taskIds.map(id => TASK_BY_ID[id]));
  return tasks.map(q => ({ front: q.task, sub: q.sit, back: q.ans, why: q.why, tag: q.category }));
}

export function Flashcards() {
  const { go, bookmarks, logActivity } = useApp();
  const [type, setType] = useState("words");
  const [scope, setScope] = useState("all");
  const [deck, setDeck] = useState(null);
  const [i, setI] = useState(0);
  const [flip, setFlip] = useState(false);
  const [known, setKnown] = useState(0);

  function start() {
    const cards = shuffle(buildDeck(type, scope, bookmarks), Date.now() % 100000).slice(0, 30);
    if (!cards.length) return;
    setDeck(cards); setI(0); setFlip(false); setKnown(0);
    logActivity();
  }
  function step(knew) { if (knew) setKnown(k => k + 1); setFlip(false); setI(x => x + 1); }

  if (!deck) {
    return (
      <div>
        <PageHead back={back(go)} eyebrow="Remember more" title="Flashcards" />
        <div className="card pad" style={{ marginBottom: 14 }}>
          <div className="label">Card type</div>
          <div className="seg">
            {[["words", "Key words"], ["tasks", "Tasks"], ["checks", "Quick checks"]].map(([k, l]) => <button key={k} className={type === k ? "on" : ""} onClick={() => setType(k)}>{l}</button>)}
          </div>
        </div>
        <div className="card pad" style={{ marginBottom: 14 }}>
          <div className="label">Topic</div>
          <div className="chips">
            <button className={`chip${scope === "all" ? " on" : ""}`} onClick={() => setScope("all")}>📚 Everything</button>
            {type === "tasks" && bookmarks.length > 0 && <button className={`chip${scope === "bookmarks" ? " on" : ""}`} onClick={() => setScope("bookmarks")}>⭐ Bookmarks</button>}
            {ROLES.map(r => <button key={r.key} className={`chip${scope === r.key ? " on" : ""}`} onClick={() => setScope(r.key)}>{r.icon} Day {r.day} · {r.short}</button>)}
            {SKILLS.map(s => <button key={s.id} className={`chip${scope === s.id ? " on" : ""}`} onClick={() => setScope(s.id)}>{s.icon} {s.n}</button>)}
          </div>
        </div>
        <button className="btn grad lg full" onClick={start}><Layers size={18} /> Start flashcards</button>
      </div>
    );
  }

  if (i >= deck.length) {
    return (
      <div>
        <Empty icon={Trophy} title={`You knew ${known} of ${deck.length}!`} sub="Great revision. Go again to make it stick.">
          <div className="row" style={{ justifyContent: "center" }}>
            <button className="btn primary" onClick={start}><Repeat size={16} /> New deck</button>
            <button className="btn ghost" onClick={() => setDeck(null)}>Change deck</button>
          </div>
        </Empty>
      </div>
    );
  }

  const c = deck[i];
  return (
    <div style={{ maxWidth: 640, margin: "0 auto" }}>
      <div className="between" style={{ marginBottom: 14 }}>
        <button className="btn sm ghost" onClick={() => setDeck(null)}><ChevronLeft size={15} /> Decks</button>
        <span className="faint mono">{i + 1} / {deck.length}</span>
      </div>
      <div className="bar brand" style={{ marginBottom: 18 }}><i style={{ width: `${((i + 1) / deck.length) * 100}%` }} /></div>
      <button key={`${i}-${flip}`} className="card rise" onClick={() => setFlip(f => !f)}
        style={{ width: "100%", minHeight: 300, padding: 30, display: "grid", placeItems: "center", textAlign: "center", background: flip ? "var(--mint-soft)" : "var(--surface)" }}>
        {!flip ? (
          <div>
            <div className="eyebrow" style={{ marginBottom: 14 }}>{c.tag}</div>
            {c.sub && <div className="muted" style={{ marginBottom: 12 }}>{c.sub}</div>}
            <div className="display" style={{ fontSize: type === "words" ? 34 : 22, fontWeight: 800, lineHeight: 1.25 }}>{c.front}</div>
            <div className="faint" style={{ fontSize: 13, marginTop: 20 }}>Tap to turn over</div>
          </div>
        ) : (
          <div>
            <div style={{ fontSize: 19, fontWeight: 700, color: "var(--mint)", lineHeight: 1.45 }}>{c.back}</div>
            {c.why && <div className="muted" style={{ marginTop: 12 }}><b style={{ color: "var(--brand-ink)" }}>Why: </b>{c.why}</div>}
          </div>
        )}
      </button>
      <div className="row" style={{ justifyContent: "center", margin: "14px 0" }}>
        <ListenButton text={flip ? [c.back, c.why || ""] : [c.sub || "", c.front]} id={`fc-${i}-${flip}`} label={flip ? "Listen to the back" : "Listen to the front"} title="Flashcard" />
      </div>
      {flip ? (
        <div className="row">
          <button className="btn danger lg full" onClick={() => step(false)}>Still learning</button>
          <button className="btn mint lg full" onClick={() => step(true)}>I knew it</button>
        </div>
      ) : (
        <button className="btn primary lg full" onClick={() => setFlip(true)}>Show the back</button>
      )}
    </div>
  );
}

// ================= Leaderboard =================
export function Leaderboard() {
  const { go, profile, cloudOn } = useApp();
  const [range, setRange] = useState("week");
  const entries = loadJSON("leaderboard-entries", []);
  const now = new Date().getTime();
  const ms = range === "week" ? 7 * 864e5 : range === "month" ? 30 * 864e5 : Infinity;
  const best = {};
  entries.filter(e => now - new Date(e.date).getTime() < ms).forEach(e => { if (!best[e.name] || e.pct > best[e.name].pct) best[e.name] = e; });
  const ranked = Object.values(best).sort((a, b) => b.pct - a.pct).slice(0, 20);
  const medal = ["🥇", "🥈", "🥉"];
  return (
    <div>
      <PageHead back={back(go)} eyebrow="Compete" title="Leaderboard" sub={cloudOn ? "See how you are doing next to your classmates." : "Best test scores on this device. Pass a test, then add your score."} />
      {cloudOn && <><ClassLeaderboard /><div className="section-head section"><h2 className="h2">Best test scores on this phone</h2></div></>}
      <div className="seg" style={{ marginBottom: 18 }}>
        {[["week", "This week"], ["month", "This month"], ["all", "All time"]].map(([k, l]) => <button key={k} className={range === k ? "on" : ""} onClick={() => setRange(k)}>{l}</button>)}
      </div>
      {!ranked.length ? <Empty icon={Crown} title="No scores yet" sub="Be the first! Pass any test and tap 'Add my score'." /> : (
        <div className="stack" style={{ gap: 8 }}>
          {ranked.map((e, i) => (
            <div key={e.name} className="card row" style={{ padding: "14px 18px", gap: 14, borderColor: e.name === profile.name ? "var(--brand)" : undefined }}>
              <div className="display" style={{ width: 34, textAlign: "center", fontSize: i < 3 ? 26 : 16, fontWeight: 800, color: "var(--faint)" }}>{medal[i] || `#${i + 1}`}</div>
              <div style={{ flex: 1, minWidth: 0 }}>
                <div style={{ fontWeight: 700 }}>{e.name}{e.name === profile.name && <span style={{ color: "var(--brand-ink)" }}> (you)</span>}</div>
                <div className="faint" style={{ fontSize: 13 }}>{e.category} · {e.correct}/{e.total}</div>
              </div>
              <div className="display mono grad-text" style={{ fontWeight: 800, fontSize: 20 }}>{e.pct}%</div>
            </div>
          ))}
        </div>
      )}
    </div>
  );
}
