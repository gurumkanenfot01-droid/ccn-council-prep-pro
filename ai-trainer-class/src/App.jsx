import { useState, useEffect, useRef, useMemo } from "react";
import {
  Home, ClipboardList, Layers, BookOpen, Bookmark, BarChart3, Trophy, User,
  Search, Sun, Moon, Menu, X, Award, Sparkles, Shuffle, XCircle, Grid3x3,
  LifeBuoy, Info, WifiOff, CheckCircle2, Headphones, Bot, Lightbulb, BookA, Map,
} from "lucide-react";
import { AppCtx, useApp, Button, Modal } from "./ui/kit.jsx";
import { THEME, GlobalStyle } from "./ui/extra.jsx";
import { loadJSON, saveJSON, clearAll } from "./lib/store.js";
import { ReaderProvider, ReaderBar, useReader } from "./lib/reader.jsx";
import { buildQuizSet, computeStreak, dayKey } from "./lib/quiz.js";
import { TASK_BY_ID } from "./data/course.js";
import HomeScreen from "./screens/HomeScreen.jsx";
import { SetupScreen, PapersScreen, QuizScreen, ResultsScreen, DailyChallengeScreen, RandomQuestionScreen, WrongReviewScreen, BookmarksScreen } from "./screens/TestScreens.jsx";
import { SkillsScreen, LessonsScreen, SkillScreen } from "./screens/SkillScreens.jsx";
import { PerformanceScreen, LeaderboardScreen, ProfileScreen } from "./screens/ProgressScreens.jsx";
import { FlashcardsScreen, SearchScreen, ExamplesScreen, KeyWordsScreen, BigPictureScreen } from "./screens/StudyScreens.jsx";
import { SupportScreen, AboutScreen } from "./screens/InfoScreens.jsx";

const NAV_MAIN = [
  { id: "home", label: "Home", icon: Home },
  { id: "setup", label: "Practice Test", icon: ClipboardList },
  { id: "categories", label: "Skills", icon: Grid3x3 },
  { id: "notes", label: "Lessons", icon: BookOpen },
  { id: "performance", label: "My Progress", icon: BarChart3 },
  { id: "papers", label: "Role Tests", icon: Award },
];
const NAV_MORE = [
  { id: "bigpicture", label: "How AI Training Works", icon: Map },
  { id: "examples", label: "Worked Examples", icon: Lightbulb },
  { id: "keywords", label: "Key Words", icon: BookA },
  { id: "bookmarks", label: "Bookmarks", icon: Bookmark },
  { id: "wrongreview", label: "Wrong Answers", icon: XCircle },
  { id: "flashcards", label: "Flashcards", icon: Layers },
  { id: "daily", label: "Daily Challenge", icon: Sparkles },
  { id: "random", label: "Random Task", icon: Shuffle },
  { id: "leaderboard", label: "Leaderboard", icon: Trophy },
  { id: "search", label: "Search", icon: Search },
  { id: "profile", label: "Profile", icon: User },
  { id: "support", label: "Customer Care", icon: LifeBuoy },
  { id: "about", label: "About", icon: Info },
];

const defaultProfile = { name: "", email: "", city: "", goal: "", level: "", photo: null };

