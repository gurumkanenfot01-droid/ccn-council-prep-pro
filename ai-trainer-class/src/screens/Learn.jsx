import { useState, useEffect, useRef } from "react";
import {
  Play, BookOpen, Target, Trophy, ChevronRight, ChevronLeft, X, CheckCircle2, Flame, Zap, Download,
  Lightbulb, ThumbsUp, ThumbsDown, XCircle, Check, Map, RotateCcw, Headphones, Rows3, GalleryHorizontal, Sparkles, Clock,
} from "lucide-react";
import { useApp, Ring, Bar, Picture, Confetti, PageHead } from "../ui.jsx";
import { ListenButton, useReader, Wave } from "../lib/reader.jsx";
import { loadJSON, saveJSON } from "../lib/store.js";
import { skillStats, skillState, nextSkill, overall, lastWeek, LEVELS } from "../lib/gamify.js";
import { COURSE, ROLES, SKILLS, SKILL_BY_ID } from "../data/course.js";

const ROLE_GRAD = { g: "var(--grad)", l: "linear-gradient(135deg, #0E9F7E 0%, #1E95EA 100%)" };

// ================= Learn home: hero + learning path =================
export function LearnHome() {
  const { profile, taskProgress, lessonsDone, go, inProgress, resumeQuiz, level, xp, streak, canInstall, promptInstall } = useApp();
  const next = nextSkill(taskProgress, lessonsDone);
  const all = overall(taskProgress, lessonsDone);
  const hour = new Date().getHours();
  const hello = hour < 12 ? "Good morning" : hour < 17 ? "Good afternoon" : "Good evening";
  const nextAction = !next ? null : !lessonsDone[next.id] ? { label: "Start the lesson", run: () => go("lesson", { id: next.id }) } : { label: "Continue practice", run: () => go("session", { id: next.id }) };

  return (
    <div>
      <section className="hero rise">
        <div className="eyebrow" style={{ color: "rgba(255,255,255,.75)" }}>{hello}{profile.name ? `, ${profile.name.split(" ")[0]}` : ""} 👋</div>
        <h1 className="h1" style={{ margin: "8px 0 6px", maxWidth: 520 }}>{next ? "Let's keep learning." : "You finished Day 1! 🎉"}</h1>
        <div style={{ opacity: .85, marginBottom: 20 }}>{COURSE.title}</div>

        {next && (
          <div className="glass" style={{ padding: 14, display: "flex", gap: 14, alignItems: "center", marginBottom: 18, maxWidth: 560 }}>
            <div style={{ width: 64, height: 64, borderRadius: 14, background: "#fff", overflow: "hidden", flexShrink: 0, display: "grid", placeItems: "center" }}>
              <img src={next.image} alt="" style={{ width: "100%", height: "100%", objectFit: "contain" }} />
            </div>
            <div style={{ minWidth: 0, flex: 1 }}>
              <div style={{ fontSize: 12, fontWeight: 700, opacity: .8 }}>UP NEXT · {next.roleShort.toUpperCase()}</div>
              <div className="display" style={{ fontWeight: 800, fontSize: 19, lineHeight: 1.2 }}>{next.icon} {next.n}</div>
              <div style={{ fontSize: 13, opacity: .85 }}>{skillStats(next, taskProgress).got}/20 tasks · {lessonsDone[next.id] ? "lesson done ✓" : "lesson not started"}</div>
            </div>
          </div>
        )}

        <div className="row wrap">
          {nextAction
            ? <button className="btn white lg" onClick={nextAction.run}><Play size={18} fill="currentColor" /> {nextAction.label}</button>
            : <button className="btn white lg" onClick={() => go("practice")}><Trophy size={18} /> Take a Role Test</button>}
          {inProgress && <button className="btn lg" style={{ background: "rgba(255,255,255,.16)", color: "#fff" }} onClick={resumeQuiz}><RotateCcw size={18} /> Finish your test</button>}
        </div>

        <div className="row wrap" style={{ marginTop: 20, gap: 8 }}>
          <span className="glass" style={{ padding: "6px 12px", fontSize: 13, fontWeight: 700 }}>{level.icon} {level.name}</span>
          <span className="glass" style={{ padding: "6px 12px", fontSize: 13, fontWeight: 700 }}>⚡ {xp} XP</span>
          <span className="glass" style={{ padding: "6px 12px", fontSize: 13, fontWeight: 700 }}>🔥 {streak}-day streak</span>
          <span className="glass" style={{ padding: "6px 12px", fontSize: 13, fontWeight: 700 }}>✅ {all.pct}% done</span>
        </div>
      </section>

      <div className="mobile-only" style={{ marginTop: 16 }}><TodayCard compact /></div>

      {all.lessons === 0 && (
        <button className="card tap pad rise" onClick={() => go("bigpicture")} style={{ width: "100%", textAlign: "left", marginTop: 16, display: "flex", gap: 14, alignItems: "center" }}>
          <div className="tile-icon" style={{ background: "var(--sky-soft)", color: "var(--sky)" }}><Map size={22} /></div>
          <div style={{ flex: 1 }}>
            <div className="h3">New here? See the big picture first</div>
            <div className="muted" style={{ fontSize: 14 }}>How AI training works, in 5 simple pictures. 3 minutes.</div>
          </div>
          <ChevronRight size={20} color="var(--faint)" />
        </button>
      )}

      {canInstall && (
        <div className="card pad row" style={{ marginTop: 16, gap: 14 }}>
          <div className="tile-icon" style={{ background: "var(--brand-soft)", color: "var(--brand-ink)" }}><Download size={22} /></div>
          <div style={{ flex: 1 }}>
            <div className="h3">Install the app</div>
            <div className="muted" style={{ fontSize: 14 }}>Put it on your home screen. It opens fast and works offline.</div>
          </div>
          <button className="btn soft sm" onClick={promptInstall}>Install</button>
        </div>
      )}

      <div className="section">
        <div className="section-head">
          <div>
            <div className="eyebrow">Your learning path</div>
            <h2 className="h2">18 skills, one step at a time</h2>
          </div>
        </div>
        {ROLES.map(role => <RolePath key={role.key} role={role} current={next} />)}
      </div>
    </div>
  );
}

