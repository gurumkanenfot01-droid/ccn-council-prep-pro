import { useState, useEffect } from "react";
import {
  ClipboardList, Bookmark, Clock, Flag, ChevronLeft, ChevronRight, CheckCircle2, XCircle, Calculator, Type,
  Award, RotateCcw, X, Sparkles, Grid3x3, Hash, Timer as TimerIcon, ListChecks, PlayCircle, Shuffle, BookOpen,
} from "lucide-react";
import { BarChart, Bar, XAxis, YAxis, CartesianGrid, Tooltip, ResponsiveContainer } from "recharts";
import { useApp, Card, Button, Chip, Modal, SectionHeader, EmptyState } from "../ui/kit.jsx";
import { ProgressRing, Toggle } from "../ui/extra.jsx";
import { Explanation, Situation } from "../ui/explain.jsx";
import { ListenButton, useReader } from "../lib/reader.jsx";
import { loadJSON } from "../lib/store.js";
import { LETTERS, dailySeed, buildQuizSet, buildBalancedPool, formatTime, estimateMinutes, questionSpeech } from "../lib/quiz.js";
import { ROLES, SKILLS, TASKS, TASK_BY_ID, CATEGORY_LIST } from "../data/course.js";

// ---------- Practice Test set-up (the CCN "Mock Exam" screen) ----------
export function SetupScreen({ startQuiz, preset }) {
  const { t, wrongBank } = useApp();
  const [count, setCount] = useState(20);
  const [role, setRole] = useState(preset?.role || (preset?.skill ? SKILLS.find(s => s.id === preset.skill)?.roleKey : null) || "All");
  const [skill, setSkill] = useState(preset?.skill || "All");
  const [weakOnly, setWeakOnly] = useState(false);
  const presets = [10, 20, 40, 60, 100, 200];
  const roleObj = ROLES.find(r => r.key === role);
  const skillList = roleObj ? roleObj.skills : [];
  const scoped = skill !== "All"
    ? SKILLS.find(s => s.id === skill).taskIds
    : roleObj ? roleObj.skills.flatMap(s => s.taskIds) : TASKS.map(q => q.id);
  const weakIds = Object.keys(wrongBank).map(Number).filter(id => TASK_BY_ID[id]);
  const effectivePool = weakOnly ? weakIds.length : scoped.length;
  const label = weakOnly ? "Weak Topics" : skill !== "All" ? SKILLS.find(s => s.id === skill).n : roleObj ? roleObj.short : "Mixed";

  function chooseRole(k) { setRole(k); setSkill("All"); setWeakOnly(false); }

  return (
    <div className="fade-in">
      <SectionHeader icon={ClipboardList} title="Set Up Your Practice Test" />

      <Card style={{ padding: 20, marginBottom: 20 }}>
        <div style={{ fontSize: 13, fontWeight: 700, color: t.textMuted, textTransform: "uppercase", letterSpacing: 0.5, marginBottom: 12 }}>How many questions?</div>
        <div style={{ display: "grid", gridTemplateColumns: "repeat(auto-fit, minmax(76px, 1fr))", gap: 10, marginBottom: 12 }}>
          {presets.map(p => (
            <button key={p} onClick={() => setCount(p)} className="press"
              style={{
                padding: "16px 8px", borderRadius: 12, cursor: "pointer", textAlign: "center",
                border: count === p ? `2px solid ${t.navy}` : `1px solid ${t.cardBorder}`,
                background: count === p ? t.navySoft : t.bgAlt,
              }}>
              <div className="f-mono" style={{ fontSize: 20, fontWeight: 800, color: count === p ? t.navy : t.text }}>{p}</div>
              <div style={{ fontSize: 10.5, color: t.textFaint, marginTop: 2 }}>~{estimateMinutes(p)} min</div>
            </button>
          ))}
        </div>
        <div style={{ display: "flex", alignItems: "center", gap: 10, border: `1px solid ${t.cardBorder}`, borderRadius: 10, padding: "8px 14px", background: t.bgAlt, flexWrap: "wrap" }}>
          <Hash size={15} color={t.textFaint} />
          <span style={{ fontSize: 13, color: t.textMuted }}>Your own number</span>
          <input type="number" min="5" max={Math.max(5, effectivePool)} value={count}
            onChange={e => setCount(Math.max(5, Math.min(Math.max(5, effectivePool), Number(e.target.value) || 5)))}
            className="f-mono" style={{ width: 70, border: "none", outline: "none", background: "transparent", fontSize: 15, fontWeight: 700, color: t.navy }} />
          <span style={{ fontSize: 12, color: t.textFaint }}>questions &middot; about {estimateMinutes(count)} min</span>
        </div>
      </Card>

      <Card style={{ padding: 20, marginBottom: 20 }}>
        <div style={{ display: "flex", justifyContent: "space-between", alignItems: "center", marginBottom: 12 }}>
          <div style={{ fontSize: 13, fontWeight: 700, color: t.textMuted, textTransform: "uppercase", letterSpacing: 0.5 }}>What to practise</div>
          <div className="f-mono" style={{ fontSize: 12, color: t.textFaint }}>{effectivePool} ready</div>
        </div>
        <div style={{ display: "flex", flexWrap: "wrap", gap: 8, marginBottom: 12 }}>
          <Chip active={role === "All" && !weakOnly} onClick={() => chooseRole("All")}>📚 Mixed &middot; Both roles</Chip>
          {ROLES.map(r => <Chip key={r.key} active={role === r.key && !weakOnly} onClick={() => chooseRole(r.key)} icon={r.icon}>{r.name}</Chip>)}
        </div>
        {skillList.length > 0 && !weakOnly && (
          <div style={{ display: "flex", flexWrap: "wrap", gap: 6, marginBottom: 14, paddingLeft: 4 }}>
            <Chip active={skill === "All"} onClick={() => setSkill("All")}>All skills</Chip>
            {skillList.map(s => <Chip key={s.id} active={skill === s.id} onClick={() => setSkill(s.id)} icon={s.icon}>{s.n}</Chip>)}
          </div>
        )}
        <div style={{ borderTop: `1px solid ${t.cardBorder}`, paddingTop: 14, display: "flex", alignItems: "center", justifyContent: "space-between", gap: 12 }}>
          <div>
            <div style={{ fontSize: 13.5, fontWeight: 700, color: t.text }}>Weak tasks only</div>
            <div style={{ fontSize: 12, color: t.textFaint }}>Only tasks you got wrong before, or marked "practise again"</div>
          </div>
          <Toggle on={weakOnly} onClick={() => setWeakOnly(w => !w)} />
        </div>
      </Card>

      <Card style={{ padding: "12px 16px", marginBottom: 20, background: t.amberSoft, border: `1px solid ${t.amber}33`, fontSize: 12.5, color: t.text, lineHeight: 1.5 }}>
        <strong>How it works:</strong> each question shows a situation. Pick the best answer from 4 options. After the test you see the right answer, "Why (explained simply)" and the key word.
      </Card>

      <Button full size="lg" variant="accent" icon={PlayCircle} disabled={effectivePool === 0}
        onClick={() => startQuiz({ count: Math.min(count, effectivePool), category: label, idPool: weakOnly ? weakIds : scoped })}>
        {effectivePool === 0 ? "No questions here yet" : `Start Test — ${Math.min(count, effectivePool)} Questions`}
      </Button>
    </div>
  );
}

