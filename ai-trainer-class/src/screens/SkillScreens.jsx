import { useState, useEffect } from "react";
import {
  Grid3x3, BookOpen, Search, Bookmark, CheckCircle2, XCircle, ChevronLeft, ChevronRight, Eye, PlayCircle,
  Lightbulb, BookA, MapPin, Heart, ListOrdered, ThumbsUp, ThumbsDown, FlaskConical, AlertTriangle, TrendingUp,
  FileText, Home as HomeIcon, HelpCircle, Target, RotateCcw, PenLine, Check,
} from "lucide-react";
import { useApp, Card, Button, Chip, SectionHeader, EmptyState } from "../ui/kit.jsx";
import { ProgressBar, BackButton, Picture, Toggle } from "../ui/extra.jsx";
import { Explanation, Situation } from "../ui/explain.jsx";
import { ListenButton, useReader } from "../lib/reader.jsx";
import { loadJSON, saveJSON } from "../lib/store.js";
import { taskSpeech } from "../lib/quiz.js";
import { ROLES, SKILLS, SKILL_BY_ID, TASK_BY_ID } from "../data/course.js";

function skillStats(skill, taskProgress) {
  const got = skill.taskIds.filter(id => taskProgress[id]?.s === "got").length;
  const again = skill.taskIds.filter(id => taskProgress[id]?.s === "again").length;
  return { got, again, total: skill.taskIds.length, pct: Math.round((got / skill.taskIds.length) * 100) };
}

// ---------- Skills (the CCN "Categories" screen) ----------
export function SkillsScreen({ go, role }) {
  const { t, taskProgress, lessonsDone } = useApp();
  const [roleKey, setRoleKey] = useState(role || "All");
  const roles = roleKey === "All" ? ROLES : ROLES.filter(r => r.key === roleKey);
  return (
    <div className="fade-in">
      <SectionHeader icon={Grid3x3} title="Skills" />
      <div style={{ display: "flex", gap: 8, flexWrap: "wrap", marginBottom: 18 }}>
        <Chip active={roleKey === "All"} onClick={() => setRoleKey("All")}>Both roles</Chip>
        {ROLES.map(r => <Chip key={r.key} active={roleKey === r.key} onClick={() => setRoleKey(r.key)} icon={r.icon}>{r.short}</Chip>)}
      </div>
      {roles.map(r => (
        <div key={r.key} style={{ marginBottom: 26 }}>
          <div style={{ display: "flex", alignItems: "center", gap: 8, marginBottom: 6 }}>
            <span style={{ fontSize: 20 }}>{r.icon}</span>
            <div className="f-serif" style={{ fontSize: 16, fontWeight: 700, color: t.text }}>{r.name}</div>
          </div>
          <div style={{ fontSize: 12.5, color: t.textMuted, marginBottom: 12, lineHeight: 1.5 }}>{r.intro}</div>
          <div style={{ display: "grid", gridTemplateColumns: "repeat(auto-fill, minmax(220px, 1fr))", gap: 14 }}>
            {r.skills.map(s => {
              const st = skillStats(s, taskProgress);
              return (
                <Card key={s.id} hover onClick={() => go("skill", { id: s.id })} style={{ padding: 0, overflow: "hidden" }}>
                  <div style={{ background: "#fff", height: 110, display: "flex", alignItems: "center", justifyContent: "center", borderBottom: `1px solid ${t.cardBorder}` }}>
                    <img src={s.image} alt="" loading="lazy" style={{ maxWidth: "100%", maxHeight: 110, objectFit: "contain" }} />
                  </div>
                  <div style={{ padding: 16 }}>
                    <div style={{ display: "flex", alignItems: "flex-start", justifyContent: "space-between", gap: 8 }}>
                      <div style={{ fontSize: 14.5, fontWeight: 700, color: t.text, lineHeight: 1.3 }}>{s.icon} {s.n}</div>
                      {lessonsDone[s.id] && <CheckCircle2 size={16} color={t.emerald} style={{ flexShrink: 0 }} />}
                    </div>
                    <div style={{ fontSize: 12, color: t.textMuted, margin: "6px 0 10px", lineHeight: 1.45 }}>{s.s}</div>
                    <ProgressBar pct={st.pct} height={6} />
                    <div style={{ fontSize: 11.5, color: t.textFaint, marginTop: 5 }}>{st.got}/{st.total} tasks done</div>
                  </div>
                </Card>
              );
            })}
          </div>
        </div>
      ))}
    </div>
  );
}