export default function App() {
  const [themeMode, setThemeMode] = useState(() => loadJSON("theme-pref", "light"));
  const [view, setView] = useState("home");
  const [viewParams, setViewParams] = useState({});
  const [drawerOpen, setDrawerOpen] = useState(false);
  const [winWidth, setWinWidth] = useState(typeof window !== "undefined" ? window.innerWidth : 1200);
  const isMobile = winWidth < 900;

  const [profile, setProfileState] = useState(() => ({ ...defaultProfile, ...loadJSON("profile", {}) }));
  const [bookmarks, setBookmarks] = useState(() => loadJSON("bookmarks", []));
  const [wrongBank, setWrongBank] = useState(() => loadJSON("wrong-bank", {}));
  const [history, setHistory] = useState(() => loadJSON("exam-history", []));
  const [inProgress, setInProgress] = useState(() => loadJSON("in-progress", null));
  const [taskProgress, setTaskProgress] = useState(() => loadJSON("task-progress", {}));
  const [lessonsDone, setLessonsDone] = useState(() => loadJSON("lessons-done", {}));
  const [activityDays, setActivityDays] = useState(() => loadJSON("activity-days", []));

  // active test runtime state
  const [quiz, setQuiz] = useState([]);
  const [idx, setIdx] = useState(0);
  const [answers, setAnswers] = useState({});
  const [flagged, setFlagged] = useState({});
  const [elapsed, setElapsed] = useState(0);
  const [lastQuizMeta, setLastQuizMeta] = useState({ category: "Mixed", dailyKey: null });
  const [leaderboardPrompt, setLeaderboardPrompt] = useState(false);
  const [isOffline, setIsOffline] = useState(!navigator.onLine);
  const [showBackOnline, setShowBackOnline] = useState(false);
  const [installPrompt, setInstallPrompt] = useState(null);
  const [isAppInstalled, setIsAppInstalled] = useState(
    window.matchMedia("(display-mode: standalone)").matches || window.navigator.standalone === true
  );
  const timerRef = useRef(null);

  useEffect(() => {
    function onResize() { setWinWidth(window.innerWidth); }
    window.addEventListener("resize", onResize);
    return () => window.removeEventListener("resize", onResize);
  }, []);

  useEffect(() => {
    function handleBeforeInstall(e) { e.preventDefault(); setInstallPrompt(e); }
    function handleInstalled() { setIsAppInstalled(true); setInstallPrompt(null); }
    window.addEventListener("beforeinstallprompt", handleBeforeInstall);
    window.addEventListener("appinstalled", handleInstalled);
    return () => {
      window.removeEventListener("beforeinstallprompt", handleBeforeInstall);
      window.removeEventListener("appinstalled", handleInstalled);
    };
  }, []);

  async function promptInstall() {
    if (!installPrompt) return;
    installPrompt.prompt();
    await installPrompt.userChoice;
    setInstallPrompt(null);
  }

  // Everything is saved on this device, so the class keeps working offline.
  useEffect(() => {
    function handleOffline() { setIsOffline(true); }
    function handleOnline() {
      setIsOffline(false);
      setShowBackOnline(true);
      setTimeout(() => setShowBackOnline(false), 4000);
    }
    window.addEventListener("offline", handleOffline);
    window.addEventListener("online", handleOnline);
    return () => {
      window.removeEventListener("offline", handleOffline);
      window.removeEventListener("online", handleOnline);
    };
  }, []);

  // First visit: ask for a name, like the CCN app does.
  useEffect(() => { if (!profile.name) setView("profile"); }, []); // eslint-disable-line

  useEffect(() => {
    if (view === "quiz") {
      timerRef.current = setInterval(() => setElapsed(e => e + 1), 1000);
      return () => clearInterval(timerRef.current);
    }
  }, [view]);

  // autosave an in-progress test whenever answers change
  useEffect(() => {
    if (view === "quiz" && quiz.length > 0) {
      saveJSON("in-progress", { quiz, idx, answers, flagged, elapsed, meta: lastQuizMeta });
    }
  }, [answers, idx, flagged]); // eslint-disable-line

  function go(v, params) { setView(v); setViewParams(params || {}); setDrawerOpen(false); window.scrollTo(0, 0); }

  function toggleTheme() { setThemeMode(m => { const nm = m === "light" ? "dark" : "light"; saveJSON("theme-pref", nm); return nm; }); }

  function setProfile(p) { setProfileState(p); saveJSON("profile", p); }

  function logActivity() {
    const today = dayKey();
    setActivityDays(days => {
      if (days.includes(today)) return days;
      const next = [...days, today].slice(-400);
      saveJSON("activity-days", next);
      return next;
    });
  }

  function toggleBookmark(qid) {
    setBookmarks(bm => { const nb = bm.includes(qid) ? bm.filter(x => x !== qid) : [...bm, qid]; saveJSON("bookmarks", nb); return nb; });
  }

  // Practice mode: "I got it" / "Practise again". "Again" also puts the task
  // into Wrong Answers so it comes back for review; "got it" takes it out.
  function setTaskStatus(taskId, status) {
    setTaskProgress(tp => {
      const prev = tp[taskId] || {};
      const next = { ...tp, [taskId]: { s: status, d: new Date().toISOString(), tries: (prev.tries || 0) + 1 } };
      saveJSON("task-progress", next);
      return next;
    });
    setWrongBank(wb => {
      const next = { ...wb };
      if (status === "got") delete next[taskId];
      else next[taskId] = { count: (wb[taskId]?.count || 0) + 1, date: new Date().toISOString() };
      saveJSON("wrong-bank", next);
      return next;
    });
    logActivity();
  }

  function markLessonDone(skillId, done = true) {
    setLessonsDone(ld => {
      const next = { ...ld };
      if (done) next[skillId] = new Date().toISOString(); else delete next[skillId];
      saveJSON("lessons-done", next);
      return next;
    });
    if (done) logActivity();
  }

  function startQuiz({ count, category, idPool, seedOverride, dailyKey }) {
    const seed = seedOverride || Math.floor(Math.random() * 1e9);
    const set = buildQuizSet(count, seed, idPool);
    if (!set.length) return;
    setQuiz(set); setAnswers({}); setFlagged({}); setIdx(0); setElapsed(0);
    setLastQuizMeta({ category, dailyKey: dailyKey || null });
    go("quiz");
  }

  function resumeQuiz() {
    if (!inProgress) return;
    const validQuiz = (inProgress.quiz || []).filter(q => TASK_BY_ID[q.id] && Array.isArray(q.opts) && q.opts.length === 4 && Number.isInteger(q.ansIdx));
    if (!validQuiz.length) { saveJSON("in-progress", null); setInProgress(null); go("home"); return; }
    setQuiz(validQuiz); setAnswers(inProgress.answers || {}); setFlagged(inProgress.flagged || {});
    setIdx(Math.min(inProgress.idx || 0, validQuiz.length - 1)); setElapsed(inProgress.elapsed || 0);
    setLastQuizMeta(inProgress.meta || { category: "Mixed" });
    go("quiz");
  }

  function selectAnswer(i) { setAnswers(a => ({ ...a, [quiz[idx].id]: i })); }
  function toggleFlag() { setFlagged(f => ({ ...f, [quiz[idx].id]: !f[quiz[idx].id] })); }

  function submitExam() {
    clearInterval(timerRef.current);
    const total = quiz.length;
    let correct = 0;
    const bySource = {};
    const newWrong = { ...wrongBank };
    quiz.forEach(q => {
      const isCorrect = answers[q.id] === q.ansIdx;
      if (isCorrect) { correct++; delete newWrong[q.id]; }
      else newWrong[q.id] = { count: (newWrong[q.id]?.count || 0) + 1, date: new Date().toISOString() };
      if (!bySource[q.category]) bySource[q.category] = { correct: 0, total: 0 };
      bySource[q.category].total++;
      if (isCorrect) bySource[q.category].correct++;
    });
    const pct = total > 0 ? Math.round((correct / total) * 1000) / 10 : 0;
    const attempt = { date: new Date().toISOString(), total, correct, pct, timeSec: elapsed, category: lastQuizMeta.category, bySource };
    const newHistory = [attempt, ...history].slice(0, 100);
    setHistory(newHistory); setWrongBank(newWrong);
    saveJSON("exam-history", newHistory); saveJSON("wrong-bank", newWrong);
    saveJSON("in-progress", null); setInProgress(null);
    if (lastQuizMeta.dailyKey) saveJSON(lastQuizMeta.dailyKey, { pct, date: new Date().toISOString() });
    logActivity();
    go("results");
    if (profile.name && pct >= 50) setLeaderboardPrompt(true);
  }

  function exitExam() {
    clearInterval(timerRef.current);
    const snapshot = { quiz, idx, answers, flagged, elapsed, meta: lastQuizMeta };
    saveJSON("in-progress", snapshot);
    setInProgress(snapshot);
    go("home");
  }

  function submitToLeaderboard() {
    const total = quiz.length;
    const correct = quiz.filter(q => answers[q.id] === q.ansIdx).length;
    const pct = Math.round((correct / total) * 1000) / 10;
    const entries = loadJSON("leaderboard-entries", []);
    entries.push({ name: profile.name, pct, correct, total, category: lastQuizMeta.category, date: new Date().toISOString() });
    saveJSON("leaderboard-entries", entries.slice(-500));
    setLeaderboardPrompt(false);
  }

  function resetAll() {
    clearAll();
    window.location.reload();
  }

  const streak = useMemo(() => computeStreak(activityDays), [activityDays]);
  const t = THEME[themeMode];

  const ctxValue = {
    t, theme: themeMode, profile, setProfile, bookmarks, toggleBookmark, wrongBank, history, inProgress, streak, isMobile,
    taskProgress, setTaskStatus, lessonsDone, markLessonDone, logActivity, go, startQuiz, resetAll,
    isOffline, canInstall: !!installPrompt && !isAppInstalled, isAppInstalled, promptInstall,
  };

  return (
    <AppCtx.Provider value={ctxValue}>
      <ReaderProvider>
        <GlobalStyle t={t} />
        {isOffline && (
          <div style={{ position: "fixed", top: 0, left: 0, right: 0, zIndex: 60, background: t.amber, color: "#1a1400", padding: "8px 16px", textAlign: "center", fontSize: 12.5, fontWeight: 700, display: "flex", alignItems: "center", justifyContent: "center", gap: 8 }}>
            <WifiOff size={14} /> You are offline. Do not worry: lessons, tasks and your progress still work.
          </div>
        )}
        {showBackOnline && (
          <div style={{ position: "fixed", top: 0, left: 0, right: 0, zIndex: 60, background: t.emerald, color: "#fff", padding: "8px 16px", textAlign: "center", fontSize: 12.5, fontWeight: 700, display: "flex", alignItems: "center", justifyContent: "center", gap: 8 }}>
            <CheckCircle2 size={14} /> You are back online
          </div>
        )}
        <div className="f-sans" style={{ minHeight: "100vh", background: t.bg, color: t.text }}>
          {view !== "quiz" && (
            <>
              {/* Top bar */}
              <div style={{ position: "sticky", top: 0, zIndex: 20, background: t.bgAlt + "F2", backdropFilter: "blur(10px)", borderBottom: `1px solid ${t.cardBorder}`, padding: "13px 18px" }}>
                <div style={{ maxWidth: 1160, margin: "0 auto", display: "flex", alignItems: "center", justifyContent: "space-between" }}>
                  <div style={{ display: "flex", alignItems: "center", gap: 10 }}>
                    <button onClick={() => setDrawerOpen(true)} className="press" aria-label="Open menu" style={{ display: isMobile ? "flex" : "none", background: "none", border: "none", cursor: "pointer" }}>
                      <Menu size={22} color={t.text} />
                    </button>
                    <div onClick={() => go("home")} style={{ display: "flex", alignItems: "center", gap: 10, cursor: "pointer" }}>
                      <div style={{ width: 34, height: 34, borderRadius: 9, background: t.navy, display: "flex", alignItems: "center", justifyContent: "center" }}>
                        <Bot size={18} color="#fff" />
                      </div>
                      <div>
                        <div className="f-serif" style={{ fontSize: 15, fontWeight: 700, color: t.text, lineHeight: 1.1, whiteSpace: "nowrap" }}>{isMobile ? "AI Trainer" : "AI Trainer Class"}</div>
                        {!isMobile && <div style={{ fontSize: 10.5, color: t.textFaint }}>Day 1 · Generalist &amp; LLM Rater</div>}
                      </div>
                    </div>
                  </div>
                  <div style={{ display: "flex", alignItems: "center", gap: 8 }}>
                    <ReaderTopButton />
                    <button onClick={() => go("search")} className="press" aria-label="Search" style={{ background: t.card, border: `1px solid ${t.cardBorder}`, borderRadius: 10, width: 36, height: 36, display: "flex", alignItems: "center", justifyContent: "center", cursor: "pointer" }}>
                      <Search size={16} color={t.textMuted} />
                    </button>
                    <button onClick={toggleTheme} className="press" aria-label="Change light or dark mode" style={{ background: t.card, border: `1px solid ${t.cardBorder}`, borderRadius: 10, width: 36, height: 36, display: "flex", alignItems: "center", justifyContent: "center", cursor: "pointer" }}>
                      {themeMode === "light" ? <Moon size={16} color={t.textMuted} /> : <Sun size={16} color={t.textMuted} />}
                    </button>
                    <button onClick={() => go("profile")} className="press" aria-label="Profile" style={{ width: 36, height: 36, borderRadius: "50%", background: t.navySoft, border: `1.5px solid ${t.navy}`, display: "flex", alignItems: "center", justifyContent: "center", cursor: "pointer", overflow: "hidden" }}>
                      {profile.photo ? <img src={profile.photo} alt="" style={{ width: "100%", height: "100%", objectFit: "cover" }} /> : <User size={16} color={t.navy} />}
                    </button>
                  </div>
                </div>
              </div>

              <div style={{ maxWidth: 1160, margin: "0 auto", display: "flex", gap: 26, padding: "22px 18px 150px" }}>
                {/* Sidebar (desktop) */}
                <div style={{ width: 220, flexShrink: 0, display: isMobile ? "none" : "block" }}>
                  <NavList go={go} view={view} />
                </div>

                {/* Main content */}
                <div style={{ flex: 1, minWidth: 0 }}>
                  {view === "home" && <HomeScreen go={go} />}
                  {view === "setup" && <SetupScreen go={go} startQuiz={startQuiz} preset={viewParams} />}
                  {view === "categories" && <SkillsScreen key={viewParams.role || "all"} go={go} role={viewParams.role} />}
                  {view === "skill" && <SkillScreen key={viewParams.id} skillId={viewParams.id} initialTab={viewParams.tab} initialTask={viewParams.task} go={go} />}
                  {view === "papers" && <PapersScreen startQuiz={startQuiz} />}
                  {view === "notes" && <LessonsScreen go={go} />}
                  {view === "performance" && <PerformanceScreen go={go} />}
                  {view === "profile" && <ProfileScreen go={go} focus={viewParams.focus} />}
                  {view === "bookmarks" && <BookmarksScreen startQuiz={startQuiz} go={go} />}
                  {view === "leaderboard" && <LeaderboardScreen />}
                  {view === "flashcards" && <FlashcardsScreen />}
                  {view === "daily" && <DailyChallengeScreen startQuiz={startQuiz} />}
                  {view === "random" && <RandomQuestionScreen />}
                  {view === "wrongreview" && <WrongReviewScreen startQuiz={startQuiz} go={go} />}
                  {view === "search" && <SearchScreen go={go} />}
                  {view === "examples" && <ExamplesScreen go={go} />}
                  {view === "keywords" && <KeyWordsScreen />}
                  {view === "bigpicture" && <BigPictureScreen go={go} />}
                  {view === "support" && <SupportScreen />}
                  {view === "about" && <AboutScreen />}
                  {view === "quiz-resume" && <ResumeOnMount resume={resumeQuiz} />}
                  {view === "results" && (
                    <>
                      <ResultsScreen quiz={quiz} answers={answers} flagged={flagged} elapsed={elapsed} goHome={() => go("home")}
                        retakeWrong={() => { const wrongIds = quiz.filter(q => answers[q.id] !== q.ansIdx).map(q => q.id); startQuiz({ count: wrongIds.length, category: "Retake", idPool: wrongIds }); }} />
                      {leaderboardPrompt && (
                        <Modal onClose={() => setLeaderboardPrompt(false)} width={340}>
                          <div className="f-serif" style={{ fontSize: 17, fontWeight: 700, marginBottom: 8, color: t.text }}>Nice score! 🎉</div>
                          <div style={{ fontSize: 13.5, color: t.textMuted, marginBottom: 18 }}>Add this score to the Leaderboard as <strong>{profile.name}</strong>? It is saved on this device, so friends who learn on this phone can see it.</div>
                          <div style={{ display: "flex", gap: 10 }}>
                            <Button full variant="ghost" onClick={() => setLeaderboardPrompt(false)}>Not now</Button>
                            <Button full variant="primary" onClick={submitToLeaderboard}>Add it</Button>
                          </div>
                        </Modal>
                      )}
                    </>
                  )}
                </div>
              </div>

              {/* Mobile bottom nav */}
              <div style={{ position: "fixed", bottom: 0, left: 0, right: 0, background: t.bgAlt + "F7", backdropFilter: "blur(10px)", borderTop: `1px solid ${t.cardBorder}`, display: isMobile ? "flex" : "none", justifyContent: "space-around", padding: "8px 4px", zIndex: 15 }}>
                {NAV_MAIN.slice(0, 5).map(n => (
                  <button key={n.id} onClick={() => go(n.id)} className="press" style={{ background: "none", border: "none", cursor: "pointer", display: "flex", flexDirection: "column", alignItems: "center", gap: 3, color: view === n.id ? t.navy : t.textFaint, padding: "4px 6px" }}>
                    <n.icon size={19} />
                    <span style={{ fontSize: 9.5, fontWeight: 700 }}>{n.label}</span>
                  </button>
                ))}
              </div>

              {/* Mobile drawer */}
              {drawerOpen && (
                <div onClick={() => setDrawerOpen(false)} style={{ position: "fixed", inset: 0, background: "rgba(8,16,26,0.55)", zIndex: 40, display: "flex" }}>
                  <div onClick={e => e.stopPropagation()} className="slide-up" style={{ width: 270, background: t.card, height: "100%", padding: 20, overflowY: "auto" }}>
                    <div style={{ display: "flex", justifyContent: "space-between", alignItems: "center", marginBottom: 20 }}>
                      <div className="f-serif" style={{ fontWeight: 700, fontSize: 16, color: t.text }}>Menu</div>
                      <button onClick={() => setDrawerOpen(false)} aria-label="Close menu" style={{ background: "none", border: "none", cursor: "pointer" }}><X size={20} color={t.textMuted} /></button>
                    </div>
                    <NavList go={go} view={view} showAll />
                  </div>
                </div>
              )}
            </>
          )}

          {view === "quiz" && quiz.length > 0 && (
            <QuizScreen quiz={quiz} idx={idx} setIdx={setIdx} answers={answers} selectAnswer={selectAnswer}
              flagged={flagged} toggleFlag={toggleFlag} elapsed={elapsed} submitExam={submitExam} exitExam={exitExam} />
          )}
          <ReaderBar />
        </div>
      </ReaderProvider>
    </AppCtx.Provider>
  );
}