// ---------- Role Tests (the CCN "Mock Papers" screen) ----------
export function PapersScreen({ startQuiz }) {
  const { t } = useApp();
  const papers = [
    ...ROLES.map(r => ({ id: `${r.name} Test`, icon: r.icon, skillIds: r.skills.map(s => s.id), perSkill: r.skills.length >= 10 ? 5 : 6, desc: `Questions from all ${r.skills.length} ${r.short} skills, the same number from each skill.` })),
    { id: "Full Day 1 Test", icon: "🎓", skillIds: SKILLS.map(s => s.id), perSkill: 4, desc: `The whole Day 1 class: 4 questions from each of the ${SKILLS.length} skills.` },
  ];

  function begin(p) {
    const seed = Math.floor(Math.random() * 1e9);
    const idPool = buildBalancedPool(seed, p.skillIds, p.perSkill);
    startQuiz({ count: idPool.length, category: p.id, idPool, seedOverride: seed });
  }

  return (
    <div className="fade-in">
      <SectionHeader icon={Award} title="Role Tests" />
      <Card style={{ padding: "14px 18px", marginBottom: 20, background: t.navySoft, border: `1px solid ${t.navy}22` }}>
        <div style={{ fontSize: 13, color: t.textMuted, lineHeight: 1.5 }}>
          A Role Test is like a real job check. It takes questions from <strong>every skill</strong> in the role, so no skill is left out. Each time you start, you get a new mix. You can take it again as many times as you like. <strong>Pass mark: 50%.</strong>
        </div>
      </Card>
      <div style={{ display: "grid", gridTemplateColumns: "repeat(auto-fit, minmax(260px, 1fr))", gap: 16 }}>
        {papers.map(p => {
          const n = p.skillIds.length * p.perSkill;
          return (
            <Card key={p.id} style={{ padding: 22 }}>
              <div style={{ display: "flex", alignItems: "center", gap: 10, marginBottom: 10 }}>
                <div style={{ fontSize: 26 }}>{p.icon}</div>
                <div className="f-serif" style={{ fontSize: 17, fontWeight: 700, color: t.text }}>{p.id}</div>
              </div>
              <div style={{ fontSize: 13, color: t.textMuted, lineHeight: 1.5, marginBottom: 14 }}>{p.desc}</div>
              <div style={{ display: "flex", gap: 18, marginBottom: 16 }}>
                <div>
                  <div className="f-mono" style={{ fontSize: 18, fontWeight: 800, color: t.navy }}>{n}</div>
                  <div style={{ fontSize: 11, color: t.textFaint }}>Questions</div>
                </div>
                <div>
                  <div className="f-mono" style={{ fontSize: 18, fontWeight: 800, color: t.navy }}>~{estimateMinutes(n)}</div>
                  <div style={{ fontSize: 11, color: t.textFaint }}>Minutes</div>
                </div>
                <div>
                  <div className="f-mono" style={{ fontSize: 18, fontWeight: 800, color: t.navy }}>{p.skillIds.length}</div>
                  <div style={{ fontSize: 11, color: t.textFaint }}>Skills</div>
                </div>
              </div>
              <Button full variant="accent" icon={PlayCircle} onClick={() => begin(p)}>Start Test</Button>
            </Card>
          );
        })}
      </div>
    </div>
  );
}

