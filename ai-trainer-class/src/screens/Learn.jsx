import { useState, useEffect, useRef } from "react";
import {
  Play, BookOpen, Target, Trophy, ChevronRight, ChevronLeft, X, CheckCircle2, Download, ArrowUpRight,
  Lightbulb, ThumbsUp, ThumbsDown, XCircle, Check, RotateCcw, Headphones, Rows3, GalleryHorizontal, Sparkles, Clock, Zap,
} from "lucide-react";
import { useApp, Ring, Bar, Picture, Confetti } from "../ui.jsx";
import { ListenButton, useReader, Wave } from "../lib/reader.jsx";
import { loadJSON, saveJSON } from "../lib/store.js";
import { skillStats, skillState, nextSkill, overall, lastWeek } from "../lib/gamify.js";
import { DAYS, ROLES, SKILLS, SKILL_BY_ID, TEACHER_IMG } from "../data/course.js";

const pad2 = n => String(n).padStart(2, "0");
export function skillNumber(skill) {
  return ROLES.find(r => r.key === skill.roleKey).skills.findIndex(s => s.id === skill.id) + 1;
}

// ================= Learn home: bento board + course index =================
export function LearnHome() {
  const { profile, taskProgress, lessonsDone, go, inProgress, resumeQuiz, level, xp, streak, canInstall, promptInstall } = useApp();
  const reader = useReader();
  const next = nextSkill(taskProgress, lessonsDone);
  const all = overall(taskProgress, lessonsDone);
  const [courseDay, setCourseDay] = useState(() => {
    const saved = loadJSON("course-day", null);
    return DAYS.some(d => d.day === saved) ? saved : next?.day || DAYS[DAYS.length - 1]?.day || 1;
  });
  const dayInfo = DAYS.find(d => d.day === courseDay) || DAYS[0];
  function pickDay(n) { setCourseDay(n); saveJSON("course-day", n); }
  const hour = new Date().getHours();
  const hello = hour < 12 ? "Good morning" : hour < 17 ? "Good afternoon" : "Good evening";
  const first = profile.name ? profile.name.split(" ")[0] : "friend";
  const nextAction = !next ? null : !lessonsDone[next.id]
    ? { label: "Start the lesson", run: () => go("lesson", { id: next.id }) }
    : { label: "Continue practice", run: () => go("session", { id: next.id }) };
  const ticker = SKILLS.map(s => s.s.toUpperCase()).join("  ✦  ");

  return (
    <div>
      <div className="bento">
        {/* Continue */}
        <section className="hero s8 rise" style={{ display: "flex", gap: 20, alignItems: "center", flexWrap: "wrap" }}>
          <div style={{ flex: "1 1 300px", minWidth: 0 }}>
            <div className="eyebrow">{hello}{next ? ` · Day ${next.day}` : ""}</div>
            <h1 className="h1" style={{ margin: "10px 0 14px" }}>
              {next ? <>Ready to <span className="serif">train some AI,</span> {first}?</> : <>You are <span className="serif">all caught up!</span> 🎉</>}
            </h1>
            <div className="row wrap" style={{ gap: 10 }}>
              {nextAction
                ? <button className="btn inkfill lg" onClick={nextAction.run}><Play size={18} fill="currentColor" /> {nextAction.label}</button>
                : <button className="btn inkfill lg" onClick={() => go("practice")}><Trophy size={18} /> Take a Role Test</button>}
              {inProgress && <button className="btn white lg" onClick={resumeQuiz}><RotateCcw size={18} /> Finish your test</button>}
            </div>
            {next && <div style={{ marginTop: 14, fontSize: 14.5 }}>Up next: <b>{next.n}</b> · {skillStats(next, taskProgress).got}/{next.taskIds.length} tasks</div>}
          </div>
          {next && (
            <figure className="polaroid tilt-r" style={{ width: 210, margin: "0 6px 0 0", flexShrink: 0 }}>
              <img src={next.image} alt="" />
              <figcaption>{next.icon} {next.n}</figcaption>
            </figure>
          )}
        </section>

        {/* Today */}
        <div className="s4"><TodayCard /></div>

        {/* Level */}
        <button className="card tap pad s4 fill-violet" onClick={() => go("progress")} style={{ textAlign: "left" }}>
          <div className="between"><span className="eyebrow">Your level</span><ArrowUpRight size={20} /></div>
          <div className="h2" style={{ margin: "10px 0 2px" }}>{level.icon} {level.name}</div>
          <div className="mono" style={{ fontSize: 14, marginBottom: 12 }}>{xp} XP{level.next ? ` · ${level.toNext} to next` : ""}</div>
          <Bar pct={level.pct} brand />
        </button>

        {/* Streak */}
        <div className="card pad s4 fill-orange" style={{ display: "flex", flexDirection: "column", justifyContent: "space-between" }}>
          <span className="eyebrow">Day streak</span>
          <div className="row" style={{ alignItems: "flex-end", gap: 8 }}>
            <span className="mono" style={{ fontSize: 64, fontWeight: 700, lineHeight: .9 }}>{streak}</span>
            <span className="serif" style={{ fontSize: 24, paddingBottom: 4 }}>{streak === 1 ? "day" : "days"} 🔥</span>
          </div>
          <div style={{ fontSize: 14 }}>{streak ? "Keep it going: study a little every day." : "Study today to start a streak."}</div>
        </div>

        {/* Daily challenge */}
        <div className="card pad s4 fill-pink" style={{ display: "flex", flexDirection: "column", gap: 12, justifyContent: "space-between" }}>
          <div className="between"><span className="eyebrow">Daily challenge</span><Zap size={20} /></div>
          <div className="h2">10 fresh tasks, <span className="serif">every day.</span></div>
          <button className="btn white" onClick={() => go("practice")}>Go to Practice <ChevronRight size={16} /></button>
        </div>

        {/* Big picture */}
        <button className="card tap pad s6 fill-blue" onClick={() => go("bigpicture")} style={{ textAlign: "left", display: "flex", gap: 16, alignItems: "center" }}>
          <div style={{ flex: 1 }}>
            <span className="eyebrow">New here?</span>
            <div className="h2" style={{ margin: "6px 0" }}>The big picture <span className="serif">in 5 drawings</span></div>
            <div style={{ fontSize: 14.5 }}>How AI learns from people like you.</div>
          </div>
          <div className="picture" style={{ width: 130, flexShrink: 0, transform: "rotate(-3deg)", borderColor: "var(--ink)" }}><img src={TEACHER_IMG} alt="" /></div>
        </button>

        {/* AI Reader */}
        <div className="card pad s6 fill-yellow" style={{ display: "flex", gap: 16, alignItems: "center" }}>
          <div style={{ width: 64, height: 64, borderRadius: "50%", border: "2.5px solid var(--ink)", background: "#fff", display: "grid", placeItems: "center", flexShrink: 0 }}>
            <Headphones size={30} />
          </div>
          <div style={{ flex: 1, minWidth: 0 }}>
            <span className="eyebrow">AI Reader</span>
            <div className="h2" style={{ margin: "6px 0 10px" }}>Too tired to read? <span className="serif">Listen.</span></div>
            {reader?.supported
              ? <ListenButton text={`Hi ${first}! I am your AI Reader. Tap Listen on any card and I will read it to you. In lessons, turn on hands-free, and I will read every card and turn the pages for you.`} id="home-reader" label="Hear how it works" title="AI Reader" />
              : <div style={{ fontSize: 14 }}>Open the app in Chrome or Safari to use it.</div>}
          </div>
        </div>
      </div>

      {canInstall && (
        <div className="card pad row section" style={{ gap: 14 }}>
          <div className="tile-icon fill-lime"><Download size={22} /></div>
          <div style={{ flex: 1 }}><div className="h3">Install the app</div><div className="muted" style={{ fontSize: 14 }}>On your home screen. Opens fast, works offline.</div></div>
          <button className="btn primary sm" onClick={promptInstall}>Install</button>
        </div>
      )}

      <div className="marquee section" aria-hidden="true"><div>{ticker}  ✦  {ticker}</div></div>

      {/* Course index, one day at a time */}
      <div className="section">
        <div className="section-head">
          <div style={{ minWidth: 0 }}>
            <div className="eyebrow">The course · {all.got}/{all.total} tasks done</div>
            <h2 className="h1" style={{ fontSize: "clamp(28px, 4vw, 42px)" }}>{DAYS.length} {DAYS.length === 1 ? "day" : "days"}. {SKILLS.length} skills. <span className="serif">One step at a time.</span></h2>
          </div>
        </div>
        <div className="chips" style={{ marginBottom: 18 }} role="tablist" aria-label="Choose a day">
          {DAYS.map(d => {
            const ids = d.roles.flatMap(r => r.skills.flatMap(s => s.taskIds));
            const got = ids.filter(id => taskProgress[id]?.s === "got").length;
            return (
              <button key={d.day} role="tab" aria-selected={courseDay === d.day} className={`chip${courseDay === d.day ? " on" : ""}`} onClick={() => pickDay(d.day)} style={{ padding: "9px 16px", fontSize: 14.5 }}>
                Day {d.day} <span className="mono" style={{ fontSize: 12, opacity: .75 }}>{ids.length ? `${Math.round((got / ids.length) * 100)}%` : ""}</span>
              </button>
            );
          })}
          <span className="chip" style={{ borderStyle: "dashed", opacity: .7 }}>Day {(DAYS[DAYS.length - 1]?.day || 0) + 1} · soon</span>
        </div>
        {dayInfo && (
          <>
            <div className="card pad between wrap" style={{ marginBottom: 18, gap: 14 }}>
              <div style={{ minWidth: 0, flex: "1 1 280px" }}>
                <div className="eyebrow">Day {dayInfo.day}</div>
                <div className="h2" style={{ marginTop: 4 }}>{dayInfo.subtitle || dayInfo.title}</div>
                <div className="muted" style={{ fontSize: 14, marginTop: 4 }}>{dayInfo.roles.length} roles · {dayInfo.roles.reduce((n, r) => n + r.skills.length, 0)} skills · {dayInfo.roles.reduce((n, r) => n + r.skills.reduce((m, s) => m + s.taskIds.length, 0), 0)} tasks</div>
              </div>
              {dayInfo.docs?.length > 0 && (
                <div className="row wrap" style={{ gap: 8 }}>
                  {dayInfo.docs.map(doc => <button key={doc.id} className="btn sm" onClick={() => go("doc", { day: dayInfo.day, id: doc.id })}>{{ lecture: "📒", mustknow: "⭐", cvs: "📄", assignment: "✅" }[doc.kind] || "📝"} {doc.label}</button>)}
                </div>
              )}
            </div>
            {dayInfo.roles.map(role => <RoleIndex key={role.id} role={role} current={next} />)}
          </>
        )}
      </div>
    </div>
  );
}