// ---------- Lessons list (the CCN "Study Notes" screen) ----------
export function LessonsScreen({ go }) {
  const { t, lessonsDone } = useApp();
  const [query, setQuery] = useState("");
  const [saved] = useState(() => loadJSON("saved-lessons", {}));
  const q = query.trim().toLowerCase();
  const match = s => !q || [s.n, s.s, s.def, ...s.words.flat(), ...s.steps.flat()].some(x => x.toLowerCase().includes(q));
  return (
    <div className="fade-in">
      <SectionHeader icon={BookOpen} title="Lessons" />
      <div style={{ position: "relative", marginBottom: 18 }}>
        <Search size={16} color={t.textFaint} style={{ position: "absolute", left: 14, top: 13 }} />
        <input value={query} onChange={e => setQuery(e.target.value)} placeholder="Search lessons..."
          style={{ width: "100%", padding: "11px 14px 11px 38px", borderRadius: 12, border: `1px solid ${t.cardBorder}`, background: t.card, fontSize: 14, color: t.text, outline: "none" }} />
      </div>
      {ROLES.map(r => {
        const list = r.skills.filter(match);
        if (!list.length) return null;
        return (
          <div key={r.key} style={{ marginBottom: 22 }}>
            <div style={{ fontSize: 12, fontWeight: 800, color: t.textMuted, textTransform: "uppercase", letterSpacing: 0.5, marginBottom: 10 }}>{r.icon} {r.name}</div>
            <div style={{ display: "grid", gridTemplateColumns: "repeat(auto-fill, minmax(230px, 1fr))", gap: 12 }}>
              {list.map((s, i) => (
                <Card key={s.id} hover onClick={() => go("skill", { id: s.id, tab: "lesson" })} style={{ padding: 18 }}>
                  <div style={{ display: "flex", justifyContent: "space-between", alignItems: "flex-start", gap: 8 }}>
                    <div className="f-serif" style={{ fontSize: 14, fontWeight: 700, color: t.text, lineHeight: 1.4 }}>Lesson {i + 1}: {s.n}</div>
                    <div style={{ display: "flex", gap: 4, flexShrink: 0 }}>
                      {saved[s.id] && <Bookmark size={14} color={t.amber} fill={t.amber} style={{ marginTop: 2 }} />}
                      {lessonsDone[s.id] && <CheckCircle2 size={15} color={t.emerald} style={{ marginTop: 2 }} />}
                    </div>
                  </div>
                  <div style={{ fontSize: 12.5, color: t.textMuted, marginTop: 6, lineHeight: 1.45 }}>{s.s}</div>
                  <div style={{ fontSize: 12, color: t.textFaint, marginTop: 8 }}>{s.steps.length} steps · {s.examples.length} examples · {s.words.length} key words</div>
                </Card>
              ))}
            </div>
          </div>
        );
      })}
      {!ROLES.some(r => r.skills.some(match)) && <EmptyState icon={Search} text="No lesson matches your search" />}
    </div>
  );
}

// ---------- One skill: Lesson / Practice / Quick Check ----------
export function SkillScreen({ skillId, initialTab, initialTask, go }) {
  const { t, taskProgress, lessonsDone, startQuiz } = useApp();
  const skill = SKILL_BY_ID[skillId];
  const [tab, setTab] = useState(initialTask ? "practice" : initialTab || "lesson");
  if (!skill) return <EmptyState icon={BookOpen} text="Skill not found" />;
  const st = skillStats(skill, taskProgress);
  const roleSkills = SKILLS.filter(s => s.roleKey === skill.roleKey);
  const pos = roleSkills.findIndex(s => s.id === skill.id);
  const nextSkill = SKILLS[SKILLS.findIndex(s => s.id === skill.id) + 1];

  return (
    <div className="fade-in">
      <BackButton onClick={() => go("categories", { role: skill.roleKey })}>All skills</BackButton>
      <Card style={{ padding: 20, marginBottom: 16 }}>
        <div style={{ fontSize: 11.5, fontWeight: 800, color: "#C0392B", textTransform: "uppercase", letterSpacing: 0.5, marginBottom: 4 }}>{skill.roleName} · Skill {pos + 1} of {roleSkills.length}</div>
        <div className="f-serif" style={{ fontSize: 21, fontWeight: 700, color: t.text, marginBottom: 4 }}>{skill.icon} {skill.n}</div>
        <div style={{ fontSize: 14, color: t.textMuted, marginBottom: 14 }}>{skill.s}</div>
        <div style={{ display: "flex", gap: 16, flexWrap: "wrap", alignItems: "center" }}>
          <div style={{ flex: 1, minWidth: 180 }}>
            <ProgressBar pct={st.pct} />
            <div style={{ fontSize: 11.5, color: t.textFaint, marginTop: 5 }}>{st.got}/{st.total} tasks done{st.again ? ` · ${st.again} to practise again` : ""}{lessonsDone[skill.id] ? " · lesson finished ✓" : ""}</div>
          </div>
          <Button size="sm" variant="soft" icon={PlayCircle} onClick={() => startQuiz({ count: skill.taskIds.length, category: skill.n, idPool: skill.taskIds })}>Test this skill</Button>
        </div>
      </Card>

      <div style={{ display: "flex", gap: 8, marginBottom: 18, flexWrap: "wrap" }}>
        <Chip active={tab === "lesson"} onClick={() => setTab("lesson")} icon={<BookOpen size={14} />}>Lesson</Chip>
        <Chip active={tab === "practice"} onClick={() => setTab("practice")} icon={<Target size={14} />}>Practice Tasks ({skill.taskIds.length})</Chip>
        <Chip active={tab === "check"} onClick={() => setTab("check")} icon={<HelpCircle size={14} />}>Quick Check</Chip>
      </div>

      {tab === "lesson" && <LessonView skill={skill} onStartPractice={() => { setTab("practice"); window.scrollTo(0, 0); }} />}
      {tab === "practice" && <PracticeView skill={skill} initialTask={initialTask} />}
      {tab === "check" && <QuickCheckView skill={skill} />}

      {nextSkill && (
        <Card hover onClick={() => go("skill", { id: nextSkill.id, tab: "lesson" })} style={{ padding: "14px 18px", marginTop: 26, display: "flex", alignItems: "center", justifyContent: "space-between", gap: 12 }}>
          <div>
            <div style={{ fontSize: 11, fontWeight: 800, color: t.textFaint, textTransform: "uppercase" }}>Next skill</div>
            <div style={{ fontSize: 14, fontWeight: 700, color: t.text }}>{nextSkill.icon} {nextSkill.n}</div>
          </div>
          <ChevronRight size={18} color={t.navy} />
        </Card>
      )}
    </div>
  );
}