// ---------- Test screen ----------
function CalculatorModal({ onClose }) {
  const { t } = useApp();
  const [expr, setExpr] = useState("");
  function press(v) { setExpr(e => e + v); }
  function evalExpr() {
    try {
      if (!/^[0-9+\-*/.() ]+$/.test(expr)) return;
      const result = Function(`"use strict"; return (${expr})`)();
      setExpr(String(result));
    } catch { setExpr("Error"); }
  }
  const keys = ["7", "8", "9", "/", "4", "5", "6", "*", "1", "2", "3", "-", "0", ".", "=", "+"];
  return (
    <Modal onClose={onClose} width={300}>
      <div style={{ display: "flex", justifyContent: "space-between", alignItems: "center", marginBottom: 14 }}>
        <div className="f-serif" style={{ fontWeight: 700, fontSize: 16, color: t.text }}>Calculator</div>
        <button onClick={onClose} aria-label="Close" style={{ background: "none", border: "none", cursor: "pointer" }}><X size={18} color={t.textMuted} /></button>
      </div>
      <div className="f-mono" style={{ background: t.bgAlt, border: `1px solid ${t.cardBorder}`, borderRadius: 10, padding: "14px", fontSize: 22, textAlign: "right", marginBottom: 12, minHeight: 30, color: t.text, overflowX: "auto" }}>{expr || "0"}</div>
      <div style={{ display: "grid", gridTemplateColumns: "repeat(4, 1fr)", gap: 8 }}>
        {keys.map(k => (
          <button key={k} onClick={() => k === "=" ? evalExpr() : press(k)} className="press"
            style={{ padding: "14px 0", borderRadius: 8, border: `1px solid ${t.cardBorder}`, background: k === "=" ? t.navy : t.bgAlt, color: k === "=" ? "#fff" : t.text, fontWeight: 700, fontSize: 16, cursor: "pointer" }}>
            {k}
          </button>
        ))}
      </div>
      <button onClick={() => setExpr("")} className="press" style={{ width: "100%", marginTop: 8, padding: "10px", borderRadius: 8, border: `1px solid ${t.cardBorder}`, background: t.bgAlt, color: t.textMuted, fontWeight: 700, cursor: "pointer" }}>Clear</button>
    </Modal>
  );
}

function IconBtn({ icon: Icon, onClick, active, label }) {
  return (
    <button onClick={onClick} aria-label={label} className="press" style={{ background: active ? "rgba(255,255,255,0.25)" : "rgba(255,255,255,0.12)", border: "none", borderRadius: 8, padding: "6px 8px", color: "#fff", cursor: "pointer", display: "flex", alignItems: "center" }}>
      <Icon size={15} />
    </button>
  );
}

function LegendRow({ color, label, filled, outline }) {
  return (
    <div style={{ display: "flex", alignItems: "center", gap: 8 }}>
      <div style={{ width: 12, height: 12, borderRadius: 4, background: filled ? color : "transparent", border: outline ? `1.5px solid ${color}` : `1px solid ${color}` }} />
      {label}
    </div>
  );
}