function RoleIndex({ role, current }) {
  const { taskProgress, lessonsDone, go } = useApp();
  const done = role.skills.filter(s => skillState(s, taskProgress, lessonsDone) === "done").length;
  return (
    <div style={{ marginBottom: 30 }}>
      <div className={`role-band fill-${role.fill}`}>
        <div style={{ minWidth: 0, flex: "1 1 260px" }}>
          <div className="eyebrow">Day {role.day} · Part {role.part}</div>
          <div className="h2" style={{ margin: "4px 0" }}>{role.icon} {role.name}</div>
          <div style={{ fontSize: 14.5, maxWidth: 560 }}>{role.intro}</div>
        </div>
        <div className="sticker" style={{ fontSize: 14 }}>{done}/{role.skills.length} done</div>
      </div>
      <div className="card" style={{ marginTop: 14, overflow: "hidden" }}>
        {role.skills.map((s, i) => {
          const st = skillStats(s, taskProgress);
          const state = skillState(s, taskProgress, lessonsDone);
          const isCurrent = current?.id === s.id;
          return (
            <div key={s.id}>
              {i > 0 && <div style={{ height: 2, background: "var(--line)", opacity: .12 }} />}
              <button className="index-row" onClick={() => go("skill", { id: s.id })} style={{ borderRadius: 0, background: isCurrent ? "var(--surface-2)" : undefined }} aria-label={`${s.n}: ${st.got} of ${st.total} tasks done`}>
                <span className="index-num" style={{ color: state === "done" ? "var(--mint)" : undefined }}>{pad2(i + 1)}</span>
                <span style={{ minWidth: 0 }}>
                  <span className="h3" style={{ display: "block" }}>{s.icon} {s.n}</span>
                  <span className="muted" style={{ display: "block", fontSize: 14 }}>{s.s}</span>
                  <span style={{ display: "block", maxWidth: 260, marginTop: 8 }}><Bar pct={st.pct} /></span>
                </span>
                <span className="index-end row" style={{ gap: 8 }}>
                  {state === "done" ? <span className="pill mint">✓ Done</span>
                    : isCurrent ? <span className="pill sun">▶ You are here</span>
                    : state === "started" ? <span className="pill sky">{st.got}/{st.total}</span>
                    : <span className="pill">New</span>}
                  <ChevronRight size={20} />
                </span>
              </button>
            </div>
          );
        })}
      </div>
    </div>
  );
}

