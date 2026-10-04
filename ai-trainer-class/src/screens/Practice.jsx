import { useState, useEffect } from "react";
import {
  Zap, SlidersHorizontal, RotateCcw, Layers, Trophy, ChevronRight, ChevronLeft, X, Eye, CheckCircle2, XCircle,
  Bookmark, Grid3x3, Flag, Type, Timer, Target, Sparkles, Play, BookOpen, Crown,
} from "lucide-react";
import { useApp, Ring, Bar, Sheet, SheetHead, Situation, Explanation, Confetti, PageHead, Empty } from "../ui.jsx";
import { ListenButton, useReader } from "../lib/reader.jsx";
import { loadJSON, saveJSON } from "../lib/store.js";
import { LETTERS, dailySeed, buildBalancedPool, formatTime, estimateMinutes, questionSpeech, taskSpeech } from "../lib/quiz.js";
import { XP } from "../lib/gamify.js";
import { ROLES, SKILLS, TASKS, TASK_BY_ID, SKILL_BY_ID } from "../data/course.js";

const ROLE_TESTS = [
  ...ROLES.map(r => ({ id: `${r.short} Test`, name: `${r.name} Test`, icon: r.icon, skillIds: r.skills.map(s => s.id), perSkill: r.skills.length >= 10 ? 5 : 6 })),
  { id: "Full Day 1 Test", name: "Full Day 1 Test", icon: "🎓", skillIds: SKILLS.map(s => s.id), perSkill: 4 },
];

// ================= Practice hub =================
export function PracticeHub() {
  const { startQuiz, go, wrongBank, inProgress, resumeQuiz, history } = useApp();
  const dailyKey = `daily-${dailySeed()}`;
  const daily = loadJSON(dailyKey, null);
  const weakIds = Object.keys(wrongBank).map(Number).filter(id => TASK_BY_ID[id]);

  function roleTest(p) {
    const seed = Math.floor(Math.random() * 1e9);
    const idPool = buildBalancedPool(seed, p.skillIds, p.perSkill);
    startQuiz({ count: idPool.length, category: p.id, idPool, seedOverride: seed, mode: "exam" });
  }

  return (
    <div>
      <PageHead eyebrow="Practice" title="Train your judgment" sub="Short drills, full tests, and review of what you missed." />

      {inProgress && (
        <div className="card pad row" style={{ marginBottom: 16, gap: 14, borderColor: "var(--brand)" }}>
          <div className="tile-icon fill-violet"><RotateCcw size={21} /></div>
          <div style={{ flex: 1 }}>
            <div className="h3">You have a test to finish</div>
            <div className="muted" style={{ fontSize: 14 }}>{inProgress.meta?.category} · question {(inProgress.idx || 0) + 1} of {inProgress.quiz?.length}</div>
          </div>
          <button className="btn primary sm" onClick={resumeQuiz}>Continue</button>
        </div>
      )}

      <div className="hero fill-orange" style={{ marginBottom: 18 }}>
        <div className="between wrap" style={{ gap: 16 }}>
          <div>
            <div className="eyebrow">{new Date().toLocaleDateString(undefined, { weekday: "long", month: "long", day: "numeric" })}</div>
            <div className="h1" style={{ fontSize: "clamp(28px,4vw,40px)", margin: "6px 0" }}>⚡ Daily <span className="serif">Challenge</span></div>
            <div style={{ opacity: .9 }}>{daily ? `Done! You scored ${daily.pct}%. New tasks tomorrow.` : "10 fresh tasks from all skills. Same for everyone today."}</div>
          </div>
          {!daily && <button className="btn white lg" onClick={() => startQuiz({ count: 10, category: "Daily Challenge", seedOverride: dailySeed(), dailyKey, mode: "learn" })}><Play size={18} fill="currentColor" /> Start</button>}
        </div>
      </div>

      <div className="grid g4">
        <ModeTile icon={Zap} tone="brand" title="Quick 10" sub="10 mixed tasks, answers as you go" onClick={() => startQuiz({ count: 10, category: "Quick 10", mode: "learn" })} />
        <ModeTile icon={SlidersHorizontal} tone="sky" title="Build a test" sub="Pick skills, size and mode" onClick={() => go("builder")} />
        <ModeTile icon={RotateCcw} tone="coral" title="Weak spots" sub={weakIds.length ? `${weakIds.length} tasks to fix` : "Nothing to fix yet"} disabled={!weakIds.length}
          onClick={() => startQuiz({ count: weakIds.length, category: "Weak spots", idPool: weakIds, mode: "learn" })} />
        <ModeTile icon={Layers} tone="mint" title="Flashcards" sub="Flip key words and tasks" onClick={() => go("flashcards")} />
      </div>

      <div className="section">
        <div className="section-head">
          <div><div className="eyebrow">Like a real job check</div><h2 className="h2">Role Tests</h2></div>
        </div>
        <div className="grid g3">
          {ROLE_TESTS.map(p => {
            const n = p.skillIds.length * p.perSkill;
            const best = history.filter(h => h.category === p.id).reduce((m, h) => Math.max(m, h.pct), -1);
            return (
              <div key={p.id} className="card pad stack" style={{ gap: 12 }}>
                <div className="between">
                  <div style={{ fontSize: 30 }}>{p.icon}</div>
                  {best >= 0 && <span className={`pill ${best >= 50 ? "mint" : "coral"}`}>Best {best}%</span>}
                </div>
                <div>
                  <div className="h3">{p.name}</div>
                  <div className="muted" style={{ fontSize: 14 }}>{n} questions · {p.perSkill} from each of {p.skillIds.length} skills · ~{estimateMinutes(n)} min</div>
                </div>
                <button className="btn primary" onClick={() => roleTest(p)}><Trophy size={16} /> Start test</button>
              </div>
            );
          })}
        </div>
        <div className="faint" style={{ fontSize: 13, marginTop: 10 }}>Role Tests use exam mode: you see the answers at the end. Pass mark: 50%.</div>
      </div>

      {history.length > 0 && (
        <div className="section">
          <div className="section-head"><h2 className="h2">Recent tests</h2><button className="btn sm ghost" onClick={() => go("progress")}>See progress</button></div>
          <div className="card" style={{ padding: 6 }}>
            {history.slice(0, 5).map((h, i) => (
              <div key={i} className="list-row" style={{ cursor: "default" }}>
                <div className={`tile-icon ${h.pct >= 50 ? "fill-green" : "fill-pink"}`} style={{ width: 38, height: 38 }}>{h.pct >= 50 ? <CheckCircle2 size={18} /> : <XCircle size={18} />}</div>
                <div style={{ flex: 1, minWidth: 0 }}>
                  <div style={{ fontWeight: 700 }}>{h.category}</div>
                  <div className="faint" style={{ fontSize: 13 }}>{h.correct}/{h.total} right · {new Date(h.date).toLocaleDateString(undefined, { month: "short", day: "numeric" })}</div>
                </div>
                <div className="display mono" style={{ fontWeight: 800, fontSize: 18, color: h.pct >= 50 ? "var(--mint)" : "var(--coral)" }}>{h.pct}%</div>
              </div>
            ))}
          </div>
        </div>
      )}
    </div>
  );
}