export function QuizScreen({ quiz, idx, setIdx, answers, selectAnswer, flagged, toggleFlag, elapsed, submitExam, exitExam }) {
  const { t, isMobile } = useApp();
  const reader = useReader();
  const [showPalette, setShowPalette] = useState(false);
  const [showCalc, setShowCalc] = useState(false);
  const [confirmSubmit, setConfirmSubmit] = useState(false);
  const [confirmExit, setConfirmExit] = useState(false);
  const [fontSize, setFontSize] = useState(1);
  const fontScales = [15.5, 17.5, 19.5];
  const q = quiz[idx];
  const selected = answers[q.id];
  const isFlagged = !!flagged[q.id];
  const answeredCount = Object.keys(answers).length;

  // "Read each question to me" setting: read the new question when it opens.
  useEffect(() => {
    if (reader?.supported && reader.settings.autoRead) reader.speak(questionSpeech(q), `q-${q.id}`);
  }, [q.id]); // eslint-disable-line

  useEffect(() => () => reader?.stop(), []); // eslint-disable-line

  return (
    <div style={{ minHeight: "100vh", background: t.bg }}>
      <div style={{ position: "sticky", top: 0, zIndex: 10, background: t.navy, color: "#fff", padding: "12px 16px" }}>
        <div style={{ maxWidth: 900, margin: "0 auto", display: "flex", justifyContent: "space-between", alignItems: "center", flexWrap: "wrap", gap: 10 }}>
          <div style={{ display: "flex", alignItems: "center", gap: 12 }}>
            <button onClick={() => setConfirmExit(true)} aria-label="Leave test" style={{ background: "rgba(255,255,255,0.12)", border: "none", borderRadius: 8, padding: "6px 10px", color: "#fff", cursor: "pointer", display: "flex", alignItems: "center" }}><X size={15} /></button>
            <div style={{ fontSize: 13.5, fontWeight: 700 }}>Q{idx + 1} <span style={{ opacity: 0.6, fontWeight: 400 }}>/ {quiz.length}</span></div>
          </div>
          <div style={{ display: "flex", alignItems: "center", gap: 8 }}>
            <div className="f-mono" style={{ display: "flex", alignItems: "center", gap: 5, fontSize: 13, background: "rgba(255,255,255,0.12)", padding: "5px 10px", borderRadius: 8 }}>
              <TimerIcon size={13} /> {formatTime(elapsed)}
            </div>
            <IconBtn icon={Calculator} label="Calculator" onClick={() => setShowCalc(true)} />
            <IconBtn icon={Type} label="Change text size" onClick={() => setFontSize(f => (f + 1) % 3)} />
            <IconBtn icon={Grid3x3} label="Question list" onClick={() => setShowPalette(p => !p)} active={showPalette} />
          </div>
        </div>
      </div>
      <div style={{ height: 4, background: "rgba(0,0,0,0.15)" }}>
        <div style={{ height: "100%", width: `${((idx + 1) / quiz.length) * 100}%`, background: "#C0392B", transition: "width 0.25s" }} />
      </div>

      <div style={{ maxWidth: 900, margin: "0 auto", display: "flex", gap: 20, padding: "22px 16px 140px", alignItems: "flex-start" }}>
        <div style={{ flex: 1, minWidth: 0 }} className="fade-in" key={q.id}>
          <Card style={{ padding: 24 }}>
            <div style={{ display: "flex", justifyContent: "space-between", alignItems: "center", marginBottom: 14, gap: 8, flexWrap: "wrap" }}>
              <div style={{ fontSize: 12, fontWeight: 700, color: "#C0392B", textTransform: "uppercase", letterSpacing: 0.5 }}>{q.categoryIcon} {q.category}</div>
              <div style={{ display: "flex", gap: 8 }}>
                <ListenButton text={questionSpeech(q)} id={`q-${q.id}`} />
                <button onClick={toggleFlag} className="press" style={{ display: "flex", alignItems: "center", gap: 5, background: isFlagged ? t.redSoft : "transparent", border: isFlagged ? `1px solid ${t.red}` : `1px solid ${t.cardBorder}`, borderRadius: 8, padding: "5px 10px", fontSize: 12, cursor: "pointer", color: isFlagged ? t.red : t.textMuted }}>
                  <Flag size={12} /> {isFlagged ? "Flagged" : "Flag"}
                </button>
              </div>
            </div>

            <div style={{ marginBottom: 16 }}><Situation q={q} fontSize={fontScales[fontSize] - 1.5} /></div>
            <div className="f-serif" style={{ fontSize: fontScales[fontSize], fontWeight: 600, lineHeight: 1.55, marginBottom: 20, color: t.text }}>{q.task}</div>

            <div style={{ display: "flex", flexDirection: "column", gap: 10 }}>
              {q.opts.map((opt, i) => (
                <button key={i} onClick={() => selectAnswer(i)} className="press"
                  style={{
                    display: "flex", alignItems: "flex-start", gap: 12, textAlign: "left",
                    padding: "14px 16px", borderRadius: 12, cursor: "pointer", transition: "border-color 0.15s, background 0.15s",
                    border: selected === i ? `2px solid ${t.navy}` : `1px solid ${t.cardBorder}`,
                    background: selected === i ? t.navySoft : t.bgAlt, fontSize: fontScales[fontSize] - 3, lineHeight: 1.5, color: t.text,
                  }}>
                  <span className="f-mono" style={{
                    width: 24, height: 24, borderRadius: 7, flexShrink: 0, display: "flex", alignItems: "center", justifyContent: "center",
                    fontWeight: 800, fontSize: 12.5, background: selected === i ? t.navy : t.cardBorder, color: selected === i ? "#fff" : t.textMuted,
                  }}>{LETTERS[i]}</span>
                  <span style={{ paddingTop: 2 }}>{opt}</span>
                </button>
              ))}
            </div>
          </Card>

          <div style={{ display: "flex", justifyContent: "space-between", marginTop: 20, gap: 10 }}>
            <Button variant="ghost" icon={ChevronLeft} onClick={() => setIdx(i => Math.max(0, i - 1))} disabled={idx === 0}>Back</Button>
            {idx < quiz.length - 1 ? (
              <Button variant="primary" onClick={() => setIdx(i => Math.min(quiz.length - 1, i + 1))} style={{ flexDirection: "row-reverse" }} icon={ChevronRight}>Next</Button>
            ) : (
              <Button variant="accent" icon={CheckCircle2} onClick={() => setConfirmSubmit(true)}>Finish Test</Button>
            )}
          </div>
        </div>

        {showPalette && (
          <div style={{ position: isMobile ? "fixed" : "static", inset: isMobile ? 0 : "auto", background: isMobile ? "rgba(8,16,26,0.55)" : "transparent", zIndex: 30, display: isMobile ? "flex" : "block", alignItems: "flex-end" }} onClick={() => isMobile && setShowPalette(false)}>
            <div onClick={e => e.stopPropagation()} className="slide-up" style={{ width: isMobile ? "100%" : 230, background: t.card, border: `1px solid ${t.cardBorder}`, borderRadius: isMobile ? "18px 18px 0 0" : 16, padding: 18, boxShadow: t.shadowLg, maxHeight: isMobile ? "70vh" : "none", overflowY: "auto" }}>
              <div style={{ fontSize: 12.5, fontWeight: 700, color: t.textMuted, marginBottom: 12, textTransform: "uppercase", letterSpacing: 0.5 }}>All Questions</div>
              <div style={{ display: "grid", gridTemplateColumns: "repeat(6, 1fr)", gap: 6, marginBottom: 14 }}>
                {quiz.map((qq, i) => {
                  const isAns = answers[qq.id] !== undefined;
                  const isFlag = !!flagged[qq.id];
                  return (
                    <button key={qq.id} onClick={() => { setIdx(i); if (isMobile) setShowPalette(false); }} className="press"
                      style={{
                        width: 32, height: 32, borderRadius: 8, fontSize: 11.5, cursor: "pointer", fontWeight: 700,
                        border: i === idx ? `2px solid ${t.navy}` : isFlag ? `1.5px solid ${t.red}` : `1px solid ${t.cardBorder}`,
                        background: isAns ? t.navy : t.bgAlt, color: isAns ? "#fff" : t.textMuted,
                      }}>{i + 1}</button>
                  );
                })}
              </div>
              <div style={{ display: "flex", flexDirection: "column", gap: 6, fontSize: 12, color: t.textMuted }}>
                <LegendRow color={t.navy} label="Answered" filled />
                <LegendRow color={t.cardBorder} label="Not answered" />
                <LegendRow color={t.red} label="Flagged" outline />
              </div>
              <div style={{ marginTop: 14, paddingTop: 14, borderTop: `1px solid ${t.cardBorder}`, fontSize: 12.5, color: t.textMuted }}>
                {answeredCount}/{quiz.length} answered
              </div>
            </div>
          </div>
        )}
      </div>

      {showCalc && <CalculatorModal onClose={() => setShowCalc(false)} />}

      {confirmSubmit && (
        <Modal onClose={() => setConfirmSubmit(false)} width={360}>
          <div className="f-serif" style={{ fontSize: 18, fontWeight: 700, marginBottom: 10, color: t.text }}>Finish your test?</div>
          <div style={{ fontSize: 14, color: t.textMuted, marginBottom: 20 }}>You answered {answeredCount} of {quiz.length} questions. Questions with no answer count as wrong.</div>
          <div style={{ display: "flex", gap: 10 }}>
            <Button full variant="ghost" onClick={() => setConfirmSubmit(false)}>Keep checking</Button>
            <Button full variant="accent" onClick={submitExam}>Finish</Button>
          </div>
        </Modal>
      )}
      {confirmExit && (
        <Modal onClose={() => setConfirmExit(false)} width={360}>
          <div className="f-serif" style={{ fontSize: 18, fontWeight: 700, marginBottom: 10, color: t.text }}>Leave the test?</div>
          <div style={{ fontSize: 14, color: t.textMuted, marginBottom: 20 }}>We save your place. You can continue later from the Home screen.</div>
          <div style={{ display: "flex", gap: 10 }}>
            <Button full variant="ghost" onClick={() => setConfirmExit(false)}>Stay</Button>
            <Button full variant="primary" onClick={exitExam}>Save and leave</Button>
          </div>
        </Modal>
      )}
    </div>
  );
}