function lessonSpeech(skill, simple) {
  const parts = [`Lesson: ${skill.n}.`, `In one line: ${skill.s}`];
  if (!simple) parts.push(`What it means. ${skill.def}`);
  parts.push(`Think of it like this. ${simple ? "" : skill.analogy[0]} In short: ${skill.analogy[1]}`);
  parts.push("Key words.", ...skill.words.map(([w, m]) => `${w}: ${m}`));
  parts.push(`Where it fits in the job. ${simple ? skill.fits[1] : skill.fits.join(" ")}`);
  parts.push(`Why it matters. ${simple ? skill.why[1] : skill.why.join(" ")}`);
  parts.push("Step by step.", ...skill.steps.map(([a, b], i) => `Step ${i + 1}. ${simple ? b : `${a} In short: ${b}`}`));
  parts.push("Good habits and bad habits.", ...skill.goodbad.map(([g, b]) => `Good: ${g}. Bad: ${b}.`));
  parts.push("Worked examples.", ...skill.examples.map(([title, sit, check, result, lesson]) => `${title}. ${sit} Check: ${check} Result: ${result} Lesson: ${lesson}`));
  parts.push("Common mistakes.", ...skill.mistakes.map(([m, why]) => `${m}. ${why}`));
  parts.push(`Your level. Beginner: ${skill.levels[0]} Getting there: ${skill.levels[1]} Expert: ${skill.levels[2]}`);
  parts.push(`For your CV: ${skill.cv[0]} ${skill.cv[1]}`);
  parts.push("Practise at home.", ...skill.prac);
  return parts;
}

function LessonSection({ icon: Icon, title, speech, id, children }) {
  const { t } = useApp();
  return (
    <Card style={{ padding: 20, marginBottom: 14 }}>
      <div style={{ display: "flex", alignItems: "center", justifyContent: "space-between", gap: 10, marginBottom: 12 }}>
        <div style={{ display: "flex", alignItems: "center", gap: 8 }}>
          <Icon size={17} color={t.navy} />
          <div className="f-serif" style={{ fontSize: 16, fontWeight: 700, color: t.text }}>{title}</div>
        </div>
        {speech && <ListenButton text={speech} id={id} />}
      </div>
      {children}
    </Card>
  );
}

function Short({ children }) {
  const { t } = useApp();
  return (
    <div style={{ marginTop: 8, display: "flex", gap: 8, alignItems: "flex-start", background: t.emeraldSoft, borderRadius: 10, padding: "8px 12px", fontSize: 13.5, fontWeight: 700, color: t.emerald, lineHeight: 1.5 }}>
      <Lightbulb size={15} style={{ flexShrink: 0, marginTop: 2 }} /> <span>In short: {children}</span>
    </div>
  );
}