function ModeTile({ icon: Icon, tone, title, sub, onClick, disabled }) {
  return (
    <button className={`card tap pad fill-${{ brand: "lime", sky: "blue", coral: "pink", mint: "green" }[tone]}`} onClick={onClick} disabled={disabled} style={{ textAlign: "left", display: "flex", flexDirection: "column", gap: 22, opacity: disabled ? .55 : 1, minHeight: 170 }}>
      <div className="tile-icon" style={{ background: "#fff", color: "var(--ink)", borderColor: "var(--ink)" }}><Icon size={22} /></div>
      <div><div className="h2">{title}</div><div style={{ fontSize: 14 }}>{sub}</div></div>
    </button>
  );
}

// ================= Test builder =================
export function TestBuilder({ preset }) {
  const { startQuiz, go, wrongBank } = useApp();
  const [role, setRole] = useState(preset?.role || "all");
  const [skill, setSkill] = useState(preset?.skill || "all");
  const [count, setCount] = useState(20);
  const [mode, setMode] = useState("learn");
  const [weak, setWeak] = useState(false);
  const roleObj = ROLES.find(r => r.key === role);
  const weakIds = Object.keys(wrongBank).map(Number).filter(id => TASK_BY_ID[id]);
  const pool = weak ? weakIds : skill !== "all" ? SKILL_BY_ID[skill].taskIds : roleObj ? roleObj.skills.flatMap(s => s.taskIds) : TASKS.map(t => t.id);
  const n = Math.min(count, pool.length);
  const label = weak ? "Weak spots" : skill !== "all" ? SKILL_BY_ID[skill].n : roleObj ? roleObj.short : "Mixed";

  return (
    <div>
      <PageHead back={{ label: "Practice", onClick: () => go("practice") }} eyebrow="Build a test" title="Your test, your way" />
      <div className="stack" style={{ gap: 14 }}>
        <div className="card pad">
          <div className="label">1. What to practise</div>
          <div className="chips" style={{ marginBottom: 12 }}>
            <button className={`chip${role === "all" && !weak ? " on" : ""}`} onClick={() => { setRole("all"); setSkill("all"); setWeak(false); }}>📚 Both roles</button>
            {ROLES.map(r => <button key={r.key} className={`chip${role === r.key && !weak ? " on" : ""}`} onClick={() => { setRole(r.key); setSkill("all"); setWeak(false); }}>{r.icon} {r.name}</button>)}
          </div>
          {roleObj && !weak && (
            <div className="chips">
              <button className={`chip${skill === "all" ? " on" : ""}`} onClick={() => setSkill("all")}>All {roleObj.skills.length} skills</button>
              {roleObj.skills.map(s => <button key={s.id} className={`chip${skill === s.id ? " on" : ""}`} onClick={() => setSkill(s.id)}>{s.icon} {s.n}</button>)}
            </div>
          )}
          <div className="divider" style={{ margin: "16px 0" }} />
          <div className="between">
            <div><div style={{ fontWeight: 700 }}>Only my weak spots</div><div className="faint" style={{ fontSize: 13 }}>Tasks you got wrong or marked "not yet" ({weakIds.length})</div></div>
            <button className={`switch${weak ? " on" : ""}`} role="switch" aria-checked={weak} aria-label="Only weak spots" onClick={() => setWeak(w => !w)} disabled={!weakIds.length} />
          </div>
        </div>

        <div className="card pad">
          <div className="label">2. How many questions</div>
          <div className="chips">
            {[10, 20, 40, 60, 100].map(c => <button key={c} className={`chip${count === c ? " on" : ""}`} onClick={() => setCount(c)}>{c} <span className="faint">· {estimateMinutes(c)}m</span></button>)}
          </div>
        </div>

        <div className="card pad">
          <div className="label">3. How to see answers</div>
          <div className="grid g2">
            {[["learn", "📖 Learn mode", "See if you are right after each question, with the full explanation."], ["exam", "⏱️ Exam mode", "Answer everything first. See your score and answers at the end."]].map(([m, t, d]) => (
              <button key={m} className="card tap pad" onClick={() => setMode(m)} style={{ textAlign: "left", borderColor: mode === m ? "var(--brand)" : undefined, background: mode === m ? "var(--brand-soft)" : undefined }}>
                <div className="h3">{t}</div><div className="muted" style={{ fontSize: 13.5 }}>{d}</div>
              </button>
            ))}
          </div>
        </div>

        <button className="btn grad lg full" disabled={!n} onClick={() => startQuiz({ count: n, category: label, idPool: pool, mode })}>
          <Play size={18} fill="currentColor" /> {n ? `Start ${n} questions` : "No questions here yet"}
        </button>
      </div>
    </div>
  );
}