function RolePath({ role, current }) {
  const { taskProgress, lessonsDone, go } = useApp();
  const done = role.skills.filter(s => skillState(s, taskProgress, lessonsDone) === "done").length;
  return (
    <div style={{ marginBottom: 26 }}>
      <div className="unit" style={{ background: ROLE_GRAD[role.key] }}>
        <div>
          <div style={{ fontSize: 12, fontWeight: 700, opacity: .8, letterSpacing: ".06em" }}>{role.key === "g" ? "PART 1" : "PART 2"}</div>
          <div className="display" style={{ fontWeight: 800, fontSize: 20 }}>{role.icon} {role.name}</div>
          <div style={{ fontSize: 13, opacity: .9, maxWidth: 460 }}>{role.intro}</div>
        </div>
        <div style={{ textAlign: "center", flexShrink: 0 }}>
          <div className="display" style={{ fontSize: 26, fontWeight: 800 }}>{done}/{role.skills.length}</div>
          <div style={{ fontSize: 11, opacity: .85 }}>skills done</div>
        </div>
      </div>
      <div className="path">
        {role.skills.map((s, i) => {
          const st = skillStats(s, taskProgress);
          const state = skillState(s, taskProgress, lessonsDone);
          const isCurrent = current?.id === s.id;
          return (
            <div className="path-node" key={s.id}>
              <button className={`node-btn${state === "done" ? " done" : ""}${isCurrent ? " current pulse" : ""}`} onClick={() => go("skill", { id: s.id })} aria-label={`${s.n}: ${st.got} of 20 tasks done`}>
                {state !== "done" && st.pct > 0 && !isCurrent && (
                  <svg className="ring" width="88" height="88" viewBox="0 0 88 88" aria-hidden="true">
                    <circle cx="44" cy="44" r="41" fill="none" stroke="var(--mint)" strokeWidth="4" strokeLinecap="round" strokeDasharray={`${(st.pct / 100) * 257.6} 300`} transform="rotate(-90 44 44)" />
                  </svg>
                )}
                <span>{state === "done" ? "✓" : s.icon}</span>
              </button>
              <button className="node-label" onClick={() => go("skill", { id: s.id })} style={{ border: "none", background: "none", textAlign: "left", padding: 0 }}>
                <div className="eyebrow" style={{ color: isCurrent ? "var(--brand-ink)" : undefined }}>{isCurrent ? "You are here" : `Skill ${i + 1}`}</div>
                <div className="h3">{s.n}</div>
                <div className="faint" style={{ fontSize: 13 }}>{st.got}/20 tasks{lessonsDone[s.id] ? " · lesson ✓" : ""}</div>
              </button>
            </div>
          );
        })}
      </div>
    </div>
  );
}