function LessonView({ skill, onStartPractice }) {
  const { t, lessonsDone, markLessonDone } = useApp();
  const [simple, setSimple] = useState(() => loadJSON("simple-mode", false));
  const [highlights, setHighlights] = useState(() => loadJSON("highlights", {}));
  const [saved, setSaved] = useState(() => loadJSON("saved-lessons", {}));
  const [openChecks, setOpenChecks] = useState({});
  const done = !!lessonsDone[skill.id];
  const P = { fontSize: 14.5, lineHeight: 1.65, color: t.text, margin: 0 };

  function toggleSimple() { setSimple(s => { saveJSON("simple-mode", !s); return !s; }); }
  function toggleHighlight(key) { setHighlights(h => { const n = { ...h, [key]: !h[key] }; saveJSON("highlights", n); return n; }); }
  function toggleSaved() { setSaved(sv => { const n = { ...sv, [skill.id]: !sv[skill.id] }; saveJSON("saved-lessons", n); return n; }); }

  // Tap a line to highlight it (yellow), tap again to remove.
  function Hl({ k, children }) {
    const key = `${skill.id}::${k}`;
    const on = !!highlights[key];
    return (
      <div onClick={() => toggleHighlight(key)} title="Tap to highlight"
        style={{ cursor: "pointer", borderRadius: 10, padding: "10px 12px", background: on ? t.amberSoft : t.bgAlt, border: `1px solid ${on ? t.amber + "66" : t.cardBorder}` }}>
        {children}
      </div>
    );
  }

  return (
    <div className="fade-in">
      <Card style={{ padding: 14, marginBottom: 14, display: "flex", alignItems: "center", justifyContent: "space-between", gap: 12, flexWrap: "wrap" }}>
        <div style={{ display: "flex", gap: 8, flexWrap: "wrap" }}>
          <ListenButton text={lessonSpeech(skill, simple)} id={`lesson-${skill.id}`} label="Listen to the whole lesson" size="md" />
          <button onClick={toggleSaved} className="press" style={{ display: "inline-flex", alignItems: "center", gap: 6, padding: "9px 14px", borderRadius: 999, border: `1px solid ${t.cardBorder}`, background: t.card, color: saved[skill.id] ? t.amber : t.textMuted, fontWeight: 700, fontSize: 13, cursor: "pointer" }}>
            <Bookmark size={15} fill={saved[skill.id] ? t.amber : "none"} /> {saved[skill.id] ? "Saved" : "Save lesson"}
          </button>
        </div>
        <Toggle on={simple} onClick={toggleSimple} label="Extra simple" />
      </Card>

      <Picture src={skill.image} alt={skill.n} style={{ marginBottom: 14 }} />

      <LessonSection icon={FileText} title="What it means" id={`l-def-${skill.id}`} speech={[skill.s, simple ? "" : skill.def]}>
        <div style={{ fontSize: 16, fontWeight: 800, color: t.navy, marginBottom: simple ? 0 : 8 }}>{skill.s}</div>
        {!simple && <p style={P}>{skill.def}</p>}
      </LessonSection>

      <LessonSection icon={Heart} title="Think of it like this" id={`l-an-${skill.id}`} speech={simple ? skill.analogy[1] : skill.analogy}>
        {!simple && <p style={P}>{skill.analogy[0]}</p>}
        <Short>{skill.analogy[1]}</Short>
      </LessonSection>

      <LessonSection icon={BookA} title="Key words" id={`l-w-${skill.id}`} speech={skill.words.map(([w, m]) => `${w}: ${m}`)}>
        <div style={{ display: "flex", flexDirection: "column", gap: 8 }}>
          {skill.words.map(([w, m]) => (
            <div key={w} style={{ display: "flex", gap: 10, padding: "10px 12px", borderRadius: 10, background: t.amberSoft }}>
              <strong style={{ color: t.amber, minWidth: 0, flexShrink: 0 }}>{w}</strong>
              <span style={{ fontSize: 14, color: t.text, lineHeight: 1.5 }}>{m}</span>
            </div>
          ))}
        </div>
      </LessonSection>

      <LessonSection icon={MapPin} title="Where it fits in the job" id={`l-f-${skill.id}`} speech={simple ? skill.fits[1] : skill.fits}>
        {!simple && <p style={P}>{skill.fits[0]}</p>}
        <Short>{skill.fits[1]}</Short>
      </LessonSection>

      <LessonSection icon={Target} title="Why it matters" id={`l-y-${skill.id}`} speech={simple ? skill.why[1] : skill.why}>
        {!simple && <p style={P}>{skill.why[0]}</p>}
        <Short>{skill.why[1]}</Short>
      </LessonSection>

      <LessonSection icon={ListOrdered} title="Step by step" id={`l-s-${skill.id}`} speech={skill.steps.map(([a, b], i) => `Step ${i + 1}. ${simple ? b : a}`)}>
        <div style={{ display: "flex", flexDirection: "column", gap: 8 }}>
          {skill.steps.map(([a, b], i) => (
            <Hl key={i} k={`step${i}`}>
              <div style={{ display: "flex", gap: 12 }}>
                <div className="f-mono" style={{ width: 26, height: 26, borderRadius: 8, background: t.navy, color: "#fff", display: "flex", alignItems: "center", justifyContent: "center", fontWeight: 800, fontSize: 13, flexShrink: 0 }}>{i + 1}</div>
                <div>
                  <div style={{ fontSize: 14.5, color: t.text, lineHeight: 1.5, fontWeight: simple ? 700 : 500 }}>{simple ? b : a}</div>
                  {!simple && <div style={{ fontSize: 12.5, color: t.emerald, fontWeight: 700, marginTop: 3 }}>{b}</div>}
                </div>
              </div>
            </Hl>
          ))}
        </div>
        <div style={{ fontSize: 11.5, color: t.textFaint, marginTop: 8 }}>Tip: tap a step to highlight it.</div>
      </LessonSection>

      <LessonSection icon={ThumbsUp} title="Good habit vs bad habit" id={`l-gb-${skill.id}`} speech={skill.goodbad.map(([g, b]) => `Good: ${g}. Bad: ${b}.`)}>
        <div style={{ display: "grid", gridTemplateColumns: "1fr 1fr", gap: 8 }}>
          <div style={{ fontSize: 11.5, fontWeight: 800, color: t.emerald, textTransform: "uppercase", display: "flex", alignItems: "center", gap: 5 }}><ThumbsUp size={13} /> Do this</div>
          <div style={{ fontSize: 11.5, fontWeight: 800, color: t.red, textTransform: "uppercase", display: "flex", alignItems: "center", gap: 5 }}><ThumbsDown size={13} /> Not this</div>
          {skill.goodbad.map(([g, b], i) => [
            <div key={`g${i}`} style={{ background: t.emeraldSoft, borderRadius: 10, padding: "9px 11px", fontSize: 13.5, color: t.text, lineHeight: 1.45 }}>✓ {g}</div>,
            <div key={`b${i}`} style={{ background: t.redSoft, borderRadius: 10, padding: "9px 11px", fontSize: 13.5, color: t.text, lineHeight: 1.45 }}>✗ {b}</div>,
          ])}
        </div>
      </LessonSection>

      <LessonSection icon={FlaskConical} title="Worked examples" id={`l-ex-${skill.id}`} speech={skill.examples.map(([title, sit, check, result, lesson]) => `${title}. ${sit} Check: ${check} Result: ${result} Lesson: ${lesson}`)}>
        <div style={{ display: "flex", flexDirection: "column", gap: 12 }}>
          {skill.examples.map((ex, i) => <ExampleCard key={i} ex={ex} n={i + 1} />)}
        </div>
      </LessonSection>

      <LessonSection icon={AlertTriangle} title="Common mistakes" id={`l-m-${skill.id}`} speech={skill.mistakes.map(([m, w]) => `${m}. ${w}`)}>
        <div style={{ display: "flex", flexDirection: "column", gap: 8 }}>
          {skill.mistakes.map(([m, w], i) => (
            <Hl key={i} k={`mis${i}`}>
              <div style={{ display: "flex", gap: 10 }}>
                <XCircle size={17} color={t.red} style={{ flexShrink: 0, marginTop: 2 }} />
                <div>
                  <div style={{ fontSize: 14, fontWeight: 700, color: t.text }}>{m}</div>
                  <div style={{ fontSize: 13, color: t.textMuted, marginTop: 2, lineHeight: 1.5 }}>{w}</div>
                </div>
              </div>
            </Hl>
          ))}
        </div>
      </LessonSection>

      <LessonSection icon={TrendingUp} title="What level are you?" id={`l-lv-${skill.id}`} speech={[`Beginner: ${skill.levels[0]}`, `Getting there: ${skill.levels[1]}`, `Expert: ${skill.levels[2]}`]}>
        <div style={{ display: "grid", gridTemplateColumns: "repeat(auto-fit, minmax(150px, 1fr))", gap: 8 }}>
          {[["🌱 Beginner", t.red, t.redSoft], ["🌿 Getting there", t.amber, t.amberSoft], ["🌳 Expert", t.emerald, t.emeraldSoft]].map(([lab, c, bg], i) => (
            <div key={lab} style={{ background: bg, borderRadius: 10, padding: "10px 12px" }}>
              <div style={{ fontSize: 12, fontWeight: 800, color: c, marginBottom: 4 }}>{lab}</div>
              <div style={{ fontSize: 13.5, color: t.text, lineHeight: 1.45 }}>{skill.levels[i]}</div>
            </div>
          ))}
        </div>
      </LessonSection>

      <LessonSection icon={PenLine} title="Put it on your CV" id={`l-cv-${skill.id}`} speech={skill.cv}>
        <div className="f-serif" style={{ fontSize: 15, fontStyle: "italic", color: t.text, lineHeight: 1.6, background: t.bgAlt, borderRadius: 10, padding: "12px 14px", border: `1px dashed ${t.cardBorder}` }}>{skill.cv[0]}</div>
        <Short>{skill.cv[1]}</Short>
      </LessonSection>

      <LessonSection icon={HomeIcon} title="Practise at home" id={`l-p-${skill.id}`} speech={skill.prac}>
        <div style={{ display: "flex", flexDirection: "column", gap: 8 }}>
          {skill.prac.map((p, i) => (
            <Hl key={i} k={`prac${i}`}>
              <div style={{ display: "flex", gap: 10, fontSize: 14, color: t.text, lineHeight: 1.5 }}><Check size={16} color={t.navy} style={{ flexShrink: 0, marginTop: 2 }} /> {p}</div>
            </Hl>
          ))}
        </div>
      </LessonSection>

      <LessonSection icon={HelpCircle} title="Quick check" id={`l-c-${skill.id}`} speech={skill.check.map(([q, a]) => `Question: ${q} Answer: ${a}`)}>
        <div style={{ display: "flex", flexDirection: "column", gap: 8 }}>
          {skill.check.map(([q, a], i) => (
            <div key={i} onClick={() => setOpenChecks(o => ({ ...o, [i]: !o[i] }))} style={{ cursor: "pointer", borderRadius: 10, padding: "10px 12px", background: t.bgAlt, border: `1px solid ${t.cardBorder}` }}>
              <div style={{ fontSize: 14, fontWeight: 700, color: t.text }}>{q}</div>
              {openChecks[i]
                ? <div className="fade-in" style={{ fontSize: 14, color: t.emerald, fontWeight: 700, marginTop: 6 }}>✓ {a}</div>
                : <div style={{ fontSize: 12, color: t.textFaint, marginTop: 4 }}>Think first, then tap to see the answer</div>}
            </div>
          ))}
        </div>
      </LessonSection>

      <Card style={{ padding: 20, textAlign: "center", background: done ? t.emeraldSoft : t.navySoft, border: "none" }}>
        <div className="f-serif" style={{ fontSize: 17, fontWeight: 700, color: t.text, marginBottom: 6 }}>{done ? "Lesson finished ✓" : "Finished reading?"}</div>
        <div style={{ fontSize: 13, color: t.textMuted, marginBottom: 14 }}>{done ? "Great work. Now try the 20 practice tasks." : "Mark this lesson as done, then try the 20 practice tasks."}</div>
        <div style={{ display: "flex", gap: 10, justifyContent: "center", flexWrap: "wrap" }}>
          {!done && <Button variant="success" icon={CheckCircle2} onClick={() => markLessonDone(skill.id)}>I finished this lesson</Button>}
          <Button variant={done ? "primary" : "ghost"} icon={Target} onClick={onStartPractice}>Start practice tasks</Button>
        </div>
      </Card>
    </div>
  );
}