// ================= Practice session (one skill, open answers) =================
export function PracticeSession({ id, startTask, filter }) {
  const { go, taskProgress, setTaskStatus, bookmarks, toggleBookmark, startQuiz } = useApp();
  const reader = useReader();
  const skill = SKILL_BY_ID[id];
  const [ids] = useState(() => {
    const again = skill.taskIds.filter(t => taskProgress[t]?.s === "again");
    return filter === "again" && again.length ? again : skill.taskIds;
  });
  const [i, setI] = useState(() => {
    if (startTask) return Math.max(0, ids.indexOf(startTask));
    const k = ids.findIndex(t => taskProgress[t]?.s !== "got");
    return k < 0 ? 0 : k;
  });
  const [revealed, setRevealed] = useState(false);
  const [drafts, setDrafts] = useState(() => loadJSON("drafts", {}));
  const [session, setSession] = useState({ got: 0, again: 0 });
  const [showMap, setShowMap] = useState(false);
  const [finished, setFinished] = useState(false);
  const q = TASK_BY_ID[ids[i]];
  const status = taskProgress[q.id]?.s;

  useEffect(() => {
    setRevealed(false);
    if (reader.supported && reader.settings.autoRead && !finished) reader.speak(taskSpeech(q, false), `task-${q.id}`, { title: `Task ${q.num}` });
  }, [q.id]); // eslint-disable-line
  useEffect(() => () => reader.stop(), []); // eslint-disable-line

  function saveDraft(v) { setDrafts(d => { const n = { ...d, [q.id]: v }; if (!v) delete n[q.id]; saveJSON("drafts", n); return n; }); }
  function moveTo(k) { setI(k); window.scrollTo({ top: 0, behavior: "smooth" }); }

  function rate(s) {
    setTaskStatus(q.id, s);
    setSession(x => ({ ...x, [s]: x[s] + 1 }));
    if (i < ids.length - 1) moveTo(i + 1);
    else setFinished(true);
  }

  if (finished) {
    const xpWon = session.got * XP.taskGot + session.again * XP.taskAgain;
    const nextSkill = SKILLS[SKILLS.indexOf(skill) + 1];
    return (
      <div className="focus">
        {session.got > 0 && <Confetti />}
        <div className="focus-body" style={{ paddingTop: 50, textAlign: "center" }}>
          <div style={{ fontSize: 70 }}>{session.again === 0 ? "🏆" : "💪"}</div>
          <h1 className="h1" style={{ margin: "10px 0 8px" }}>{session.again === 0 ? "Brilliant work!" : "Good practice!"}</h1>
          <div className="muted big-text">You finished the tasks for <b>{skill.n}</b>.</div>
          <div className="grid g3" style={{ margin: "26px 0", textAlign: "left" }}>
            <div className="card pad"><div className="display mono" style={{ fontSize: 30, fontWeight: 800, color: "var(--mint)" }}>{session.got}</div><div className="faint">Got it</div></div>
            <div className="card pad"><div className="display mono" style={{ fontSize: 30, fontWeight: 800, color: "var(--coral)" }}>{session.again}</div><div className="faint">Practise again</div></div>
            <div className="card pad"><div className="display mono grad-text" style={{ fontSize: 30, fontWeight: 800 }}>+{xpWon}</div><div className="faint">XP earned</div></div>
          </div>
          <div className="stack" style={{ gap: 10 }}>
            <button className="btn grad lg full" onClick={() => startQuiz({ count: 20, category: skill.n, idPool: skill.taskIds, mode: "learn" })}><Trophy size={18} /> Take the skill test</button>
            {session.again > 0 && <button className="btn soft lg full" onClick={() => go("session", { id, filter: "again" })}><RotateCcw size={18} /> Practise the {session.again} again</button>}
            {nextSkill && <button className="btn ghost lg full" onClick={() => go("skill", { id: nextSkill.id })}>Next skill: {nextSkill.n} <ChevronRight size={18} /></button>}
            <button className="btn ghost lg full" onClick={() => go("skill", { id })}>Back to the skill</button>
          </div>
        </div>
      </div>
    );
  }

  return (
    <div className="focus">
      <div className="focus-top">
        <div className="focus-top-inner">
          <button className="icon-btn" onClick={() => go("skill", { id })} aria-label="Close practice"><X size={18} /></button>
          <div style={{ flex: 1 }}>
            <div className="between" style={{ fontSize: 12.5, fontWeight: 700, marginBottom: 6 }}>
              <span className="muted">{skill.icon} {skill.n}</span>
              <span className="faint">{i + 1} / {ids.length}</span>
            </div>
            <Bar pct={((i + (revealed ? 1 : 0)) / ids.length) * 100} brand />
          </div>
          <button className="icon-btn" onClick={() => setShowMap(true)} aria-label="All tasks"><Grid3x3 size={18} /></button>
        </div>
      </div>

      <div className="focus-body" key={q.id}>
        <div className="rise">
          <div className="between" style={{ marginBottom: 14 }}>
            <div className="row" style={{ gap: 8 }}>
              <span className="pill brand">Task {q.num}</span>
              {status === "got" && <span className="pill mint">✓ Done before</span>}
              {status === "again" && <span className="pill coral">↺ Practise again</span>}
            </div>
            <div className="row" style={{ gap: 8 }}>
              <ListenButton text={taskSpeech(q, revealed)} id={`task-${q.id}`} title={`Task ${q.num}`} />
              <button className="icon-btn" onClick={() => toggleBookmark(q.id)} aria-label="Bookmark" style={{ color: bookmarks.includes(q.id) ? "var(--sun)" : undefined }}>
                <Bookmark size={18} fill={bookmarks.includes(q.id) ? "currentColor" : "none"} />
              </button>
            </div>
          </div>

          <Situation q={q} size={16.5} />
          <div className="muted" style={{ margin: "18px 0 4px", fontSize: 14.5 }}>💭 {q.ask}</div>
          <h2 className="h2" style={{ fontSize: 23, marginBottom: 16 }}>{q.task}</h2>

          <textarea className="input worksheet" rows={3} value={drafts[q.id] || ""} onChange={e => saveDraft(e.target.value)}
            placeholder="Write your answer here (you can skip this)…" aria-label="Your answer" />

          {revealed && (
            <div className="rise" style={{ marginTop: 18 }}>
              <Explanation q={q} />
              <div className="h3" style={{ textAlign: "center", margin: "22px 0 4px" }}>Did you get it right?</div>
              <div className="faint" style={{ textAlign: "center", fontSize: 13.5 }}>Be honest. "Not yet" brings the task back later.</div>
            </div>
          )}
        </div>
      </div>

      <div className="focus-foot">
        <div className="focus-foot-inner">
          {!revealed ? (
            <>
              <button className="btn ghost lg" onClick={() => moveTo(Math.max(0, i - 1))} disabled={i === 0} aria-label="Previous task"><ChevronLeft size={20} /></button>
              <button className="btn primary lg full" onClick={() => setRevealed(true)}><Eye size={18} /> Show the answer</button>
              <button className="btn ghost lg" onClick={() => (i < ids.length - 1 ? moveTo(i + 1) : setFinished(true))} aria-label="Skip task"><ChevronRight size={20} /></button>
            </>
          ) : (
            <>
              <button className="btn lg full danger" onClick={() => rate("again")}><RotateCcw size={18} /> Not yet</button>
              <button className="btn lg full mint" onClick={() => rate("got")}><CheckCircle2 size={18} /> I got it</button>
            </>
          )}
        </div>
      </div>

      {showMap && (
        <Sheet onClose={() => setShowMap(false)}>
          <SheetHead title="All tasks" onClose={() => setShowMap(false)} />
          <div className="dots">
            {ids.map((tid, k) => {
              const s = taskProgress[tid]?.s;
              return <button key={tid} className={`dot${s ? ` ${s}` : ""}${k === i ? " now" : ""}`} onClick={() => { moveTo(k); setShowMap(false); }}>{TASK_BY_ID[tid].num}</button>;
            })}
          </div>
        </Sheet>
      )}
    </div>
  );
}