// ================= Right-hand panel (desktop) / today card =================
export function TodayCard({ compact }) {
  const { todayCount, profile, streak, activity } = useApp();
  const goal = profile.dailyGoal || 10;
  const pct = Math.min(100, Math.round((todayCount / goal) * 100));
  const week = lastWeek(activity);
  const max = Math.max(goal, ...week.map(d => d.count));
  return (
    <div className="card pad">
      <div className="row" style={{ gap: 16 }}>
        <Ring pct={pct} size={compact ? 74 : 92} stroke={compact ? 9 : 11} color={pct >= 100 ? "url(#ringMint)" : "url(#ringGrad)"}>
          <div>
            <div className="display mono" style={{ fontWeight: 800, fontSize: compact ? 18 : 22, lineHeight: 1 }}>{todayCount}</div>
            <div className="faint" style={{ fontSize: 11 }}>of {goal}</div>
          </div>
        </Ring>
        <div style={{ flex: 1, minWidth: 0 }}>
          <div className="eyebrow">Today's goal</div>
          <div className="h3" style={{ margin: "2px 0" }}>{pct >= 100 ? "Goal reached! 🎉" : `${goal - todayCount} more to go`}</div>
          <div className="row" style={{ gap: 6, fontSize: 13 }}><Flame size={15} color="var(--sun)" /> <b>{streak}</b> <span className="faint">day streak</span></div>
        </div>
      </div>
      {!compact && (
        <div style={{ display: "flex", gap: 6, alignItems: "flex-end", height: 70, marginTop: 18 }}>
          {week.map(d => (
            <div key={d.key} style={{ flex: 1, textAlign: "center" }}>
              <div style={{ height: 50, display: "flex", alignItems: "flex-end" }}>
                <div style={{ width: "100%", borderRadius: 6, height: `${Math.max(6, (d.count / max) * 100)}%`, background: d.count >= goal ? "var(--mint)" : d.count ? "var(--brand)" : "var(--surface-2)", opacity: d.today ? 1 : .75 }} />
              </div>
              <div className="faint" style={{ fontSize: 11, fontWeight: d.today ? 800 : 500, marginTop: 4 }}>{d.label}</div>
            </div>
          ))}
        </div>
      )}
    </div>
  );
}

export function Aside() {
  const { level, xp, go } = useApp();
  return (
    <>
      <TodayCard />
      <div className="card pad">
        <div className="between" style={{ marginBottom: 10 }}>
          <div>
            <div className="eyebrow">Your level</div>
            <div className="h3">{level.icon} {level.name}</div>
          </div>
          <span className="pill brand">⚡ {xp} XP</span>
        </div>
        <Bar pct={level.pct} brand />
        <div className="faint" style={{ fontSize: 12.5, marginTop: 8 }}>{level.next ? `${level.toNext} XP to ${level.next.icon} ${level.next.name}` : "Top level reached!"}</div>
        <div className="row" style={{ gap: 4, marginTop: 12 }}>
          {LEVELS.map((l, i) => <div key={l.name} title={l.name} style={{ flex: 1, height: 6, borderRadius: 9, background: i <= level.index ? "var(--brand)" : "var(--surface-2)" }} />)}
        </div>
      </div>
      <button className="card tap pad" onClick={() => go("practice")} style={{ textAlign: "left", display: "flex", gap: 12, alignItems: "center" }}>
        <div className="tile-icon" style={{ background: "var(--sun-soft)", color: "var(--sun)" }}><Zap size={20} /></div>
        <div style={{ flex: 1 }}>
          <div style={{ fontWeight: 700 }}>Daily Challenge</div>
          <div className="faint" style={{ fontSize: 13 }}>10 new tasks every day</div>
        </div>
        <ChevronRight size={18} color="var(--faint)" />
      </button>
      <div className="soft row" style={{ gap: 12 }}>
        <Headphones size={20} color="var(--brand-ink)" />
        <div style={{ fontSize: 13 }}><b>Tip:</b> tap <b>Listen</b> on any card, or the round button, and the AI Reader reads to you.</div>
      </div>
    </>
  );
}