// ---------- Results ----------
function ResultStat({ icon: Icon, color, label, value, mono }) {
  const { t } = useApp();
  return (
    <div style={{ display: "flex", alignItems: "center", gap: 10 }}>
      <Icon size={17} color={color} />
      <div>
        <div className={mono ? "f-mono" : ""} style={{ fontSize: 17, fontWeight: 800, color: t.text, lineHeight: 1.1 }}>{value}</div>
        <div style={{ fontSize: 11, color: t.textFaint }}>{label}</div>
      </div>
    </div>
  );
}

// One reviewed question: the options marked right/wrong, then the full explanation.
export function ReviewCard({ q, given, showGiven = true }) {
  const { t, bookmarks, toggleBookmark } = useApp();
  const isCorrect = given === q.ansIdx;
  return (
    <Card style={{ padding: 18, borderColor: !showGiven ? t.cardBorder : isCorrect ? t.emerald + "55" : t.red + "55" }}>
      <div style={{ display: "flex", justifyContent: "space-between", gap: 10, marginBottom: 10, alignItems: "center" }}>
        <div style={{ fontSize: 12, fontWeight: 700, color: t.navy }}>{q.categoryIcon} {q.category}</div>
        <div style={{ display: "flex", gap: 10, alignItems: "center" }}>
          <button onClick={() => toggleBookmark(q.id)} aria-label="Bookmark" style={{ background: "none", border: "none", cursor: "pointer" }}>
            <Bookmark size={17} color={bookmarks.includes(q.id) ? t.amber : t.textFaint} fill={bookmarks.includes(q.id) ? t.amber : "none"} />
          </button>
          {showGiven && (isCorrect ? <CheckCircle2 size={19} color={t.emerald} /> : <XCircle size={19} color={t.red} />)}
        </div>
      </div>
      <div style={{ marginBottom: 10 }}><Situation q={q} fontSize={13.5} /></div>
      <div style={{ fontSize: 14.5, fontWeight: 700, lineHeight: 1.45, color: t.text, marginBottom: 10 }}>{q.task}</div>
      <div style={{ display: "flex", flexDirection: "column", gap: 4, marginBottom: 12 }}>
        {q.opts.map((opt, oi) => {
          let bg = "transparent", color = t.textMuted, weight = 400, strike = false;
          if (oi === q.ansIdx) { bg = t.emeraldSoft; color = t.emerald; weight = 700; }
          else if (showGiven && oi === given) { bg = t.redSoft; color = t.red; strike = true; }
          return <div key={oi} style={{ padding: "6px 10px", borderRadius: 8, fontSize: 13, background: bg, color, fontWeight: weight, textDecoration: strike ? "line-through" : "none" }}>{LETTERS[oi]}) {opt}</div>;
        })}
        {showGiven && given === undefined && <div style={{ fontSize: 12, color: t.amber, fontStyle: "italic" }}>Not answered</div>}
      </div>
      <Explanation q={q} showAnswer={false} />
    </Card>
  );
}