export function ExampleCard({ ex, n }) {
  const { t } = useApp();
  const [title, sit, check, result, lesson] = ex;
  const row = (label, text, color) => (
    <div style={{ display: "flex", gap: 10, fontSize: 13.5, lineHeight: 1.5 }}>
      <div style={{ width: 70, flexShrink: 0, fontSize: 11, fontWeight: 800, color: color || t.textFaint, textTransform: "uppercase", paddingTop: 2 }}>{label}</div>
      <div style={{ color: t.text }}>{text}</div>
    </div>
  );
  return (
    <div style={{ border: `1px solid ${t.cardBorder}`, borderRadius: 12, padding: 14, background: t.bgAlt }}>
      <div style={{ fontSize: 14.5, fontWeight: 800, color: t.navy, marginBottom: 8 }}>Example {n}: {title}</div>
      <div style={{ display: "flex", flexDirection: "column", gap: 6 }}>
        {row("Situation", sit)}
        {row("Check", check)}
        {row("Result", result, t.red)}
      </div>
      <div style={{ marginTop: 10, fontSize: 13.5, fontWeight: 700, color: t.emerald, display: "flex", gap: 6 }}><Lightbulb size={15} style={{ flexShrink: 0, marginTop: 2 }} /> {lesson}</div>
    </div>
  );
}