// ================= Skill overview =================
export function SkillOverview({ id }) {
  const { taskProgress, lessonsDone, go, startQuiz } = useApp();
  const skill = SKILL_BY_ID[id];
  const [open, setOpen] = useState({});
  if (!skill) return null;
  const st = skillStats(skill, taskProgress);
  const pos = SKILLS.indexOf(skill);
  const prev = SKILLS[pos - 1];
  const nextS = SKILLS[pos + 1];
  const lessonCards = buildCards(skill).length;
  const left = st.total - st.got;

  return (
    <div>
      <PageHead back={{ label: "Learning path", onClick: () => go("learn") }} eyebrow={`${skill.roleName} · Skill ${skill.roleKey === "g" ? pos + 1 : pos - 9}`} title={<>{skill.icon} {skill.n}</>} sub={skill.s} />

      <div className="card" style={{ overflow: "hidden", display: "grid", gridTemplateColumns: "minmax(0,1fr)", marginBottom: 18 }}>
        <Picture src={skill.image} alt={skill.n} style={{ borderRadius: 0, border: "none" }} />
        <div style={{ padding: 18 }} className="between wrap">
          <div style={{ flex: 1, minWidth: 220 }}>
            <Bar pct={st.pct} />
            <div className="faint" style={{ fontSize: 13, marginTop: 6 }}>{st.got}/20 tasks done{st.again ? ` · ${st.again} to practise again` : ""}</div>
          </div>
          {lessonsDone[skill.id] ? <span className="pill mint"><CheckCircle2 size={14} /> Lesson done</span> : <span className="pill sun">Lesson not done yet</span>}
        </div>
      </div>

      <div className="grid g3">
        <ActionCard step="1" tone="brand" icon={BookOpen} title="Lesson" sub={`${lessonCards} short cards · about ${Math.round(lessonCards * 0.6)} min`}
          cta={lessonsDone[skill.id] ? "Read again" : "Start lesson"} done={!!lessonsDone[skill.id]} onClick={() => go("lesson", { id: skill.id })} />
        <ActionCard step="2" tone="mint" icon={Target} title="Practice tasks" sub={left ? `${left} of 20 tasks left` : "All 20 done!"}
          cta={st.tried ? "Continue" : "Start practice"} done={st.got === 20} onClick={() => go("session", { id: skill.id })} />
        <ActionCard step="3" tone="sun" icon={Trophy} title="Skill test" sub="20 questions · answers shown as you go"
          cta="Take the test" onClick={() => startQuiz({ count: 20, category: skill.n, idPool: skill.taskIds, mode: "learn" })} />
      </div>

      <div className="section card pad">
        <div className="between" style={{ marginBottom: 12 }}>
          <div className="h3">All 20 tasks</div>
          {st.again > 0 && <button className="btn sm danger" onClick={() => go("session", { id: skill.id, filter: "again" })}><RotateCcw size={14} /> Practise the {st.again} again</button>}
        </div>
        <div className="dots">
          {skill.taskIds.map((tid, i) => {
            const s = taskProgress[tid]?.s;
            return <button key={tid} className={`dot${s ? ` ${s}` : ""}`} onClick={() => go("session", { id: skill.id, task: tid })} aria-label={`Task ${i + 1}`}>{i + 1}</button>;
          })}
        </div>
        <div className="row faint wrap" style={{ fontSize: 12.5, marginTop: 12, gap: 14 }}>
          <span className="row" style={{ gap: 6 }}><i style={{ width: 10, height: 10, borderRadius: 3, background: "var(--mint)" }} /> Got it</span>
          <span className="row" style={{ gap: 6 }}><i style={{ width: 10, height: 10, borderRadius: 3, background: "var(--coral-soft)", border: "1.5px solid var(--coral)" }} /> Practise again</span>
          <span className="row" style={{ gap: 6 }}><i style={{ width: 10, height: 10, borderRadius: 3, border: "1.5px solid var(--border)" }} /> Not tried</span>
        </div>
      </div>

      <div className="grid g2 section">
        <div className="card pad">
          <div className="h3" style={{ marginBottom: 12 }}>Quick check</div>
          <div className="stack" style={{ gap: 8 }}>
            {skill.check.map(([q, a], i) => (
              <button key={i} className="soft" onClick={() => setOpen(o => ({ ...o, [i]: !o[i] }))} style={{ border: "none", textAlign: "left" }}>
                <div style={{ fontWeight: 700 }}>{q}</div>
                {open[i] ? <div className="fade" style={{ color: "var(--mint)", fontWeight: 700, marginTop: 4 }}>✓ {a}</div> : <div className="faint" style={{ fontSize: 13, marginTop: 2 }}>Think, then tap to check</div>}
              </button>
            ))}
          </div>
        </div>
        <div className="card pad">
          <div className="between" style={{ marginBottom: 12 }}>
            <div className="h3">Key words</div>
            <ListenButton text={skill.words.map(([w, m]) => `${w}: ${m}`)} id={`kw-${skill.id}`} title={`${skill.n}: key words`} />
          </div>
          <div className="stack" style={{ gap: 8 }}>
            {skill.words.map(([w, m]) => <div key={w} className="word"><b>{w}</b><span>{m}</span></div>)}
          </div>
        </div>
      </div>

      <div className="between section">
        {prev ? <button className="btn ghost" style={{ flex: 1, justifyContent: "flex-start", textAlign: "left" }} onClick={() => go("skill", { id: prev.id })}><ChevronLeft size={17} style={{ flexShrink: 0 }} /> {prev.n}</button> : <span style={{ flex: 1 }} />}
        {nextS ? <button className="btn ghost" style={{ flex: 1, justifyContent: "flex-end", textAlign: "right" }} onClick={() => go("skill", { id: nextS.id })}>{nextS.n} <ChevronRight size={17} style={{ flexShrink: 0 }} /></button> : <span style={{ flex: 1 }} />}
      </div>
    </div>
  );
}