// Daily goal ring with this week's study bars.
export function TodayCard() {
  const { todayCount, profile, activity } = useApp();
  const goal = profile.dailyGoal || 10;
  const pct = Math.min(100, Math.round((todayCount / goal) * 100));
  const week = lastWeek(activity);
  const max = Math.max(goal, ...week.map(d => d.count));
  return (
    <div className="card pad" style={{ height: "100%" }}>
      <div className="row" style={{ gap: 16 }}>
        <Ring pct={pct} size={96} stroke={16} color={pct >= 100 ? "var(--green)" : "var(--lime)"}>
          <div><div className="mono" style={{ fontWeight: 700, fontSize: 22, lineHeight: 1 }}>{todayCount}</div><div className="faint" style={{ fontSize: 11 }}>/ {goal}</div></div>
        </Ring>
        <div style={{ minWidth: 0 }}>
          <div className="eyebrow">Today's goal</div>
          <div className="h3" style={{ marginTop: 4 }}>{pct >= 100 ? "Done! 🎉" : `${goal - todayCount} more to go`}</div>
          <div className="faint" style={{ fontSize: 13 }}>Tasks, cards and test questions</div>
        </div>
      </div>
      <div style={{ display: "flex", gap: 6, alignItems: "flex-end", height: 76, marginTop: 16 }}>
        {week.map(d => (
          <div key={d.key} style={{ flex: 1, textAlign: "center" }}>
            <div style={{ height: 54, display: "flex", alignItems: "flex-end" }}>
              <div style={{ width: "100%", borderRadius: 6, border: "2px solid var(--line)", height: `${Math.max(14, (d.count / max) * 100)}%`, background: d.count >= goal ? "var(--green)" : d.count ? "var(--lime)" : "var(--surface-2)" }} />
            </div>
            <div className="mono" style={{ fontSize: 11, fontWeight: 700, marginTop: 4, opacity: d.today ? 1 : .6 }}>{d.label}</div>
          </div>
        ))}
      </div>
    </div>
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
  const role = ROLES.find(r => r.key === skill.roleKey);
  const n = skillNumber(skill);

  return (
    <div>
      <button className="btn sm" style={{ marginBottom: 18 }} onClick={() => go("learn")}><ChevronLeft size={16} /> The course</button>

      <div className="bento">
        <section className={`hero s7 fill-${role.fill}`}>
          <div className="row wrap" style={{ gap: 8 }}>
            <span className="sticker">Day {skill.day} · {role.short} · Skill {pad2(n)}/{pad2(role.skills.length)}</span>
            {lessonsDone[skill.id] ? <span className="sticker" style={{ background: "var(--green)" }}>✓ Lesson done</span> : <span className="sticker" style={{ background: "var(--yellow)" }}>Lesson to do</span>}
          </div>
          <h1 className="h1" style={{ margin: "16px 0 10px" }}>{skill.icon} {skill.n}</h1>
          <div className="serif" style={{ fontSize: 26, lineHeight: 1.2 }}>“{skill.s}”</div>
          <div style={{ marginTop: 20, maxWidth: 420 }}>
            <Bar pct={st.pct} />
            <div className="mono" style={{ fontSize: 13, marginTop: 6 }}>{st.got}/{st.total} tasks done{st.again ? ` · ${st.again} to redo` : ""}</div>
          </div>
        </section>
        <div className="s5" style={{ display: "grid", placeItems: "center", padding: 10 }}>
          <figure className="polaroid tilt-l" style={{ margin: 0, width: "100%", maxWidth: 380 }}>
            <img src={skill.image} alt={skill.n} />
            <figcaption>{skill.n}</figcaption>
          </figure>
        </div>
      </div>

      <div className="grid g3 section">
        <StepCard n="1" fill="violet" icon={BookOpen} title="Read the lesson" sub={`${lessonCards} short slides · about ${Math.round(lessonCards * 0.6)} min`}
          cta={lessonsDone[skill.id] ? "Read again" : "Start lesson"} done={!!lessonsDone[skill.id]} onClick={() => go("lesson", { id: skill.id })} />
        {st.total > 0 ? (
          <>
            <StepCard n="2" fill="green" icon={Target} title="Do the tasks" sub={left ? `${left} of ${st.total} tasks left` : `All ${st.total} done!`}
              cta={st.tried ? "Continue" : "Start practice"} done={st.got === st.total} onClick={() => go("session", { id: skill.id })} />
            <StepCard n="3" fill="yellow" icon={Trophy} title="Take the test" sub={`${st.total} questions, answers as you go`}
              cta="Start test" onClick={() => startQuiz({ count: st.total, category: skill.n, idPool: skill.taskIds, mode: "learn" })} />
          </>
        ) : (
          <div className="card pad" style={{ display: "grid", placeItems: "center", textAlign: "center", borderStyle: "dashed" }}>
            <div><div className="h3">Practice tasks coming soon</div><div className="muted" style={{ fontSize: 14 }}>They appear when the task bank for Day {skill.day} is added.</div></div>
          </div>
        )}
      </div>

      {st.total > 0 && <div className="card pad section">
        <div className="between wrap" style={{ marginBottom: 14 }}>
          <div className="h2">All {st.total} tasks</div>
          {st.again > 0 && <button className="btn sm danger" onClick={() => go("session", { id: skill.id, filter: "again" })}><RotateCcw size={14} /> Redo the {st.again} I missed</button>}
        </div>
        <div className="dots">
          {skill.taskIds.map((tid, i) => {
            const s = taskProgress[tid]?.s;
            return <button key={tid} className={`dot${s ? ` ${s}` : ""}`} onClick={() => go("session", { id: skill.id, task: tid })} aria-label={`Task ${i + 1}`}>{i + 1}</button>;
          })}
        </div>
        <div className="row wrap" style={{ fontSize: 13, marginTop: 14, gap: 8 }}>
          <span className="pill mint">Got it</span><span className="pill coral">Redo</span><span className="pill">Not tried</span>
        </div>
      </div>}

      <div className="grid g2 section">
        <div className="card pad fill-blue">
          <div className="h2" style={{ marginBottom: 14 }}>Quick check</div>
          <div className="stack" style={{ gap: 10 }}>
            {skill.check.map(([q, a], i) => (
              <button key={i} className="soft" onClick={() => setOpen(o => ({ ...o, [i]: !o[i] }))} style={{ textAlign: "left", cursor: "pointer" }}>
                <div style={{ fontWeight: 700 }}>{q}</div>
                {open[i] ? <div className="fade" style={{ fontWeight: 700, marginTop: 6 }}>✅ {a}</div> : <div className="faint" style={{ fontSize: 13, marginTop: 2 }}>Think, then tap</div>}
              </button>
            ))}
          </div>
        </div>
        <div className="card pad fill-yellow">
          <div className="between" style={{ marginBottom: 14 }}>
            <div className="h2">Key words</div>
            <ListenButton text={skill.words.map(([w, m]) => `${w}: ${m}`)} id={`kw-${skill.id}`} title={`${skill.n}: key words`} />
          </div>
          <div className="stack" style={{ gap: 10 }}>
            {skill.words.map(([w, m]) => <div key={w} className="word"><b>{w}</b><span>{m}</span></div>)}
          </div>
        </div>
      </div>

      <div className="between section" style={{ gap: 12 }}>
        {prev ? <button className="btn" style={{ flex: 1, justifyContent: "flex-start", textAlign: "left" }} onClick={() => go("skill", { id: prev.id })}><ChevronLeft size={17} style={{ flexShrink: 0 }} /> {prev.n}</button> : <span style={{ flex: 1 }} />}
        {nextS ? <button className="btn primary" style={{ flex: 1, justifyContent: "flex-end", textAlign: "right" }} onClick={() => go("skill", { id: nextS.id })}>{nextS.n} <ChevronRight size={17} style={{ flexShrink: 0 }} /></button> : <span style={{ flex: 1 }} />}
      </div>
    </div>
  );
}

function StepCard({ n, fill, icon: Icon, title, sub, cta, onClick, done }) {
  return (
    <button className={`card tap pad fill-${fill}`} onClick={onClick} style={{ textAlign: "left", display: "flex", flexDirection: "column", gap: 16, minHeight: 200 }}>
      <div className="between">
        <span className="mono" style={{ fontSize: 48, fontWeight: 700, lineHeight: .9 }}>{n}</span>
        {done ? <span className="stamp" style={{ color: "#0B6B3C" }}>Done</span> : <Icon size={26} />}
      </div>
      <div style={{ flex: 1 }}>
        <div className="h2">{title}</div>
        <div style={{ fontSize: 14.5, marginTop: 4 }}>{sub}</div>
      </div>
      <span className="row" style={{ fontWeight: 700, fontFamily: "'Space Grotesk', sans-serif", gap: 4 }}>{cta} <ArrowUpRight size={18} /></span>
    </button>
  );
}

// ================= Lesson player (deck of slides) =================
// Slide colours: every kind of slide has its own sticker colour.
const CARD_FILL = { intro: "lime", analogy: "pink", words: "yellow", why: "blue", example: "violet", mistakes: "orange", tested: "yellow", levels: "green", check: "blue", done: "lime" };
const fillOf = kind => (CARD_FILL[kind] ? ` fill-${CARD_FILL[kind]}` : "");

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
    ...(skill.tested?.[0] ? [{ kind: "tested", emoji: "🧪", title: "How it's tested", speech: ["How it's tested.", ...skill.tested] }] : []),
    { kind: "goodbad", emoji: "⚖️", title: "Good habit vs bad habit", speech: skill.goodbad.map(([g, b]) => `Do this: ${g}. Not this: ${b}.`) },
    ...skill.examples.map((ex, i) => ({ kind: "example", emoji: "🧪", title: `Example ${i + 1}: ${ex[0]}`, ex, n: i + 1, speech: exampleSpeech(ex, i + 1) })),
    { kind: "mistakes", emoji: "⚠️", title: "Common mistakes", speech: ["Common mistakes.", ...skill.mistakes.map(([m, w]) => `${m}. ${w}`)] },
    { kind: "levels", emoji: "📈", title: "What level are you?", speech: [`Beginner: ${skill.levels[0]}`, `Getting there: ${skill.levels[1]}`, `Expert: ${skill.levels[2]}`] },
    { kind: "cv", emoji: "📝", title: "Your CV and home practice", speech: ["For your CV:", skill.cv[0], skill.cv[1], "Practise at home.", ...skill.prac] },
    { kind: "check", emoji: "❓", title: "Quick check", speech: skill.check.map(([q]) => q) },
    { kind: "done", emoji: "🏁", title: "Lesson complete", speech: [`Well done! You finished the lesson: ${skill.n}.${skill.taskIds.length ? ` Now try the ${skill.taskIds.length} practice tasks.` : ""}`] },
  ];
  // What the AI Reader says in "Extra simple" mode: only the easy lines.
  const easy = {
    intro: [`Lesson: ${skill.n}.`, skill.s],
    analogy: [skill.analogy[1] || skill.analogy[0]],
    why: ["Where it fits.", skill.fits[1] || skill.fits[0], "Why it matters.", skill.why[1] || skill.why[0]],
    steps: skill.steps.map(([a, b], i) => `Step ${i + 1}. ${b || a}`),
    tested: [skill.tested?.[1] || skill.tested?.[0] || ""],
    cv: ["For your CV:", skill.cv[1] || skill.cv[0], "Practise at home.", ...skill.prac],
  };
  cards.forEach(c => {
    if (easy[c.kind]) c.simpleSpeech = easy[c.kind];
    else if (c.kind === "example") c.simpleSpeech = [`Example ${c.n}: ${c.ex[0]}.`, c.ex[1], c.ex[4]];
    else c.simpleSpeech = c.speech;
  });
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
    reader.speak(simple ? cards[i].simpleSpeech : cards[i].speech, `story-${id}-${i}`, { title: `${skill.n} · ${cards[i].title}`, onDone: () => { if (i < cards.length - 1) setI(n => n + 1); else setAuto(false); } });
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
          <div style={{ flex: 1, minWidth: 0 }}>
            <div className="between" style={{ marginBottom: 6, gap: 8 }}>
              <span style={{ fontWeight: 700, fontSize: 14, whiteSpace: "nowrap", overflow: "hidden", textOverflow: "ellipsis" }}>{skill.icon} {skill.n}</span>
              {mode === "story" && <span className="mono" style={{ fontSize: 13, fontWeight: 700, flexShrink: 0 }}>{i + 1}/{cards.length}</span>}
            </div>
            <div className="bar brand" style={{ height: 10 }} aria-label={`Card ${i + 1} of ${cards.length}`}><i style={{ width: `${mode === "story" ? ((i + 1) / cards.length) * 100 : 100}%` }} /></div>
          </div>
          <div className="seg" role="group" aria-label="Lesson view">
            <button className={mode === "story" ? "on" : ""} onClick={() => setModeSaved("story")} aria-label="Story cards"><GalleryHorizontal size={16} /></button>
            <button className={mode === "page" ? "on" : ""} onClick={() => setModeSaved("page")} aria-label="One page"><Rows3 size={16} /></button>
          </div>
        </div>
      </div>

      <div className="focus-body">
        <div className="row wrap" style={{ marginBottom: 16, gap: 8 }}>
          <button className={`chip${simple ? " on" : ""}`} onClick={toggleSimple} aria-pressed={simple} style={{ padding: "8px 14px" }}>
            {simple ? "✓" : "🟢"} Extra simple {simple ? "on" : "off"}
          </button>
          <div className="row" style={{ gap: 8 }}>
            {mode === "story" && reader.supported && (
              <button className={`chip${auto ? " on" : ""}`} onClick={toggleAuto} aria-pressed={auto} style={{ padding: "8px 14px" }}>
                {auto ? <Wave on={reader.status === "playing"} /> : <Headphones size={15} />} Hands-free {auto ? "on" : "off"}
              </button>
            )}
            {mode === "page" && <ListenButton text={cards.slice(0, -1).flatMap(c => (simple ? c.simpleSpeech : c.speech))} id={`lesson-all-${id}`} label="Listen to the whole lesson" title={skill.n} />}
          </div>
        </div>
        {simple && <div className="faint" style={{ fontSize: 13.5, margin: "-6px 0 14px" }}>Showing only the easy words. The AI Reader reads the easy words too.</div>}

        {mode === "story" ? (
          <div key={i} className={`story-card rise${fillOf(card.kind)}`}
            onTouchStart={e => { touch.current = e.touches[0].clientX; }}
            onTouchEnd={e => { if (touch.current == null) return; const dx = e.changedTouches[0].clientX - touch.current; if (Math.abs(dx) > 70) goTo(i + (dx < 0 ? 1 : -1)); touch.current = null; }}>
            <CardView skill={skill} card={card} simple={simple} />
          </div>
        ) : (
          <div className="stack" style={{ gap: 14 }}>
            {cards.slice(0, -1).map((c, k) => <div key={k} className={`story-card${fillOf(c.kind)}`} style={{ minHeight: 0 }}><CardView skill={skill} card={c} simple={simple} /></div>)}
            <div className="story-card" style={{ minHeight: 0, textAlign: "center" }}>
              <div className="h2" style={{ marginBottom: 8 }}>Finished reading?</div>
              <button className="btn grad lg" onClick={() => { markLessonDone(id); go(skill.taskIds.length ? "session" : "skill", { id }); }}><CheckCircle2 size={18} /> {skill.taskIds.length ? "Done. Start practice tasks" : "Done"}</button>
            </div>
          </div>
        )}
      </div>

      {mode === "story" && (
        <div className="focus-foot">
          <div className="focus-foot-inner">
            <button className="btn ghost lg" onClick={() => goTo(i - 1)} disabled={i === 0} aria-label="Previous card"><ChevronLeft size={20} /></button>
            {last
              ? (skill.taskIds.length
                ? <button className="btn grad lg full" onClick={() => go("session", { id })}><Target size={18} /> Start the {skill.taskIds.length} practice tasks</button>
                : <button className="btn grad lg full" onClick={() => go("skill", { id })}><CheckCircle2 size={18} /> Back to the skill</button>)
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
      {card.kind !== "done" && <ListenButton text={simple ? card.simpleSpeech : card.speech} id={`card-${skill.id}-${card.kind}-${card.n || ""}`} title={`${skill.n} · ${card.title}`} />}
    </div>
  );

  switch (card.kind) {
    case "intro":
      return (
        <>
          {head}
          <Picture src={skill.image} alt={skill.n} style={{ marginBottom: 18 }} />
          <div className="serif" style={{ fontSize: 34, lineHeight: 1.12, marginBottom: 12 }}>“{skill.s}”</div>
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
          {skill.stepsImage && <Picture src={skill.stepsImage} alt={`${skill.n}: the steps`} style={{ marginBottom: 14 }} />}
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
    case "tested":
      return (<>{head}{!simple && <p className="big-text" style={{ margin: 0 }}>{skill.tested[0]}</p>}{skill.tested[1] && <Short>{skill.tested[1]}</Short>}</>);
    case "goodbad":
      return (
        <>
          {head}
          <div className="stack" style={{ gap: 10 }}>
            {skill.goodbad.map(([g, b], k) => (
              <div key={k} className="grid" style={{ gridTemplateColumns: "1fr 1fr", gap: 8 }}>
                <div className="fill-green" style={{ borderRadius: 14, padding: 12, border: "2px solid var(--ink)" }}><div className="row mono" style={{ gap: 6, fontWeight: 700, fontSize: 12 }}><ThumbsUp size={14} /> DO</div>{g}</div>
                <div className="fill-pink" style={{ borderRadius: 14, padding: 12, border: "2px solid var(--ink)" }}><div className="row mono" style={{ gap: 6, fontWeight: 700, fontSize: 12 }}><ThumbsDown size={14} /> DON'T</div>{b}</div>
              </div>
            ))}
          </div>
        </>
      );
    case "example":
      return (<>{head}<ExampleBody ex={card.ex} simple={simple} /></>);
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
            {[["🌱", "Beginner"], ["🌿", "Getting there"], ["🌳", "Expert"]].map(([e, name], k) => (
              <div key={name} className="row" style={{ background: "#fff", color: "var(--ink)", border: "2px solid var(--ink)", borderRadius: 14, padding: 14, gap: 14 }}>
                <div style={{ fontSize: 26 }}>{e}</div>
                <div><div className="mono" style={{ fontWeight: 700, fontSize: 12 }}>{`0${k + 1} · ${name.toUpperCase()}`}</div><div style={{ fontSize: 15.5 }}>{skill.levels[k]}</div></div>
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
          <div className="serif" style={{ fontSize: 24, lineHeight: 1.3, padding: 18, borderRadius: 14, border: "2.5px dashed var(--line)" }}>{skill.cv[0]}</div>
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
          <div className="muted big-text">You learned <b>{skill.n}</b>.{skill.taskIds.length ? ` Now use it on ${skill.taskIds.length} real tasks.` : ""}</div>
          <div className="row" style={{ justifyContent: "center", marginTop: 18, gap: 8 }}>
            <span className="pill brand"><Sparkles size={14} /> +50 XP</span>
            {skill.taskIds.length > 0 && <span className="pill mint"><Clock size={14} /> {skill.taskIds.length} tasks waiting</span>}
          </div>
        </div>
      );
    default:
      return null;
  }
}

function Short({ children }) {
  return <div className="short"><Lightbulb size={18} style={{ flexShrink: 0, marginTop: 2 }} /><span><span style={{ fontWeight: 800 }}>In simple words:</span> {children}</span></div>;
}

export function ExampleBody({ ex, simple }) {
  const [, sit, check, result, lesson] = ex;
  const FILL = { sky: "blue", brand: "yellow", coral: "pink" };
  const Row = ({ label, text, tone }) => (
    <div className={`fill-${FILL[tone]}`} style={{ padding: "12px 14px", borderRadius: 14, border: "2px solid var(--ink)" }}>
      <div className="eyebrow" style={{ marginBottom: 2 }}>{label}</div>
      <div style={{ fontSize: 15.5 }}>{text}</div>
    </div>
  );
  return (
    <div className="stack" style={{ gap: 8 }}>
      <Row label="Situation" text={sit} tone="sky" />
      {!simple && <Row label="What to check" text={check} tone="brand" />}
      {!simple && <Row label="Result" text={result} tone="coral" />}
      <div className="short" style={{ marginTop: 4 }}><Lightbulb size={18} style={{ flexShrink: 0, marginTop: 2 }} /><span><span style={{ fontWeight: 800 }}>In simple words:</span> {lesson}</span></div>
    </div>
  );
}