// ================= Test (multiple choice) =================
export function QuizScreen({ quiz, idx, setIdx, answers, selectAnswer, flagged, toggleFlag, elapsed, mode, category, submitExam, exitExam }) {
  const { toggleBookmark, bookmarks } = useApp();
  const reader = useReader();
  const [showMap, setShowMap] = useState(false);
  const [confirm, setConfirm] = useState(null); // "finish" | "leave"
  const [big, setBig] = useState(() => loadJSON("big-text", false));
  const q = quiz[idx];
  const sel = answers[q.id];
  const locked = mode === "learn" && sel !== undefined;
  const answered = Object.keys(answers).length;
  const last = idx === quiz.length - 1;

  useEffect(() => {
    if (reader.supported && reader.settings.autoRead) reader.speak(questionSpeech(q), `q-${q.id}`, { title: `Question ${idx + 1}` });
  }, [q.id]); // eslint-disable-line
  useEffect(() => () => reader.stop(), []); // eslint-disable-line

  function pick(i) { if (!locked) selectAnswer(i); }
  function next() { if (last) setConfirm("finish"); else { setIdx(idx + 1); window.scrollTo({ top: 0 }); } }

  return (
    <div className="focus" style={{ fontSize: big ? 17 : undefined }}>
      <div className="focus-top">
        <div className="focus-top-inner">
          <button className="icon-btn" onClick={() => setConfirm("leave")} aria-label="Leave test"><X size={18} /></button>
          <div style={{ flex: 1, minWidth: 0 }}>
            <div className="between" style={{ fontSize: 12.5, fontWeight: 700, marginBottom: 6 }}>
              <span className="muted" style={{ whiteSpace: "nowrap", overflow: "hidden", textOverflow: "ellipsis" }}>{category} · {mode === "learn" ? "Learn mode" : "Exam mode"}</span>
              <span className="row faint mono" style={{ gap: 4 }}><Timer size={13} /> {formatTime(elapsed)}</span>
            </div>
            <Bar pct={((idx + 1) / quiz.length) * 100} brand />
          </div>
          <button className="icon-btn" onClick={() => { setBig(b => { saveJSON("big-text", !b); return !b; }); }} aria-label="Bigger text" style={big ? { color: "var(--brand-ink)" } : undefined}><Type size={18} /></button>
          <button className="icon-btn" onClick={() => setShowMap(true)} aria-label="All questions"><Grid3x3 size={18} /></button>
        </div>
      </div>

      <div className="focus-body" key={q.id}>
        <div className="rise">
          <div className="between" style={{ marginBottom: 14 }}>
            <div className="row" style={{ gap: 8 }}>
              <span className="pill brand">Q{idx + 1} of {quiz.length}</span>
              <span className="faint" style={{ fontSize: 13 }}>{q.categoryIcon} {q.category}</span>
            </div>
            <div className="row" style={{ gap: 8 }}>
              <ListenButton text={questionSpeech(q)} id={`q-${q.id}`} title={`Question ${idx + 1}`} />
              <button className="icon-btn" onClick={toggleFlag} aria-label="Flag question" style={flagged[q.id] ? { color: "var(--sun)", borderColor: "var(--sun)" } : undefined}><Flag size={17} fill={flagged[q.id] ? "currentColor" : "none"} /></button>
            </div>
          </div>
          <Situation q={q} size={big ? 18 : 16} />
          <h2 className="h2" style={{ fontSize: big ? 26 : 22, margin: "18px 0 16px" }}>{q.task}</h2>
          <div className="stack" style={{ gap: 10 }}>
            {q.opts.map((o, i) => {
              let cls = "option";
              if (locked) { if (i === q.ansIdx) cls += " right"; else if (i === sel) cls += " wrong"; }
              else if (sel === i) cls += " sel";
              return (
                <button key={i} className={cls} onClick={() => pick(i)} disabled={locked} style={{ fontSize: big ? 17 : 15.5 }}>
                  <span className="key">{locked && i === q.ansIdx ? "✓" : locked && i === sel ? "✗" : LETTERS[i]}</span>
                  <span style={{ paddingTop: 3 }}>{o}</span>
                </button>
              );
            })}
          </div>
          {locked && (
            <div className="rise" style={{ marginTop: 18 }}>
              <div className="h3" style={{ marginBottom: 10, color: sel === q.ansIdx ? "var(--mint)" : "var(--coral)" }}>
                {sel === q.ansIdx ? "🎉 Correct! Well done." : "Not quite. The right answer is in green."}
              </div>
              <Explanation q={q} showAnswer={false} />
              <button className="btn ghost sm" style={{ marginTop: 12 }} onClick={() => toggleBookmark(q.id)}>
                <Bookmark size={15} fill={bookmarks.includes(q.id) ? "currentColor" : "none"} /> {bookmarks.includes(q.id) ? "Bookmarked" : "Bookmark this task"}
              </button>
            </div>
          )}
        </div>
      </div>

      <div className="focus-foot">
        <div className="focus-foot-inner">
          <button className="btn ghost lg" onClick={() => setIdx(Math.max(0, idx - 1))} disabled={idx === 0} aria-label="Previous question"><ChevronLeft size={20} /></button>
          <button className={`btn lg full ${last ? "grad" : "primary"}`} onClick={next} disabled={mode === "learn" && sel === undefined}>
            {last ? <><CheckCircle2 size={18} /> Finish test</> : <>{mode === "learn" && sel === undefined ? "Pick an answer" : "Next"} <ChevronRight size={20} /></>}
          </button>
        </div>
      </div>

      {showMap && (
        <Sheet onClose={() => setShowMap(false)}>
          <SheetHead title={`${answered} of ${quiz.length} answered`} onClose={() => setShowMap(false)} />
          <div className="dots">
            {quiz.map((qq, k) => (
              <button key={qq.id} className={`dot${answers[qq.id] !== undefined ? " ans" : ""}${flagged[qq.id] ? " flag" : ""}${k === idx ? " now" : ""}`} onClick={() => { setIdx(k); setShowMap(false); }}>{k + 1}</button>
            ))}
          </div>
          <div className="row faint wrap" style={{ fontSize: 12.5, marginTop: 14, gap: 14 }}>
            <span>■ <span style={{ color: "var(--brand)" }}>answered</span></span><span>□ not answered</span><span style={{ color: "var(--sun)" }}>▢ flagged</span>
          </div>
        </Sheet>
      )}

      {confirm && (
        <Sheet onClose={() => setConfirm(null)}>
          <div className="h2" style={{ marginBottom: 8 }}>{confirm === "finish" ? "Finish the test?" : "Leave the test?"}</div>
          <div className="muted" style={{ marginBottom: 20 }}>
            {confirm === "finish" ? `You answered ${answered} of ${quiz.length}. Questions with no answer count as wrong.` : "We save your place. You can finish it later from Practice."}
          </div>
          <div className="row">
            <button className="btn ghost lg full" onClick={() => setConfirm(null)}>{confirm === "finish" ? "Keep checking" : "Stay"}</button>
            <button className="btn primary lg full" onClick={confirm === "finish" ? submitExam : exitExam}>{confirm === "finish" ? "Finish" : "Save and leave"}</button>
          </div>
        </Sheet>
      )}
    </div>
  );
}