function ActionCard({ step, tone, icon: Icon, title, sub, cta, onClick, done }) {
  return (
    <button className="card tap pad" onClick={onClick} style={{ textAlign: "left", display: "flex", flexDirection: "column", gap: 14 }}>
      <div className="between">
        <div className="tile-icon" style={{ background: `var(--${tone}-soft)`, color: `var(--${tone === "brand" ? "brand-ink" : tone})` }}><Icon size={22} /></div>
        {done ? <CheckCircle2 size={22} color="var(--mint)" /> : <span className="eyebrow">Step {step}</span>}
      </div>
      <div>
        <div className="h3">{title}</div>
        <div className="muted" style={{ fontSize: 14 }}>{sub}</div>
      </div>
      <span className="row" style={{ color: `var(--${tone === "brand" ? "brand-ink" : tone})`, fontWeight: 700, fontSize: 14, gap: 4 }}>{cta} <ChevronRight size={16} /></span>
    </button>
  );
}

// ================= Lesson player (story cards) =================
function exampleSpeech([title, sit, check, result, lesson], n) {
  return [`Example ${n}: ${title}.`, sit, `Check: ${check}`, `Result: ${result}`, `Lesson: ${lesson}`];
}

// Turns one skill's lesson into a list of short story cards.
function buildCards(skill) {
  const cards = [
    { kind: "intro", emoji: skill.icon, title: skill.n, speech: [`Lesson: ${skill.n}.`, skill.s, skill.def] },
    { kind: "analogy", emoji: "💡", title: "Think of it like this", speech: skill.analogy },
    { kind: "words", emoji: "🔑", title: "Key words", speech: ["Key words.", ...skill.words.map(([w, m]) => `${w}: ${m}`)] },
    { kind: "why", emoji: "🎯", title: "Where it fits and why it matters", speech: ["Where it fits in the job.", ...skill.fits, "Why it matters.", ...skill.why] },
    { kind: "steps", emoji: "🪜", title: "Step by step", speech: skill.steps.map(([a], i) => `Step ${i + 1}. ${a}`) },
    { kind: "goodbad", emoji: "⚖️", title: "Good habit vs bad habit", speech: skill.goodbad.map(([g, b]) => `Do this: ${g}. Not this: ${b}.`) },
    ...skill.examples.map((ex, i) => ({ kind: "example", emoji: "🧪", title: `Example ${i + 1}: ${ex[0]}`, ex, n: i + 1, speech: exampleSpeech(ex, i + 1) })),
    { kind: "mistakes", emoji: "⚠️", title: "Common mistakes", speech: ["Common mistakes.", ...skill.mistakes.map(([m, w]) => `${m}. ${w}`)] },
    { kind: "levels", emoji: "📈", title: "What level are you?", speech: [`Beginner: ${skill.levels[0]}`, `Getting there: ${skill.levels[1]}`, `Expert: ${skill.levels[2]}`] },
    { kind: "cv", emoji: "📝", title: "Your CV and home practice", speech: ["For your CV:", skill.cv[0], skill.cv[1], "Practise at home.", ...skill.prac] },
    { kind: "check", emoji: "❓", title: "Quick check", speech: skill.check.map(([q]) => q) },
    { kind: "done", emoji: "🏁", title: "Lesson complete", speech: [`Well done! You finished the lesson: ${skill.n}. Now try the 20 practice tasks.`] },
  ];
  return cards;
}