function ResumeOnMount({ resume }) {
  useEffect(() => { resume(); }, []); // eslint-disable-line
  return null;
}

// Headphones button in the top bar: opens the AI Reader settings in Profile,
// or stops reading if something is being read.
function ReaderTopButton() {
  const { t, go } = useApp();
  const r = useReader();
  if (!r?.supported) return null;
  const active = r.status !== "idle";
  return (
    <button onClick={() => active ? r.stop() : go("profile", { focus: "reader" })} className="press"
      aria-label={active ? "Stop the AI Reader" : "AI Reader settings"}
      style={{ background: active ? t.navy : t.card, border: `1px solid ${active ? t.navy : t.cardBorder}`, borderRadius: 10, height: 36, padding: "0 10px", display: "flex", alignItems: "center", justifyContent: "center", gap: 6, cursor: "pointer", color: active ? "#fff" : t.textMuted, fontSize: 12, fontWeight: 700 }}>
      <Headphones size={16} />
    </button>
  );
}

function NavButton({ n, go, view, t }) {
  return (
    <button onClick={() => go(n.id)} className="press"
      style={{
        display: "flex", alignItems: "center", gap: 11, padding: "10px 12px", borderRadius: 10, border: "none",
        background: view === n.id ? t.navySoft : "transparent", color: view === n.id ? t.navy : t.textMuted,
        fontWeight: view === n.id ? 700 : 600, fontSize: 13.5, cursor: "pointer", textAlign: "left", width: "100%",
      }}>
      <n.icon size={17} /> {n.label}
    </button>
  );
}

function NavList({ go, view, showAll }) {
  const { t } = useApp();
  const items = showAll ? [...NAV_MAIN, ...NAV_MORE] : NAV_MAIN;
  return (
    <div style={{ display: "flex", flexDirection: "column", gap: 3 }}>
      {items.map(n => <NavButton key={n.id} n={n} go={go} view={view} t={t} />)}
      {!showAll && (
        <>
          <div style={{ height: 1, background: t.cardBorder, margin: "10px 0" }} />
          {NAV_MORE.map(n => <NavButton key={n.id} n={n} go={go} view={view} t={t} />)}
        </>
      )}
    </div>
  );
}
