import { useState, useEffect, useRef, useMemo } from "react";
import { Route, Target, Library, BarChart3, UserRound, Search, Moon, Sun, Sparkles, WifiOff, Wifi, LayoutGrid, X } from "lucide-react";
import { AppCtx, useApp } from "./ui.jsx";
import { LogoMark } from "./logo.jsx";
import { loadJSON, saveJSON, clearAll } from "./lib/store.js";
import { ReaderProvider, ReaderDock } from "./lib/reader.jsx";
import { buildQuizSet, computeStreak, dayKey } from "./lib/quiz.js";
import { totalXp, levelFor, XP } from "./lib/gamify.js";
import { TASK_BY_ID } from "./data/course.js";
import { LearnHome, SkillOverview, LessonPlayer } from "./screens/Learn.jsx";
import { PracticeHub, PracticeSession, TestBuilder, QuizScreen, ResultsScreen } from "./screens/Practice.jsx";
import { LibraryHome, KeyWords, Examples, BigPicture, Bookmarks, WrongAnswers, Flashcards, Leaderboard } from "./screens/Library.jsx";
import { ProgressScreen } from "./screens/Progress.jsx";
import { MeScreen, Welcome, Help, About } from "./screens/Me.jsx";
import { SearchSheet } from "./screens/Search.jsx";
import { NotesHome, DocReader } from "./screens/Notes.jsx";

const TABS = [
  { id: "learn", label: "Learn", icon: Route },
  { id: "practice", label: "Practice", icon: Target },
  { id: "library", label: "Library", icon: Library },
  { id: "progress", label: "Progress", icon: BarChart3 },
  { id: "me", label: "Me", icon: UserRound },
];
// Which tab is lit for each screen.
const TAB_OF = {
  learn: "learn", skill: "learn", practice: "practice", builder: "practice",
  library: "library", notes: "library", doc: "library", words: "library", examples: "library", bigpicture: "library", bookmarks: "library", wrong: "library", flashcards: "library", leaderboard: "library",
  progress: "progress", me: "me", help: "me", about: "me",
};
const FOCUS_VIEWS = ["lesson", "session", "quiz", "results", "welcome"];
// Reading-heavy screens use a narrower column.
const NARROW = ["doc", "notes", "builder", "examples", "bigpicture", "bookmarks", "wrong", "flashcards", "leaderboard", "help", "about"];

// Everything in the app, as big colourful tiles (full-screen menu).
const MENU = [
  ["learn", "Course", "Every day, step by step", "lime"], ["notes", "Class notes", "Lecture notes, must-know, CVs", "yellow"],
  ["practice", "Practice", "Drills and tests", "pink"],
  ["builder", "Build a test", "Your mix, your size", "blue"], ["progress", "Progress", "XP, levels, badges", "yellow"],
  ["bigpicture", "Big picture", "How AI training works", "violet"], ["words", "Key words", "Simple meanings", "orange"],
  ["examples", "Examples", "Learn from experts", "green"], ["flashcards", "Flashcards", "Flip and remember", "pink"],
  ["bookmarks", "Bookmarks", "Saved tasks", "yellow"], ["wrong", "Wrong answers", "Fix weak spots", "orange"],
  ["leaderboard", "Leaderboard", "Top scores", "blue"], ["me", "Me", "Profile and AI Reader", "lime"],
  ["help", "Help", "WhatsApp and email", "violet"], ["about", "About", "This class", "green"],
];