export function LessonPlayer({ id }) {
  const { go, markLessonDone, lessonsDone } = useApp();
  const reader = useReader();
  const skill = SKILL_BY_ID[id];
  const cards = buildCards(skill);
  const [i, setI] = useState(0);
  const [auto, setAuto] = useState(false);
  const [mode, setMode] = useState(() => loadJSON("lesson-mode", "story"));
  const [simple, setSimple] = useState(() => loadJSON("simple-mode", false));
  const [celebrate, setCelebrate] = useState(false);
  const touch = useRef(null);
  const card = cards[i];
  const last = i === cards.length - 1;

  function goTo(n) { setI(Math.max(0, Math.min(cards.length - 1, n))); window.scrollTo({ top: 0, behavior: "smooth" }); }

  // Hands-free: read the card, then turn to the next one by itself.
  useEffect(() => {
    if (!auto || mode !== "story") return;
    reader.speak(cards[i].speech, `story-${id}-${i}`, { title: `${skill.n} · ${cards[i].title}`, onDone: () => { if (i < cards.length - 1) setI(n => n + 1); else setAuto(false); } });
  }, [i, auto, mode]); // eslint-disable-line

  useEffect(() => {
    if (card.kind === "done" && !lessonsDone[id]) { markLessonDone(id); setCelebrate(true); }
  }, [card.kind]); // eslint-disable-line

  useEffect(() => {
    function onKey(e) {
      if (/input|textarea|select/i.test(e.target.tagName) || mode !== "story") return;
      if (e.key === "ArrowRight") goTo(i + 1);
      if (e.key === "ArrowLeft") goTo(i - 1);
    }
    window.addEventListener("keydown", onKey);
    return () => window.removeEventListener("keydown", onKey);
  }); // eslint-disable-line

  useEffect(() => () => reader.stop(), []); // eslint-disable-line

  function toggleAuto() {
    if (auto) { setAuto(false); reader.stop(); } else setAuto(true);
  }
  function setModeSaved(m) { setMode(m); saveJSON("lesson-mode", m); setAuto(false); reader.stop(); }
  function toggleSimple() { setSimple(s => { saveJSON("simple-mode", !s); return !s; }); }

  return (
    <div className="focus">
      {celebrate && <Confetti />}
      <div className="focus-top">
        <div className="focus-top-inner">
          <button className="icon-btn" onClick={() => go("skill", { id })} aria-label="Close lesson"><X size={18} /></button>
          {mode === "story"
            ? <div className="segments" aria-label={`Card ${i + 1} of ${cards.length}`}>{cards.map((_, k) => <i key={k} className={k < i ? "done" : k === i ? "now" : ""} />)}</div>
            : <div className="h3" style={{ flex: 1 }}>{skill.icon} {skill.n}</div>}
          <div className="seg" role="group" aria-label="Lesson view">
            <button className={mode === "story" ? "on" : ""} onClick={() => setModeSaved("story")} aria-label="Story cards"><GalleryHorizontal size={16} /></button>
            <button className={mode === "page" ? "on" : ""} onClick={() => setModeSaved("page")} aria-label="One page"><Rows3 size={16} /></button>
          </div>
        </div>
      </div>

      <div className="focus-body">
        <div className="between wrap" style={{ marginBottom: 14, gap: 10 }}>
          <div className="row" style={{ gap: 8 }}>
            {mode === "story" && reader.supported && (
              <button className={`btn sm ${auto ? "primary" : "soft"}`} onClick={toggleAuto}>
                {auto ? <Wave on={reader.status === "playing"} /> : <Headphones size={15} />} {auto ? "Hands-free on" : "Hands-free: read and turn pages"}
              </button>
            )}
            {mode === "page" && <ListenButton text={cards.slice(0, -1).flatMap(c => c.speech)} id={`lesson-all-${id}`} label="Listen to the whole lesson" title={skill.n} />}
          </div>
          <button className="row" onClick={toggleSimple} style={{ border: "none", background: "none", gap: 8, fontSize: 13.5, fontWeight: 700, color: "var(--muted)" }}>
            Extra simple <span className={`switch${simple ? " on" : ""}`} role="switch" aria-checked={simple} />
          </button>
        </div>

        {mode === "story" ? (
          <div key={i} className="story-card rise"
            onTouchStart={e => { touch.current = e.touches[0].clientX; }}
            onTouchEnd={e => { if (touch.current == null) return; const dx = e.changedTouches[0].clientX - touch.current; if (Math.abs(dx) > 70) goTo(i + (dx < 0 ? 1 : -1)); touch.current = null; }}>
            <CardView skill={skill} card={card} simple={simple} />
          </div>
        ) : (
          <div className="stack" style={{ gap: 14 }}>
            {cards.slice(0, -1).map((c, k) => <div key={k} className="story-card" style={{ minHeight: 0 }}><CardView skill={skill} card={c} simple={simple} /></div>)}
            <div className="story-card" style={{ minHeight: 0, textAlign: "center" }}>
              <div className="h2" style={{ marginBottom: 8 }}>Finished reading?</div>
              <button className="btn grad lg" onClick={() => { markLessonDone(id); go("session", { id }); }}><CheckCircle2 size={18} /> Done. Start practice tasks</button>
            </div>
          </div>
        )}
      </div>

      {mode === "story" && (
        <div className="focus-foot">
          <div className="focus-foot-inner">
            <button className="btn ghost lg" onClick={() => goTo(i - 1)} disabled={i === 0} aria-label="Previous card"><ChevronLeft size={20} /></button>
            {last
              ? <button className="btn grad lg full" onClick={() => go("session", { id })}><Target size={18} /> Start the 20 practice tasks</button>
              : <button className="btn primary lg full" onClick={() => goTo(i + 1)}>Next <ChevronRight size={20} /></button>}
          </div>
        </div>
      )}
    </div>
  );
}