export function ResultsScreen({ quiz, answers, flagged, elapsed, goHome, retakeWrong }) {
  const { t, go } = useApp();
  const [reviewFilter, setReviewFilter] = useState("all");
  const total = quiz.length;
  const correctCount = quiz.filter(q => answers[q.id] === q.ansIdx).length;
  const skippedCount = quiz.filter(q => answers[q.id] === undefined).length;
  const wrongCount = total - correctCount - skippedCount;
  const pct = total > 0 ? Math.round((correctCount / total) * 1000) / 10 : 0;
  const passed = pct >= 50;

  const bySource = {};
  quiz.forEach(q => {
    if (!bySource[q.category]) bySource[q.category] = { correct: 0, total: 0, icon: q.categoryIcon, skillId: q.skillId };
    bySource[q.category].total++;
    if (answers[q.id] === q.ansIdx) bySource[q.category].correct++;
  });
  const sourceArr = Object.entries(bySource).map(([name, v]) => ({ name, pct: Math.round((v.correct / v.total) * 100), ...v })).sort((a, b) => b.pct - a.pct);
  const strongest = sourceArr[0];
  const weakest = sourceArr[sourceArr.length - 1];
  const chartData = sourceArr.map(s => ({ name: s.name.length > 14 ? s.name.slice(0, 13) + "…" : s.name, score: s.pct }));

  const reviewList = quiz.filter(q => {
    if (reviewFilter === "wrong") return answers[q.id] !== q.ansIdx;
    if (reviewFilter === "flagged") return !!flagged[q.id];
    return true;
  });

  return (
    <div className="fade-in">
      <SectionHeader icon={Award} title="Test Results" />

      <Card style={{ padding: 28, marginBottom: 20, display: "flex", flexWrap: "wrap", gap: 26, alignItems: "center", justifyContent: "center" }}>
        <ProgressRing pct={pct} label={passed ? "PASSED" : "NOT YET"} sub="50% to pass" />
        <div style={{ display: "grid", gridTemplateColumns: "repeat(2, auto)", gap: "14px 34px" }}>
          <ResultStat icon={CheckCircle2} color={t.emerald} label="Right" value={correctCount} />
          <ResultStat icon={XCircle} color={t.red} label="Wrong" value={wrongCount} />
          <ResultStat icon={ListChecks} color={t.amber} label="Skipped" value={skippedCount} />
          <ResultStat icon={Clock} color={t.navy} label="Time" value={formatTime(elapsed)} mono />
        </div>
      </Card>

      {weakest && strongest && weakest.name !== strongest.name && (
        <Card style={{ padding: 18, marginBottom: 20, display: "flex", gap: 14, flexWrap: "wrap" }}>
          <div style={{ flex: 1, minWidth: 220 }}>
            <div style={{ fontSize: 12, fontWeight: 700, color: t.emerald, textTransform: "uppercase", marginBottom: 4 }}>Your best skill</div>
            <div style={{ fontSize: 14, fontWeight: 700, color: t.text }}>{strongest.icon} {strongest.name} &middot; {strongest.pct}%</div>
          </div>
          <div style={{ flex: 1, minWidth: 220 }}>
            <div style={{ fontSize: 12, fontWeight: 700, color: t.red, textTransform: "uppercase", marginBottom: 4 }}>Needs more work</div>
            <div style={{ fontSize: 14, fontWeight: 700, color: t.text }}>{weakest.icon} {weakest.name} &middot; {weakest.pct}%</div>
          </div>
        </Card>
      )}

      {chartData.length > 1 && (
        <Card style={{ padding: 20, marginBottom: 20 }}>
          <div style={{ fontSize: 13, fontWeight: 700, color: t.textMuted, textTransform: "uppercase", letterSpacing: 0.5, marginBottom: 14 }}>Score by Skill</div>
          <ResponsiveContainer width="100%" height={Math.max(160, chartData.length * 34)}>
            <BarChart data={chartData} layout="vertical" margin={{ left: 6, right: 20 }}>
              <CartesianGrid strokeDasharray="3 3" stroke={t.cardBorder} horizontal={false} />
              <XAxis type="number" domain={[0, 100]} tick={{ fontSize: 11, fill: t.textFaint }} />
              <YAxis type="category" dataKey="name" width={120} tick={{ fontSize: 11.5, fill: t.textMuted }} />
              <Tooltip contentStyle={{ background: t.card, border: `1px solid ${t.cardBorder}`, borderRadius: 8, fontSize: 12 }} />
              <Bar dataKey="score" radius={[0, 6, 6, 0]} fill={t.navy} />
            </BarChart>
          </ResponsiveContainer>
        </Card>
      )}

      {weakest && (
        <Card style={{ padding: 18, marginBottom: 24, background: t.amberSoft, border: `1px solid ${t.amber}44` }}>
          <div style={{ display: "flex", gap: 10, alignItems: "flex-start" }}>
            <Sparkles size={18} color={t.amber} style={{ flexShrink: 0, marginTop: 1 }} />
            <div style={{ flex: 1 }}>
              <div style={{ fontSize: 13.5, color: t.text, lineHeight: 1.5, marginBottom: 10 }}>
                <strong>Study tip:</strong> next time, work on <strong>{weakest.name}</strong> ({weakest.pct}% this time). Read the lesson again, then do its practice tasks.
              </div>
              <Button size="sm" variant="soft" icon={BookOpen} onClick={() => go("skill", { id: weakest.skillId, tab: "lesson" })}>Open the lesson</Button>
            </div>
          </div>
        </Card>
      )}

      <div style={{ display: "flex", gap: 10, marginBottom: 32, flexWrap: "wrap" }}>
        <Button variant="primary" icon={RotateCcw} onClick={goHome}>Back to Home</Button>
        {wrongCount + skippedCount > 0 && <Button variant="soft" icon={XCircle} onClick={retakeWrong}>Try the wrong ones again</Button>}
      </div>

      <SectionHeader icon={ListChecks} title="Check Your Answers" />
      <div style={{ display: "flex", gap: 8, marginBottom: 16, flexWrap: "wrap" }}>
        <Chip active={reviewFilter === "all"} onClick={() => setReviewFilter("all")}>All</Chip>
        <Chip active={reviewFilter === "wrong"} onClick={() => setReviewFilter("wrong")}>Wrong only</Chip>
        <Chip active={reviewFilter === "flagged"} onClick={() => setReviewFilter("flagged")}>Flagged</Chip>
      </div>
      <div style={{ display: "flex", flexDirection: "column", gap: 14 }}>
        {reviewList.map(q => <ReviewCard key={q.id} q={q} given={answers[q.id]} />)}
        {reviewList.length === 0 && <EmptyState icon={CheckCircle2} text="Nothing to show here" />}
      </div>
    </div>
  );
}