// ================= Results =================
export function ResultsScreen({ quiz, answers, flagged, elapsed, category }) {
  const { go, startQuiz, profile, addToLeaderboard } = useApp();
  const [filter, setFilter] = useState("wrong");
  const [added, setAdded] = useState(false);
  const total = quiz.length;
  const correct = quiz.filter(q => answers[q.id] === q.ansIdx).length;
  const skipped = quiz.filter(q => answers[q.id] === undefined).length;
  const pct = total ? Math.round((correct / total) * 1000) / 10 : 0;
  const passed = pct >= 50;
  const xpWon = correct * XP.testCorrect + (passed ? XP.testPass : 0);
  const wrongIds = quiz.filter(q => answers[q.id] !== q.ansIdx).map(q => q.id);

  const by = {};
  quiz.forEach(q => {
    if (!by[q.skillId]) by[q.skillId] = { correct: 0, total: 0 };
    by[q.skillId].total++;
    if (answers[q.id] === q.ansIdx) by[q.skillId].correct++;
  });
  const skills = Object.entries(by).map(([sid, v]) => ({ skill: SKILL_BY_ID[sid], pct: Math.round((v.correct / v.total) * 100), ...v })).sort((a, b) => a.pct - b.pct);
  const weakest = skills[0];
  const list = quiz.filter(q => filter === "all" ? true : filter === "wrong" ? answers[q.id] !== q.ansIdx : !!flagged[q.id]);

  if (!total) return <div className="focus"><div className="focus-body"><Empty icon={Target} title="No test to show" ><button className="btn primary" onClick={() => go("practice")}>Go to Practice</button></Empty></div></div>;

  return (
    <div className="focus">
      {pct >= 70 && <Confetti />}
      <div className="focus-top"><div className="focus-top-inner">
        <button className="icon-btn" onClick={() => go("practice")} aria-label="Close results"><X size={18} /></button>
        <div className="h3" style={{ flex: 1 }}>Results · {category}</div>
      </div></div>
      <div className="focus-body">
        <div className={`hero rise ${passed ? "fill-green" : "fill-pink"}`} style={{ textAlign: "center" }}>
          <div style={{ display: "grid", placeItems: "center" }}>
            <Ring pct={pct} size={160} stroke={20} color="var(--ink)" track="#fff" outline="var(--ink)">
              <div><div className="mono" style={{ fontSize: 34, fontWeight: 700, lineHeight: 1 }}>{pct}%</div><div style={{ fontSize: 12, opacity: .85 }}>{correct}/{total} right</div></div>
            </Ring>
          </div>
          <h1 className="h1" style={{ margin: "16px 0 4px" }}>{pct >= 90 ? "Outstanding! 🌟" : passed ? "You passed! 🎉" : "Not yet. Keep going! 💪"}</h1>
          <div style={{ opacity: .9 }}>{passed ? "50% is the pass mark." : "You need 50% to pass. Review the answers below, then try again."}</div>
          <div className="row wrap" style={{ justifyContent: "center", gap: 8, marginTop: 16 }}>
            <span className="glass" style={{ padding: "6px 12px", fontWeight: 700, fontSize: 13 }}>⚡ +{xpWon} XP</span>
            <span className="glass" style={{ padding: "6px 12px", fontWeight: 700, fontSize: 13 }}>⏱ {formatTime(elapsed)}</span>
            {skipped > 0 && <span className="glass" style={{ padding: "6px 12px", fontWeight: 700, fontSize: 13 }}>{skipped} skipped</span>}
          </div>
        </div>

        <div className="stack" style={{ gap: 10, marginTop: 16 }}>
          {wrongIds.length > 0 && <button className="btn grad lg full" onClick={() => startQuiz({ count: wrongIds.length, category: "Retry wrong answers", idPool: wrongIds, mode: "learn" })}><RotateCcw size={18} /> Try the {wrongIds.length} wrong ones again</button>}
          {passed && profile.name && !added && <button className="btn soft lg full" onClick={() => { addToLeaderboard(); setAdded(true); }}><Crown size={18} /> Add my score to the Leaderboard</button>}
          <button className="btn ghost lg full" onClick={() => go("practice")}>Back to Practice</button>
        </div>

        {skills.length > 1 && (
          <div className="card pad section">
            <div className="h3" style={{ marginBottom: 14 }}>Score by skill</div>
            <div className="stack" style={{ gap: 12 }}>
              {skills.map(s => (
                <div key={s.skill.id}>
                  <div className="between" style={{ fontSize: 14, marginBottom: 5 }}>
                    <span style={{ fontWeight: 600 }}>{s.skill.icon} {s.skill.n}</span>
                    <span className="mono" style={{ fontWeight: 700, color: s.pct >= 50 ? "var(--mint)" : "var(--coral)" }}>{s.correct}/{s.total}</span>
                  </div>
                  <div className="bar"><i style={{ width: `${s.pct}%`, background: s.pct >= 50 ? "var(--green)" : "var(--coral)" }} /></div>
                </div>
              ))}
            </div>
          </div>
        )}

        {weakest && weakest.pct < 100 && (
          <button className="card tap pad row section" style={{ width: "100%", textAlign: "left", gap: 14, background: "var(--sun-soft)", borderColor: "transparent" }} onClick={() => go("lesson", { id: weakest.skill.id })}>
            <Sparkles size={22} color="var(--sun)" />
            <div style={{ flex: 1 }}><div style={{ fontWeight: 700 }}>Study tip: {weakest.skill.n}</div><div className="muted" style={{ fontSize: 14 }}>Your lowest score this time ({weakest.pct}%). Read the lesson again.</div></div>
            <BookOpen size={20} color="var(--sun)" />
          </button>
        )}

        <div className="section">
          <div className="between wrap" style={{ marginBottom: 14 }}>
            <h2 className="h2">Check your answers</h2>
            <div className="seg">
              {[["wrong", `Wrong (${wrongIds.length})`], ["all", "All"], ["flagged", "Flagged"]].map(([k, l]) => <button key={k} className={filter === k ? "on" : ""} onClick={() => setFilter(k)}>{l}</button>)}
            </div>
          </div>
          <div className="stack" style={{ gap: 14 }}>
            {list.map(q => <ReviewCard key={q.id} q={q} given={answers[q.id]} />)}
            {!list.length && <Empty icon={CheckCircle2} title={filter === "wrong" ? "No wrong answers. Perfect!" : "Nothing here"} />}
          </div>
        </div>
      </div>
    </div>
  );
}