// ---------- Practice tasks ----------
function PracticeView({ skill, initialTask }) {
  const { t, taskProgress, setTaskStatus, bookmarks, toggleBookmark } = useApp();
  const reader = useReader();
  const [filter, setFilter] = useState("all");
  const [i, setI] = useState(() => Math.max(0, initialTask ? skill.taskIds.indexOf(initialTask) : skill.taskIds.findIndex(id => taskProgress[id]?.s !== "got")));
  const [revealed, setRevealed] = useState(false);
  const [drafts, setDrafts] = useState(() => loadJSON("drafts", {}));

  const ids = skill.taskIds.filter(id =>
    filter === "all" ? true : filter === "todo" ? !taskProgress[id] : taskProgress[id]?.s === "again");
  const safeI = Math.min(i, Math.max(0, skill.taskIds.length - 1));
  const q = TASK_BY_ID[skill.taskIds[safeI]];
  const status = taskProgress[q.id]?.s;

  useEffect(() => {
    setRevealed(false);
    if (reader?.supported && reader.settings.autoRead) reader.speak(taskSpeech(q, false), `task-${q.id}`);
  }, [q.id]); // eslint-disable-line

  function goTo(taskId) { setI(skill.taskIds.indexOf(taskId)); window.scrollTo({ top: 0, behavior: "smooth" }); }

  function nextInFilter() {
    const order = skill.taskIds.slice(safeI + 1).concat(skill.taskIds.slice(0, safeI));
    const target = order.find(id => id !== q.id && (filter === "all" ? true : filter === "todo" ? !taskProgress[id] : taskProgress[id]?.s === "again"));
    return target;
  }

  function mark(s) {
    setTaskStatus(q.id, s);
    const after = skill.taskIds[safeI + 1];
    const target = filter === "all" ? after : nextInFilter();
    if (target) goTo(target);
  }

  function saveDraft(v) {
    setDrafts(d => { const n = { ...d, [q.id]: v }; if (!v) delete n[q.id]; saveJSON("drafts", n); return n; });
  }

  const doneCount = skill.taskIds.filter(id => taskProgress[id]?.s === "got").length;

  return (
    <div className="fade-in">
      <div style={{ display: "flex", gap: 8, marginBottom: 12, flexWrap: "wrap" }}>
        <Chip active={filter === "all"} onClick={() => setFilter("all")}>All 20</Chip>
        <Chip active={filter === "todo"} onClick={() => setFilter("todo")}>Not tried ({skill.taskIds.filter(id => !taskProgress[id]).length})</Chip>
        <Chip active={filter === "again"} onClick={() => setFilter("again")}>Practise again ({skill.taskIds.filter(id => taskProgress[id]?.s === "again").length})</Chip>
      </div>

      {/* Task map */}
      <Card style={{ padding: 14, marginBottom: 14 }}>
        <div style={{ display: "flex", justifyContent: "space-between", fontSize: 12, color: t.textMuted, fontWeight: 700, marginBottom: 10 }}>
          <span>Tasks</span><span>{doneCount}/20 done</span>
        </div>
        <div style={{ display: "grid", gridTemplateColumns: "repeat(10, 1fr)", gap: 6 }}>
          {skill.taskIds.map((id, k) => {
            const s = taskProgress[id]?.s;
            const dim = !ids.includes(id);
            return (
              <button key={id} onClick={() => goTo(id)} className="press" aria-label={`Task ${k + 1}`}
                style={{
                  height: 32, borderRadius: 8, fontSize: 11.5, fontWeight: 800, cursor: "pointer", opacity: dim ? 0.35 : 1,
                  border: id === q.id ? `2px solid ${t.navy}` : `1px solid ${s === "got" ? t.emerald : s === "again" ? t.red : t.cardBorder}`,
                  background: s === "got" ? t.emerald : s === "again" ? t.redSoft : t.bgAlt,
                  color: s === "got" ? "#fff" : s === "again" ? t.red : t.textMuted,
                }}>{k + 1}</button>
            );
          })}
        </div>
      </Card>

      {ids.length === 0 ? (
        <EmptyState icon={CheckCircle2} text="Nothing here" sub={filter === "again" ? "No tasks to practise again. Well done!" : "You have tried every task."} />
      ) : (
        <Card style={{ padding: 22 }} key={q.id}>
          <div style={{ display: "flex", justifyContent: "space-between", alignItems: "center", gap: 8, marginBottom: 14, flexWrap: "wrap" }}>
            <div style={{ display: "flex", alignItems: "center", gap: 8 }}>
              <div style={{ fontSize: 12, fontWeight: 800, color: "#C0392B", textTransform: "uppercase", letterSpacing: 0.5 }}>Task {q.num} of 20</div>
              {status === "got" && <span style={{ fontSize: 11, fontWeight: 800, color: t.emerald, background: t.emeraldSoft, padding: "3px 8px", borderRadius: 999 }}>✓ Done</span>}
              {status === "again" && <span style={{ fontSize: 11, fontWeight: 800, color: t.red, background: t.redSoft, padding: "3px 8px", borderRadius: 999 }}>↺ Practise again</span>}
            </div>
            <div style={{ display: "flex", gap: 8, alignItems: "center" }}>
              <ListenButton text={taskSpeech(q, revealed)} id={`task-${q.id}`} />
              <button onClick={() => toggleBookmark(q.id)} aria-label="Bookmark" style={{ background: "none", border: "none", cursor: "pointer" }}>
                <Bookmark size={18} color={bookmarks.includes(q.id) ? t.amber : t.textFaint} fill={bookmarks.includes(q.id) ? t.amber : "none"} />
              </button>
            </div>
          </div>

          <div style={{ marginBottom: 14 }}><Situation q={q} /></div>
          <div style={{ fontSize: 13, color: t.textMuted, marginBottom: 4 }}>❓ {q.ask}</div>
          <div className="f-serif" style={{ fontSize: 17.5, fontWeight: 700, color: t.text, lineHeight: 1.5, marginBottom: 14 }}>Your task: {q.task}</div>

          <textarea value={drafts[q.id] || ""} onChange={e => saveDraft(e.target.value)} rows={3}
            placeholder="Write your answer here (you can skip this). Then tap 'Show the answer'."
            style={{ width: "100%", borderRadius: 12, border: `1px solid ${t.cardBorder}`, background: t.bgAlt, color: t.text, padding: "12px 14px", fontSize: 14, lineHeight: 1.5, outline: "none", resize: "vertical", marginBottom: 14 }} />

          {!revealed ? (
            <Button full variant="primary" icon={Eye} onClick={() => setRevealed(true)}>Show the answer</Button>
          ) : (
            <div className="fade-in">
              <Explanation q={q} listenId={`exp-${q.id}`} />
              <div style={{ marginTop: 18, paddingTop: 16, borderTop: `1px solid ${t.cardBorder}` }}>
                <div style={{ fontSize: 13.5, fontWeight: 800, color: t.text, marginBottom: 10, textAlign: "center" }}>Did you get it right?</div>
                <div style={{ display: "flex", gap: 10 }}>
                  <Button full variant="success" icon={CheckCircle2} onClick={() => mark("got")}>Yes, I got it</Button>
                  <Button full variant="ghost" icon={RotateCcw} onClick={() => mark("again")} style={{ color: t.red, borderColor: t.red + "66" }}>Not yet</Button>
                </div>
              </div>
            </div>
          )}

          <div style={{ display: "flex", justifyContent: "space-between", marginTop: 18, gap: 10 }}>
            <Button variant="ghost" size="sm" icon={ChevronLeft} disabled={safeI === 0} onClick={() => goTo(skill.taskIds[safeI - 1])}>Back</Button>
            <Button variant="ghost" size="sm" disabled={safeI === skill.taskIds.length - 1} onClick={() => goTo(skill.taskIds[safeI + 1])} style={{ flexDirection: "row-reverse" }} icon={ChevronRight}>Next</Button>
          </div>
        </Card>
      )}
      {doneCount === 20 && (
        <Card style={{ padding: 18, marginTop: 14, textAlign: "center", background: t.emeraldSoft, border: "none" }}>
          <div style={{ fontSize: 26 }}>🏆</div>
          <div className="f-serif" style={{ fontSize: 16, fontWeight: 700, color: t.text }}>All 20 tasks done!</div>
          <div style={{ fontSize: 13, color: t.textMuted, marginTop: 4 }}>Now take "Test this skill" at the top to check yourself.</div>
        </Card>
      )}
    </div>
  );
}