// ---------- Daily Challenge ----------
export function DailyChallengeScreen({ startQuiz }) {
  const { t } = useApp();
  const key = `daily-${dailySeed()}`;
  const [done] = useState(() => loadJSON(key, null));
  const preview = buildQuizSet(10, dailySeed());
  const skillsToday = Array.from(new Set(preview.map(q => q.category)));

  return (
    <div className="fade-in">
      <SectionHeader icon={Sparkles} title="Daily Challenge" />
      <Card style={{ padding: 26, textAlign: "center", background: `linear-gradient(135deg, ${t.navy}, ${t.navyDark})`, color: "#fff", border: "none", marginBottom: 16 }}>
        <Sparkles size={30} color="#FFB84D" style={{ marginBottom: 10 }} />
        <div className="f-serif" style={{ fontSize: 19, fontWeight: 700, marginBottom: 6 }}>Today's 10 Tasks</div>
        <div style={{ fontSize: 13, opacity: 0.8, marginBottom: 20 }}>{new Date().toLocaleDateString(undefined, { weekday: "long", month: "long", day: "numeric" })}</div>
        {done ? (
          <div>
            <div className="f-mono" style={{ fontSize: 32, fontWeight: 800, marginBottom: 4 }}>{done.pct}%</div>
            <div style={{ fontSize: 13, opacity: 0.8 }}>Done! Come back tomorrow for 10 new tasks.</div>
          </div>
        ) : (
          <Button variant="accent" icon={PlayCircle} onClick={() => startQuiz({ count: 10, category: "Daily Challenge", seedOverride: dailySeed(), dailyKey: key })}>Start Today's Challenge</Button>
        )}
      </Card>
      <Card style={{ padding: 16 }}>
        <div style={{ fontSize: 12, fontWeight: 700, color: t.textMuted, textTransform: "uppercase", marginBottom: 8 }}>Skills in today's challenge</div>
        <div style={{ display: "flex", flexWrap: "wrap", gap: 6 }}>
          {skillsToday.map(s => <span key={s} style={{ fontSize: 12, padding: "5px 10px", borderRadius: 999, background: t.navySoft, color: t.navy, fontWeight: 700 }}>{CATEGORY_LIST.find(c => c.name === s)?.icon} {s}</span>)}
        </div>
      </Card>
    </div>
  );
}

// ---------- Random Task drill ----------
export function RandomQuestionScreen() {
  const { t, toggleBookmark, bookmarks, logActivity } = useApp();
  const pickOne = () => buildQuizSet(1, Math.floor(Date.now() + Math.random() * 1e6))[0];
  const [q, setQ] = useState(pickOne);
  const [selected, setSelected] = useState(null);
  const [tally, setTally] = useState({ correct: 0, total: 0 });

  function next() { setQ(pickOne()); setSelected(null); }
  function pick(i) {
    if (selected !== null) return;
    setSelected(i);
    setTally(tt => ({ correct: tt.correct + (i === q.ansIdx ? 1 : 0), total: tt.total + 1 }));
    logActivity();
  }

  return (
    <div className="fade-in">
      <SectionHeader icon={Shuffle} title="Random Task" action={<div className="f-mono" style={{ fontSize: 13, color: t.textMuted }}>{tally.correct}/{tally.total} right</div>} />
      <Card style={{ padding: 24 }}>
        <div style={{ display: "flex", justifyContent: "space-between", marginBottom: 14, gap: 8, alignItems: "center", flexWrap: "wrap" }}>
          <div style={{ fontSize: 12, fontWeight: 700, color: t.navy }}>{q.categoryIcon} {q.category}</div>
          <div style={{ display: "flex", gap: 10, alignItems: "center" }}>
            <ListenButton text={questionSpeech(q)} id={`rq-${q.id}`} />
            <button onClick={() => toggleBookmark(q.id)} aria-label="Bookmark" style={{ background: "none", border: "none", cursor: "pointer" }}>
              <Bookmark size={17} color={bookmarks.includes(q.id) ? t.amber : t.textFaint} fill={bookmarks.includes(q.id) ? t.amber : "none"} />
            </button>
          </div>
        </div>
        <div style={{ marginBottom: 14 }}><Situation q={q} /></div>
        <div className="f-serif" style={{ fontSize: 17.5, fontWeight: 600, color: t.text, marginBottom: 18, lineHeight: 1.5 }}>{q.task}</div>
        <div style={{ display: "flex", flexDirection: "column", gap: 10, marginBottom: 18 }}>
          {q.opts.map((opt, i) => {
            let border = t.cardBorder, bg = t.bgAlt, color = t.text;
            if (selected !== null) {
              if (i === q.ansIdx) { border = t.emerald; bg = t.emeraldSoft; color = t.emerald; }
              else if (i === selected) { border = t.red; bg = t.redSoft; color = t.red; }
            }
            return (
              <button key={i} onClick={() => pick(i)} className="press" style={{ textAlign: "left", padding: "13px 16px", borderRadius: 12, border: `1.5px solid ${border}`, background: bg, color, cursor: selected === null ? "pointer" : "default", fontSize: 14.5, lineHeight: 1.5, fontWeight: selected !== null && i === q.ansIdx ? 700 : 500 }}>
                <span className="f-mono" style={{ fontWeight: 800, marginRight: 8 }}>{LETTERS[i]}</span>{opt}
              </button>
            );
          })}
        </div>
        {selected !== null && (
          <div className="fade-in" style={{ marginBottom: 16 }}>
            <div style={{ fontSize: 15, fontWeight: 800, color: selected === q.ansIdx ? t.emerald : t.red, marginBottom: 10 }}>
              {selected === q.ansIdx ? "Well done! That is right." : "Not quite. Look at the right answer in green."}
            </div>
            <Explanation q={q} showAnswer={false} />
          </div>
        )}
        <Button full variant="primary" icon={Shuffle} onClick={next}>{selected === null ? "Skip" : "Next Task"}</Button>
      </Card>
    </div>
  );
}