export function ReviewCard({ q, given }) {
  const { bookmarks, toggleBookmark } = useApp();
  const ok = given === q.ansIdx;
  return (
    <div className="card pad" style={{ borderColor: ok ? "var(--line)" : "var(--line)" }}>
      <div className="between" style={{ marginBottom: 12 }}>
        <span className={`pill ${ok ? "mint" : "coral"}`}>{ok ? "✓ Right" : given === undefined ? "Skipped" : "✗ Wrong"}</span>
        <div className="row" style={{ gap: 8 }}>
          <span className="faint" style={{ fontSize: 12.5 }}>{q.categoryIcon} {q.category}</span>
          <button className="icon-btn" style={{ width: 34, height: 34, color: bookmarks.includes(q.id) ? "var(--sun)" : undefined }} onClick={() => toggleBookmark(q.id)} aria-label="Bookmark"><Bookmark size={16} fill={bookmarks.includes(q.id) ? "currentColor" : "none"} /></button>
        </div>
      </div>
      <Situation q={q} size={14.5} />
      <div className="h3" style={{ margin: "14px 0 10px" }}>{q.task}</div>
      <div className="stack" style={{ gap: 6, marginBottom: 14 }}>
        {q.opts.map((o, i) => (
          <div key={i} style={{ padding: "8px 12px", borderRadius: 12, fontSize: 14, background: i === q.ansIdx ? "var(--mint-soft)" : i === given ? "var(--coral-soft)" : "transparent", color: i === q.ansIdx ? "var(--mint)" : i === given ? "var(--coral)" : "var(--muted)", fontWeight: i === q.ansIdx ? 700 : 400, textDecoration: i === given && i !== q.ansIdx ? "line-through" : "none" }}>
            {LETTERS[i]}. {o}
          </div>
        ))}
      </div>
      <Explanation q={q} showAnswer={false} />
    </div>
  );
}