function MenuOverlay({ onClose }) {
  const { go } = useApp();
  useEffect(() => {
    function onKey(e) { if (e.key === "Escape") onClose(); }
    window.addEventListener("keydown", onKey);
    return () => window.removeEventListener("keydown", onKey);
  }, [onClose]);
  return (
    <div className="menu" role="dialog" aria-label="Menu">
      <div className="menu-in">
        <div className="between">
          <div className="h1">Where to <span className="serif">next?</span></div>
          <button className="icon-btn" onClick={onClose} aria-label="Close menu"><X size={20} /></button>
        </div>
        <div className="menu-grid">
          {MENU.map(([id, t, sub, fill], i) => (
            <button key={id} className={`menu-tile fill-${fill}`} onClick={() => { onClose(); go(id); }}>
              <span className="mono" style={{ fontSize: 13, fontWeight: 700 }}>{String(i + 1).padStart(2, "0")}</span>
              <span><span className="t" style={{ display: "block" }}>{t}</span><span style={{ fontSize: 14 }}>{sub}</span></span>
            </button>
          ))}
        </div>
      </div>
    </div>
  );
}

const defaultProfile = { name: "", email: "", city: "", goal: "", dailyGoal: 10, photo: null };

export default function App() {
  const [theme, setTheme] = useState(() => loadJSON("theme", "light"));
  const [profile, setProfileState] = useState(() => ({ ...defaultProfile, ...loadJSON("profile", {}) }));
  const [view, setView] = useState(() => (loadJSON("profile", {}).name ? "learn" : "welcome"));
  const [params, setParams] = useState({});
  const [bookmarks, setBookmarks] = useState(() => loadJSON("bookmarks", []));
  const [wrongBank, setWrongBank] = useState(() => loadJSON("wrong-bank", {}));
  const [history, setHistory] = useState(() => loadJSON("exam-history", []));
  const [inProgress, setInProgress] = useState(() => loadJSON("in-progress", null));
  const [taskProgress, setTaskProgress] = useState(() => loadJSON("task-progress", {}));
  const [lessonsDone, setLessonsDone] = useState(() => loadJSON("lessons-done", {}));
  const [activity, setActivity] = useState(() => loadJSON("activity", {}));
  const [searchOpen, setSearchOpen] = useState(false);
  const [menuOpen, setMenuOpen] = useState(false);
  const [toast, setToast] = useState(null);
  const [isOffline, setIsOffline] = useState(!navigator.onLine);
  const [backOnline, setBackOnline] = useState(false);
  const [installPrompt, setInstallPrompt] = useState(null);
  const [isInstalled, setIsInstalled] = useState(window.matchMedia?.("(display-mode: standalone)").matches || window.navigator.standalone === true);

  // active test
  const [quiz, setQuiz] = useState([]);
  const [idx, setIdx] = useState(0);
  const [answers, setAnswers] = useState({});
  const [flagged, setFlagged] = useState({});
  const [elapsed, setElapsed] = useState(0);
  const [quizMeta, setQuizMeta] = useState({ category: "Mixed", mode: "exam" });
  const timerRef = useRef(null);
  const toastRef = useRef(null);

  useEffect(() => { document.documentElement.dataset.theme = theme; }, [theme]);

  useEffect(() => {
    function onBefore(e) { e.preventDefault(); setInstallPrompt(e); }
    function onInstalled() { setIsInstalled(true); setInstallPrompt(null); }
    function onOffline() { setIsOffline(true); }
    function onOnline() { setIsOffline(false); setBackOnline(true); setTimeout(() => setBackOnline(false), 3500); }
    function onKey(e) {
      const typing = /input|textarea|select/i.test(e.target.tagName);
      if ((e.key === "k" && (e.metaKey || e.ctrlKey)) || (e.key === "/" && !typing)) { e.preventDefault(); setSearchOpen(true); }
    }
    window.addEventListener("beforeinstallprompt", onBefore);
    window.addEventListener("appinstalled", onInstalled);
    window.addEventListener("offline", onOffline);
    window.addEventListener("online", onOnline);
    window.addEventListener("keydown", onKey);
    return () => {
      window.removeEventListener("beforeinstallprompt", onBefore);
      window.removeEventListener("appinstalled", onInstalled);
      window.removeEventListener("offline", onOffline);
      window.removeEventListener("online", onOnline);
      window.removeEventListener("keydown", onKey);
    };
  }, []);

  useEffect(() => {
    if (view === "quiz") {
      timerRef.current = setInterval(() => setElapsed(e => e + 1), 1000);
      return () => clearInterval(timerRef.current);
    }
  }, [view]);

  // autosave an unfinished test
  useEffect(() => {
    if (view === "quiz" && quiz.length) saveJSON("in-progress", { quiz, idx, answers, flagged, elapsed, meta: quizMeta });
  }, [answers, idx, flagged]); // eslint-disable-line

  function go(v, p) { setView(v); setParams(p || {}); setSearchOpen(false); setMenuOpen(false); window.scrollTo(0, 0); }

  function showToast(text) {
    clearTimeout(toastRef.current);
    setToast(text);
    toastRef.current = setTimeout(() => setToast(null), 1800);
  }

  function setProfile(p) { setProfileState(p); saveJSON("profile", p); }

  function logActivity(n = 1) {
    const today = dayKey();
    setActivity(a => { const next = { ...a, [today]: (a[today] || 0) + n }; saveJSON("activity", next); return next; });
  }

  function toggleBookmark(id) {
    const had = bookmarks.includes(id);
    const nb = had ? bookmarks.filter(x => x !== id) : [...bookmarks, id];
    setBookmarks(nb);
    saveJSON("bookmarks", nb);
    showToast(had ? "Removed from bookmarks" : "Saved to bookmarks ⭐");
  }

  // Practice: "got it" earns full XP and leaves Wrong Answers; "not yet" puts
  // the task in Wrong Answers so it comes back.
  function setTaskStatus(taskId, s) {
    setTaskProgress(tp => {
      const next = { ...tp, [taskId]: { s, d: new Date().toISOString(), tries: (tp[taskId]?.tries || 0) + 1 } };
      saveJSON("task-progress", next);
      return next;
    });
    setWrongBank(wb => {
      const next = { ...wb };
      if (s === "got") delete next[taskId];
      else next[taskId] = { count: (wb[taskId]?.count || 0) + 1, date: new Date().toISOString() };
      saveJSON("wrong-bank", next);
      return next;
    });
    logActivity();
    showToast(s === "got" ? `+${XP.taskGot} XP · Nice work!` : `+${XP.taskAgain} XP · Saved to practise again`);
  }

  function markLessonDone(skillId) {
    if (lessonsDone[skillId]) return;
    const next = { ...lessonsDone, [skillId]: new Date().toISOString() };
    setLessonsDone(next);
    saveJSON("lessons-done", next);
    logActivity(3);
    showToast(`+${XP.lesson} XP · Lesson finished 🎉`);
  }

  function startQuiz({ count, category, idPool, seedOverride, dailyKey, mode = "exam" }) {
    const seed = seedOverride || Math.floor(Math.random() * 1e9);
    const set = buildQuizSet(count, seed, idPool);
    if (!set.length) return;
    setQuiz(set); setAnswers({}); setFlagged({}); setIdx(0); setElapsed(0);
    setQuizMeta({ category, dailyKey: dailyKey || null, mode });
    go("quiz");
  }

  function resumeQuiz() {
    if (!inProgress) return;
    const valid = (inProgress.quiz || []).filter(q => TASK_BY_ID[q.id] && Array.isArray(q.opts) && q.opts.length === 4);
    if (!valid.length) { saveJSON("in-progress", null); setInProgress(null); return; }
    setQuiz(valid); setAnswers(inProgress.answers || {}); setFlagged(inProgress.flagged || {});
    setIdx(Math.min(inProgress.idx || 0, valid.length - 1)); setElapsed(inProgress.elapsed || 0);
    setQuizMeta(inProgress.meta || { category: "Mixed", mode: "exam" });
    go("quiz");
  }

  function selectAnswer(i) { setAnswers(a => ({ ...a, [quiz[idx].id]: i })); }
  function toggleFlag() { setFlagged(f => ({ ...f, [quiz[idx].id]: !f[quiz[idx].id] })); }

  function submitExam() {
    clearInterval(timerRef.current);
    let correct = 0;
    const bySource = {};
    const newWrong = { ...wrongBank };
    quiz.forEach(q => {
      const ok = answers[q.id] === q.ansIdx;
      if (ok) { correct++; delete newWrong[q.id]; }
      else newWrong[q.id] = { count: (newWrong[q.id]?.count || 0) + 1, date: new Date().toISOString() };
      if (!bySource[q.category]) bySource[q.category] = { correct: 0, total: 0 };
      bySource[q.category].total++;
      if (ok) bySource[q.category].correct++;
    });
    const total = quiz.length;
    const pct = total ? Math.round((correct / total) * 1000) / 10 : 0;
    const attempt = { date: new Date().toISOString(), total, correct, pct, timeSec: elapsed, category: quizMeta.category, bySource };
    const newHistory = [attempt, ...history].slice(0, 100);
    setHistory(newHistory); setWrongBank(newWrong);
    saveJSON("exam-history", newHistory); saveJSON("wrong-bank", newWrong);
    saveJSON("in-progress", null); setInProgress(null);
    if (quizMeta.dailyKey) saveJSON(quizMeta.dailyKey, { pct, date: new Date().toISOString() });
    logActivity(total);
    go("results");
  }

  function exitExam() {
    clearInterval(timerRef.current);
    const snap = { quiz, idx, answers, flagged, elapsed, meta: quizMeta };
    saveJSON("in-progress", snap);
    setInProgress(snap);
    go("practice");
  }

  function addToLeaderboard() {
    const correct = quiz.filter(q => answers[q.id] === q.ansIdx).length;
    const entries = loadJSON("leaderboard-entries", []);
    entries.push({ name: profile.name, pct: Math.round((correct / quiz.length) * 1000) / 10, correct, total: quiz.length, category: quizMeta.category, date: new Date().toISOString() });
    saveJSON("leaderboard-entries", entries.slice(-500));
    showToast("Added to the Leaderboard 🏆");
  }

  function toggleTheme() { setTheme(th => { const n = th === "dark" ? "light" : "dark"; saveJSON("theme", n); return n; }); }

  function resetAll() { clearAll(); window.location.reload(); }

  async function promptInstall() {
    if (!installPrompt) return;
    installPrompt.prompt();
    await installPrompt.userChoice;
    setInstallPrompt(null);
  }

  const streak = useMemo(() => computeStreak(Object.keys(activity)), [activity]);
  const xp = useMemo(() => totalXp({ taskProgress, lessonsDone, history }), [taskProgress, lessonsDone, history]);
  const level = levelFor(xp);
  const todayCount = activity[dayKey()] || 0;

  const ctx = {
    theme, toggleTheme, profile, setProfile, bookmarks, toggleBookmark, wrongBank, history, inProgress, resumeQuiz,
    taskProgress, setTaskStatus, lessonsDone, markLessonDone, activity, logActivity, streak, xp, level, todayCount,
    go, view, params, startQuiz, showToast, resetAll, setSearchOpen, addToLeaderboard,
    isOffline, canInstall: !!installPrompt && !isInstalled, isInstalled, promptInstall,
  };

  const isFocus = FOCUS_VIEWS.includes(view);
  const tab = TAB_OF[view];

  function renderMain() {
    switch (view) {
      case "skill": return <SkillOverview key={params.id} id={params.id} />;
      case "practice": return <PracticeHub />;
      case "builder": return <TestBuilder preset={params} />;
      case "library": return <LibraryHome />;
      case "notes": return <NotesHome />;
      case "doc": return <DocReader key={`${params.day}-${params.id}`} day={params.day} id={params.id} />;
      case "words": return <KeyWords />;
      case "examples": return <Examples />;
      case "bigpicture": return <BigPicture />;
      case "bookmarks": return <Bookmarks />;
      case "wrong": return <WrongAnswers />;
      case "flashcards": return <Flashcards />;
      case "leaderboard": return <Leaderboard />;
      case "progress": return <ProgressScreen />;
      case "me": return <MeScreen />;
      case "help": return <Help />;
      case "about": return <About />;
      default: return <LearnHome />;
    }
  }

  function renderFocus() {
    switch (view) {
      case "welcome": return <Welcome />;
      case "lesson": return <LessonPlayer key={params.id} id={params.id} />;
      case "session": return <PracticeSession key={`${params.id}-${params.task || ""}-${params.filter || ""}`} id={params.id} startTask={params.task} filter={params.filter} />;
      case "quiz": return quiz.length ? <QuizScreen quiz={quiz} idx={idx} setIdx={setIdx} answers={answers} selectAnswer={selectAnswer} flagged={flagged} toggleFlag={toggleFlag} elapsed={elapsed} mode={quizMeta.mode} category={quizMeta.category} submitExam={submitExam} exitExam={exitExam} /> : null;
      case "results": return <ResultsScreen quiz={quiz} answers={answers} flagged={flagged} elapsed={elapsed} category={quizMeta.category} />;
      default: return null;
    }
  }

  return (
    <AppCtx.Provider value={ctx}>
      <ReaderProvider>
        {isOffline && <div className="banner fill-yellow"><WifiOff size={15} /> You are offline. Lessons, tasks and your progress still work.</div>}
        {backOnline && <div className="banner fill-green"><Wifi size={15} /> You are back online</div>}
        {toast && <div className="toast" role="status"><Sparkles size={16} /> {toast}</div>}

        {isFocus ? (
          <div className="fade">{renderFocus()}</div>
        ) : (
          <>
            <header className="header">
              <div className="header-in">
                <button className="logo" onClick={() => go("learn")} aria-label="AI Trainer Class home">
                  <span className="logo-mark"><LogoMark size={22} /></span>
                  <span className="logo-word">AI Trainer <i className="long">class</i></span>
                </button>
                <nav className="nav" aria-label="Main">
                  {TABS.map(t => (
                    <button key={t.id} className={tab === t.id ? "on" : ""} onClick={() => go(t.id)} aria-current={tab === t.id ? "page" : undefined}>
                      <t.icon size={17} /> {t.label}
                    </button>
                  ))}
                </nav>
                <div className="header-tools">
                  <span className="sticker fill-orange" title="Day streak" style={{ alignSelf: "center" }}>🔥 {streak}</span>
                  <button className="icon-btn" onClick={() => setSearchOpen(true)} aria-label="Search (press /)"><Search size={18} /></button>
                  <button className="icon-btn" onClick={toggleTheme} aria-label="Light or night mode">{theme === "dark" ? <Sun size={18} /> : <Moon size={18} />}</button>
                  <button className="icon-btn menu-btn" onClick={() => setMenuOpen(true)} aria-label="Open menu"><LayoutGrid size={18} /></button>
                </div>
              </div>
              <nav className="nav-strip" aria-label="Sections">
                {TABS.map(t => (
                  <button key={t.id} className={tab === t.id ? "on" : ""} onClick={() => go(t.id)} aria-current={tab === t.id ? "page" : undefined}>
                    <t.icon size={15} /> {t.label}
                  </button>
                ))}
              </nav>
            </header>

            <main className={`page${NARROW.includes(view) ? " narrow" : ""}`}>
              <div className="fade" key={view + (params.id || "")}>{renderMain()}</div>
            </main>
          </>
        )}

        {menuOpen && <MenuOverlay onClose={() => setMenuOpen(false)} />}
        {view !== "welcome" && <ReaderDock inFocus={isFocus} />}
        {searchOpen && <SearchSheet onClose={() => setSearchOpen(false)} />}
      </ReaderProvider>
    </AppCtx.Provider>
  );
}