// ---------- Quick Check ----------
function QuickCheckView({ skill }) {
  const { t, startQuiz } = useApp();
  const [open, setOpen] = useState({});
  const items = [
    ...skill.check.map(([q, a]) => ({ q, a })),
    ...skill.words.map(([w, m]) => ({ q: `What does "${w}" mean?`, a: m })),
    ...skill.steps.map(([, b], i) => ({ q: `What is step ${i + 1} of ${skill.n}?`, a: b })),
  ];
  return (
    <div className="fade-in">
      <Card style={{ padding: "12px 16px", marginBottom: 14, background: t.navySoft, border: "none", fontSize: 13, color: t.textMuted, lineHeight: 1.5 }}>
        Say the answer in your head (or out loud). Then tap the card to check.
      </Card>
      <div style={{ display: "flex", flexDirection: "column", gap: 10, marginBottom: 18 }}>
        {items.map((it, i) => (
          <Card key={i} hover onClick={() => setOpen(o => ({ ...o, [i]: !o[i] }))} style={{ padding: 16 }}>
            <div style={{ display: "flex", justifyContent: "space-between", gap: 10, alignItems: "flex-start" }}>
              <div style={{ fontSize: 14.5, fontWeight: 700, color: t.text, lineHeight: 1.45 }}>{it.q}</div>
              <ListenButton text={open[i] ? [it.q, `Answer: ${it.a}`] : it.q} id={`qc-${skill.id}-${i}`} />
            </div>
            {open[i]
              ? <div className="fade-in" style={{ fontSize: 14, color: t.emerald, fontWeight: 700, marginTop: 8 }}>✓ {it.a}</div>
              : <div style={{ fontSize: 12, color: t.textFaint, marginTop: 6 }}>Tap to see the answer</div>}
          </Card>
        ))}
      </div>
      <Button full variant="accent" icon={PlayCircle} onClick={() => startQuiz({ count: skill.taskIds.length, category: skill.n, idPool: skill.taskIds })}>Test this skill — 20 questions</Button>
    </div>
  );
}