function CardView({ skill, card, simple }) {
  const [hl, setHl] = useState(() => loadJSON("highlights", {}));
  const [open, setOpen] = useState({});
  function toggleHl(k) { setHl(h => { const n = { ...h, [`${skill.id}::${k}`]: !h[`${skill.id}::${k}`] }; saveJSON("highlights", n); return n; }); }
  const isHl = k => !!hl[`${skill.id}::${k}`];

  const head = (
    <div className="between" style={{ marginBottom: 16, alignItems: "flex-start" }}>
      <div className="row" style={{ gap: 12, alignItems: "flex-start" }}>
        <div style={{ fontSize: 30, lineHeight: 1 }}>{card.emoji}</div>
        <h2 className="h2" style={{ paddingTop: 2 }}>{card.title}</h2>
      </div>
      {card.kind !== "done" && <ListenButton text={card.speech} id={`card-${skill.id}-${card.kind}-${card.n || ""}`} title={`${skill.n} · ${card.title}`} />}
    </div>
  );

  switch (card.kind) {
    case "intro":
      return (
        <>
          {head}
          <Picture src={skill.image} alt={skill.n} style={{ marginBottom: 18 }} />
          <div className="display grad-text" style={{ fontSize: 24, fontWeight: 800, lineHeight: 1.25, marginBottom: 10 }}>{skill.s}</div>
          {!simple && <p className="big-text" style={{ margin: 0 }}>{skill.def}</p>}
        </>
      );
    case "analogy":
      return (<>{head}{!simple && <p className="big-text" style={{ margin: 0 }}>{skill.analogy[0]}</p>}<Short>{skill.analogy[1]}</Short></>);
    case "words":
      return (<>{head}<div className="stack" style={{ gap: 10 }}>{skill.words.map(([w, m]) => <div key={w} className="word" style={{ fontSize: 16 }}><b>{w}</b><span>{m}</span></div>)}</div></>);
    case "why":
      return (
        <>
          {head}
          <div className="eyebrow" style={{ marginBottom: 4 }}>Where it fits in the job</div>
          {!simple && <p className="big-text" style={{ margin: 0 }}>{skill.fits[0]}</p>}
          <Short>{skill.fits[1]}</Short>
          <div className="eyebrow" style={{ margin: "20px 0 4px" }}>Why it matters</div>
          {!simple && <p className="big-text" style={{ margin: 0 }}>{skill.why[0]}</p>}
          <Short>{skill.why[1]}</Short>
        </>
      );
    case "steps":
      return (
        <>
          {head}
          <div className="stack" style={{ gap: 8 }}>
            {skill.steps.map(([a, b], k) => (
              <div key={k} className={`step${isHl(`step${k}`) ? " hl" : ""}`} onClick={() => toggleHl(`step${k}`)}>
                <div className="num">{k + 1}</div>
                <div>
                  <div style={{ fontWeight: simple ? 700 : 500, fontSize: 16 }}>{simple ? b : a}</div>
                  {!simple && <div style={{ color: "var(--mint)", fontWeight: 700, fontSize: 13.5 }}>{b}</div>}
                </div>
              </div>
            ))}
          </div>
          <div className="faint" style={{ fontSize: 12.5, marginTop: 10 }}>Tip: tap a step to highlight it.</div>
        </>
      );
    case "goodbad":
      return (
        <>
          {head}
          <div className="stack" style={{ gap: 10 }}>
            {skill.goodbad.map(([g, b], k) => (
              <div key={k} className="grid" style={{ gridTemplateColumns: "1fr 1fr", gap: 8 }}>
                <div style={{ background: "var(--mint-soft)", borderRadius: 16, padding: 12 }}><div className="row" style={{ gap: 6, color: "var(--mint)", fontWeight: 800, fontSize: 12 }}><ThumbsUp size={14} /> DO</div>{g}</div>
                <div style={{ background: "var(--coral-soft)", borderRadius: 16, padding: 12 }}><div className="row" style={{ gap: 6, color: "var(--coral)", fontWeight: 800, fontSize: 12 }}><ThumbsDown size={14} /> DON'T</div>{b}</div>
              </div>
            ))}
          </div>
        </>
      );
    case "example":
      return (<>{head}<ExampleBody ex={card.ex} /></>);
    case "mistakes":
      return (
        <>
          {head}
          <div className="stack" style={{ gap: 8 }}>
            {skill.mistakes.map(([m, w], k) => (
              <div key={k} className={`step${isHl(`mis${k}`) ? " hl" : ""}`} onClick={() => toggleHl(`mis${k}`)}>
                <XCircle size={22} color="var(--coral)" style={{ flexShrink: 0 }} />
                <div><div style={{ fontWeight: 700 }}>{m}</div><div className="muted" style={{ fontSize: 14 }}>{w}</div></div>
              </div>
            ))}
          </div>
        </>
      );
    case "levels":
      return (
        <>
          {head}
          <div className="stack" style={{ gap: 10 }}>
            {[["🌱", "Beginner", "coral"], ["🌿", "Getting there", "sun"], ["🌳", "Expert", "mint"]].map(([e, name, tone], k) => (
              <div key={name} className="row" style={{ background: `var(--${tone}-soft)`, borderRadius: 16, padding: 14, gap: 14 }}>
                <div style={{ fontSize: 26 }}>{e}</div>
                <div><div style={{ fontWeight: 800, color: `var(--${tone})`, fontSize: 13 }}>{name.toUpperCase()}</div><div style={{ fontSize: 15.5 }}>{skill.levels[k]}</div></div>
              </div>
            ))}
          </div>
          <div className="faint" style={{ fontSize: 13, marginTop: 12 }}>Be honest with yourself. The practice tasks will move you up.</div>
        </>
      );
    case "cv":
      return (
        <>
          {head}
          <div className="eyebrow" style={{ marginBottom: 6 }}>Put this on your CV</div>
          <div className="display" style={{ fontSize: 19, fontStyle: "italic", lineHeight: 1.45, padding: 16, borderRadius: 16, border: "2px dashed var(--border)" }}>{skill.cv[0]}</div>
          <Short>{skill.cv[1]}</Short>
          <div className="eyebrow" style={{ margin: "20px 0 8px" }}>Practise at home</div>
          <div className="stack" style={{ gap: 8 }}>
            {skill.prac.map((p, k) => (
              <div key={k} className={`step${isHl(`prac${k}`) ? " hl" : ""}`} onClick={() => toggleHl(`prac${k}`)}>
                <Check size={20} color="var(--brand)" style={{ flexShrink: 0 }} /><div>{p}</div>
              </div>
            ))}
          </div>
        </>
      );
    case "check":
      return (
        <>
          {head}
          <div className="stack" style={{ gap: 10 }}>
            {skill.check.map(([q, a], k) => (
              <button key={k} className="soft" onClick={() => setOpen(o => ({ ...o, [k]: !o[k] }))} style={{ border: "none", textAlign: "left", padding: 16 }}>
                <div style={{ fontWeight: 700, fontSize: 16 }}>{q}</div>
                {open[k] ? <div className="fade" style={{ color: "var(--mint)", fontWeight: 700, marginTop: 6 }}>✓ {a}</div> : <div className="faint" style={{ fontSize: 13, marginTop: 4 }}>Say your answer, then tap to check</div>}
              </button>
            ))}
          </div>
        </>
      );
    case "done":
      return (
        <div style={{ textAlign: "center", padding: "30px 0" }}>
          <div style={{ fontSize: 64 }}>🏆</div>
          <div className="h1" style={{ margin: "10px 0" }}>Lesson complete!</div>
          <div className="muted big-text">You learned <b>{skill.n}</b>. Now use it on 20 real tasks.</div>
          <div className="row" style={{ justifyContent: "center", marginTop: 18, gap: 8 }}>
            <span className="pill brand"><Sparkles size={14} /> +50 XP</span>
            <span className="pill mint"><Clock size={14} /> 20 tasks waiting</span>
          </div>
        </div>
      );
    default:
      return null;
  }
}

function Short({ children }) {
  return <div className="short"><Lightbulb size={18} style={{ flexShrink: 0, marginTop: 2 }} /><span>In short: {children}</span></div>;
}

export function ExampleBody({ ex }) {
  const [, sit, check, result, lesson] = ex;
  const Row = ({ label, text, tone }) => (
    <div style={{ padding: "12px 14px", borderRadius: 16, background: `var(--${tone}-soft)` }}>
      <div className="eyebrow" style={{ color: `var(--${tone === "brand" ? "brand-ink" : tone})`, marginBottom: 2 }}>{label}</div>
      <div style={{ fontSize: 15.5 }}>{text}</div>
    </div>
  );
  return (
    <div className="stack" style={{ gap: 8 }}>
      <Row label="Situation" text={sit} tone="sky" />
      <Row label="What to check" text={check} tone="brand" />
      <Row label="Result" text={result} tone="coral" />
      <div className="short" style={{ marginTop: 4 }}><Lightbulb size={18} style={{ flexShrink: 0, marginTop: 2 }} /><span>{lesson}</span></div>
    </div>
  );
}