// ---------- Wrong Answers ----------
export function WrongReviewScreen({ startQuiz, go }) {
  const { t, wrongBank } = useApp();
  const ids = Object.keys(wrongBank).map(Number).filter(id => TASK_BY_ID[id]);
  const qs = ids.map(id => TASK_BY_ID[id]);
  return (
    <div className="fade-in">
      <SectionHeader icon={XCircle} title="Wrong Answers"
        action={qs.length > 0 && <Button size="sm" variant="soft" icon={PlayCircle} onClick={() => startQuiz({ count: qs.length, category: "Wrong Answers", idPool: ids })}>Test me on all</Button>} />
      {qs.length === 0 ? (
        <EmptyState icon={CheckCircle2} text="No wrong answers saved" sub="Tasks you get wrong in tests, or mark 'practise again', will show here" />
      ) : (
        <div style={{ display: "flex", flexDirection: "column", gap: 12 }}>
          {qs.map(q => (
            <Card key={q.id} style={{ padding: 16 }}>
              <div style={{ display: "flex", justifyContent: "space-between", marginBottom: 8, gap: 8 }}>
                <div style={{ fontSize: 12, fontWeight: 700, color: t.navy }}>{q.categoryIcon} {q.category} · Task {q.num}</div>
                <div className="f-mono" style={{ fontSize: 11.5, color: t.red, fontWeight: 700 }}>missed ×{wrongBank[q.id]?.count || 1}</div>
              </div>
              <div style={{ fontSize: 13, color: t.textMuted, marginBottom: 6, lineHeight: 1.5 }}>{q.sit}</div>
              <div style={{ fontSize: 14, fontWeight: 700, color: t.text, marginBottom: 10 }}>{q.task}</div>
              <Explanation q={q} />
              <div style={{ marginTop: 12 }}>
                <Button size="sm" variant="ghost" icon={ChevronRight} onClick={() => go("skill", { id: q.skillId, tab: "practice", task: q.id })}>Practise this task</Button>
              </div>
            </Card>
          ))}
        </div>
      )}
    </div>
  );
}

// ---------- Bookmarks ----------
export function BookmarksScreen({ startQuiz, go }) {
  const { t, bookmarks, toggleBookmark } = useApp();
  const qs = bookmarks.map(id => TASK_BY_ID[id]).filter(Boolean);
  return (
    <div className="fade-in">
      <SectionHeader icon={Bookmark} title="Bookmarked Tasks"
        action={qs.length > 0 && <Button size="sm" variant="soft" icon={PlayCircle} onClick={() => startQuiz({ count: qs.length, category: "Bookmarks", idPool: qs.map(q => q.id) })}>Test me on all</Button>} />
      {qs.length === 0 ? (
        <EmptyState icon={Bookmark} text="No bookmarks yet" sub="Tap the bookmark icon on any task to save it here" />
      ) : (
        <div style={{ display: "flex", flexDirection: "column", gap: 12 }}>
          {qs.map(q => (
            <Card key={q.id} style={{ padding: 16 }}>
              <div style={{ display: "flex", justifyContent: "space-between", gap: 10, marginBottom: 8 }}>
                <div style={{ fontSize: 12, fontWeight: 700, color: t.navy }}>{q.categoryIcon} {q.category} · Task {q.num}</div>
                <button onClick={() => toggleBookmark(q.id)} aria-label="Remove bookmark" style={{ background: "none", border: "none", cursor: "pointer" }}><Bookmark size={16} color={t.amber} fill={t.amber} /></button>
              </div>
              <div style={{ fontSize: 13, color: t.textMuted, marginBottom: 6, lineHeight: 1.5 }}>{q.sit}</div>
              <div style={{ fontSize: 14, fontWeight: 600, color: t.text, marginBottom: 6 }}>{q.task}</div>
              <div style={{ fontSize: 12.5, color: t.emerald, fontWeight: 700, marginBottom: 10 }}>Answer: {q.ans}</div>
              <Button size="sm" variant="ghost" icon={ChevronRight} onClick={() => go("skill", { id: q.skillId, tab: "practice", task: q.id })}>Open task</Button>
            </Card>
          ))}
        </div>
      )}
    </div>
  );
}

