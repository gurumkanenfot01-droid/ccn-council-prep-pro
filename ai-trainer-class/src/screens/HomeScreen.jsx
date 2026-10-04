import { useState } from "react";
import {
  ClipboardList, Layers, BookOpen, Bookmark, BarChart3, Trophy, Clock, ChevronRight, CheckCircle2, XCircle,
  Zap, RotateCcw, Sparkles, Flame, Grid3x3, PlayCircle, Shuffle, X, Download, Share, LifeBuoy, Headphones, Map, Target,
} from "lucide-react";
import { useApp, Card, IconBadge, Button, Modal, SectionHeader, EmptyState } from "../ui/kit.jsx";
import { ProgressRing } from "../ui/extra.jsx";
import { useReader } from "../lib/reader.jsx";
import { COURSE, SKILLS, TASKS, ROLES } from "../data/course.js";

function InstallAppBanner() {
  const { t, canInstall, isAppInstalled, promptInstall } = useApp();
  const [dismissed, setDismissed] = useState(() => { try { return localStorage.getItem("aitc-install-banner-dismissed") === "1"; } catch { return false; } });
  const [showIOSHelp, setShowIOSHelp] = useState(false);
  const isIOS = /iPad|iPhone|iPod/.test(navigator.userAgent) && !window.MSStream;

  if (isAppInstalled || dismissed) return null;
  if (!canInstall && !isIOS) return null;

  function dismiss() {
    setDismissed(true);
    try { localStorage.setItem("aitc-install-banner-dismissed", "1"); } catch { /* ignore */ }
  }

  return (
    <>
      <Card style={{ padding: "14px 18px", marginBottom: 22, display: "flex", alignItems: "center", justifyContent: "space-between", gap: 14, background: t.navySoft, border: `1px solid ${t.navy}22` }}>
        <div style={{ display: "flex", alignItems: "center", gap: 12 }}>
          <IconBadge icon={Download} color={t.navy} bg={t.card} size={38} />
          <div>
            <div style={{ fontSize: 13.5, fontWeight: 700, color: t.text }}>Install this app</div>
            <div style={{ fontSize: 11.5, color: t.textFaint }}>Put it on your home screen. It opens fast and works with no internet.</div>
          </div>
        </div>
        <div style={{ display: "flex", alignItems: "center", gap: 8, flexShrink: 0 }}>
          <button onClick={dismiss} aria-label="Hide" className="press" style={{ background: "none", border: "none", cursor: "pointer", padding: 4 }}>
            <X size={16} color={t.textFaint} />
          </button>
          <Button size="sm" variant="soft" onClick={() => canInstall ? promptInstall() : setShowIOSHelp(true)}>Install</Button>
        </div>
      </Card>
      {showIOSHelp && (
        <Modal onClose={() => setShowIOSHelp(false)} width={340}>
          <div className="f-serif" style={{ fontSize: 17, fontWeight: 700, marginBottom: 10, color: t.text }}>Install on iPhone / iPad</div>
          <div style={{ fontSize: 13, color: t.textMuted, lineHeight: 1.9 }}>
            <div style={{ display: "flex", alignItems: "center", gap: 8 }}>1. Tap the <Share size={14} color={t.navy} /> <strong>Share</strong> button in Safari</div>
            <div>2. Scroll down. Tap <strong>"Add to Home Screen"</strong></div>
            <div>3. Tap <strong>"Add"</strong> at the top right</div>
          </div>
          <Button full variant="primary" style={{ marginTop: 16 }} onClick={() => setShowIOSHelp(false)}>Got it</Button>
        </Modal>
      )}
    </>
  );
}

function MiniStatRow({ icon: Icon, label, value, color, onClick }) {
  const { t } = useApp();
  return (
    <div onClick={onClick} className="press" style={{ display: "flex", alignItems: "center", justifyContent: "space-between", padding: "8px 4px", cursor: "pointer" }}>
      <div style={{ display: "flex", alignItems: "center", gap: 10 }}>
        <IconBadge icon={Icon} color={color} bg={color + "18"} size={30} />
        <span style={{ fontSize: 13, color: t.textMuted, fontWeight: 600 }}>{label}</span>
      </div>
      <div style={{ display: "flex", alignItems: "center", gap: 2 }}>
        <span className="f-mono" style={{ fontSize: 15, fontWeight: 800, color: t.text }}>{value}</span>
        <ChevronRight size={14} color={t.textFaint} />
      </div>
    </div>
  );
}

export function QuickTile({ icon: Icon, label, desc, color, bg, onClick }) {
  const { t } = useApp();
  return (
    <Card hover onClick={onClick} style={{ padding: 16, display: "flex", flexDirection: "column", gap: 10, position: "relative", overflow: "hidden" }}>
      <Icon size={72} color={color} strokeWidth={1.5} className="tile-watermark" style={{ position: "absolute", right: -14, bottom: -16, opacity: 0.08 }} />
      <IconBadge icon={Icon} color={color} bg={bg} size={38} />
      <div style={{ position: "relative" }}>
        <div style={{ fontSize: 13.5, fontWeight: 700, color: t.text }}>{label}</div>
        <div style={{ fontSize: 11.5, color: t.textFaint, marginTop: 1 }}>{desc}</div>
      </div>
    </Card>
  );
}

// Next thing to study: the first skill whose lesson is not done, or the first
// skill with practice tasks left.
function nextStep(lessonsDone, taskProgress) {
  for (const s of SKILLS) {
    if (!lessonsDone[s.id]) return { skill: s, tab: "lesson", text: `Read the lesson: ${s.n}` };
    const left = s.taskIds.filter(id => taskProgress[id]?.s !== "got").length;
    if (left > 0) return { skill: s, tab: "practice", text: `Practise ${s.n} (${left} tasks left)` };
  }
  return null;
}

export default function HomeScreen({ go }) {
  const { t, profile, bookmarks, history, wrongBank, streak, inProgress, taskProgress, lessonsDone } = useApp();
  const reader = useReader();
  const totalAttempts = history.length;
  const avgPct = totalAttempts ? Math.round(history.reduce((s, h) => s + h.pct, 0) / totalAttempts) : 0;
  const tasksGot = TASKS.filter(q => taskProgress[q.id]?.s === "got").length;
  const coursePct = Math.round((tasksGot / TASKS.length) * 100);
  const lessonsCount = Object.keys(lessonsDone).length;
  const hour = new Date().getHours();
  const greeting = hour < 12 ? "Good morning" : hour < 17 ? "Good afternoon" : "Good evening";
  const step = nextStep(lessonsDone, taskProgress);

  return (
    <div className="fade-in">
      {/* Hero */}
      <div style={{
        background: `linear-gradient(135deg, ${t.navy} 0%, ${t.navyDark} 100%)`,
        borderRadius: 20, padding: "28px 26px 22px", marginBottom: 22, color: "#fff", position: "relative", overflow: "hidden",
      }}>
        <div style={{ position: "absolute", right: -30, top: -30, width: 180, height: 180, borderRadius: "50%", background: "rgba(255,255,255,0.06)" }} />
        <div style={{ position: "absolute", right: 40, bottom: -50, width: 120, height: 120, borderRadius: "50%", background: "rgba(255,255,255,0.05)" }} />
        <div style={{ position: "relative" }}>
          <div style={{ fontSize: 13, opacity: 0.75, fontWeight: 600, marginBottom: 4 }}>{greeting}{profile.name ? `, ${profile.name.split(" ")[0]}` : ""}</div>
          <div className="f-serif" style={{ fontSize: 24, fontWeight: 700, marginBottom: 6 }}>Ready for today's class?</div>
          <div style={{ fontSize: 13, opacity: 0.8, marginBottom: 14 }}>{COURSE.title}</div>
          <div style={{ display: "flex", gap: 10, flexWrap: "wrap" }}>
            {step
              ? <Button variant="accent" icon={PlayCircle} onClick={() => go("skill", { id: step.skill.id, tab: step.tab })}>Continue learning</Button>
              : <Button variant="accent" icon={PlayCircle} onClick={() => go("papers")}>Take a Role Test</Button>}
            {inProgress && <Button variant="ghost" icon={RotateCcw} style={{ background: "rgba(255,255,255,0.12)", color: "#fff", border: "1px solid rgba(255,255,255,0.3)" }} onClick={() => go("quiz-resume")}>Continue Test</Button>}
            {streak > 0 && (
              <div style={{ display: "flex", alignItems: "center", gap: 6, background: "rgba(255,255,255,0.12)", padding: "10px 16px", borderRadius: 12, fontSize: 13.5, fontWeight: 700 }}>
                <Flame size={16} color="#FFB84D" /> {streak}-day streak
              </div>
            )}
          </div>
          {step && <div style={{ fontSize: 12, opacity: 0.75, marginTop: 10 }}>Next: {step.text}</div>}
        </div>
        {/* Sound-wave line: a small nod to the AI Reader */}
        <svg viewBox="0 0 460 40" preserveAspectRatio="none" style={{ position: "relative", width: "100%", height: 30, marginTop: 18, display: "block" }}>
          <polyline points="0,22 120,22 132,12 144,32 156,6 168,36 180,16 192,26 204,22 460,22" fill="none" stroke="rgba(255,255,255,0.14)" strokeWidth="2" />
          <polyline className="wave-pulse" points="0,22 120,22 132,12 144,32 156,6 168,36 180,16 192,26 204,22 460,22" fill="none" stroke="#8FC1FF" strokeWidth="2.5" strokeLinecap="round" />
        </svg>
      </div>

      <InstallAppBanner />

      {/* Featured: the big picture */}
      <Card hover onClick={() => go("bigpicture")} style={{
        padding: "16px 18px", marginBottom: 16, display: "flex", alignItems: "center", justifyContent: "space-between", gap: 14,
        background: `linear-gradient(135deg, ${t.navy} 0%, ${t.navyDark} 100%)`, color: "#fff", border: "none",
      }}>
        <div style={{ display: "flex", alignItems: "center", gap: 12 }}>
          <IconBadge icon={Map} color="#fff" bg="rgba(255,255,255,0.15)" size={42} />
          <div>
            <div style={{ fontSize: 14, fontWeight: 700 }}>New here? Start with the big picture</div>
            <div style={{ fontSize: 11.5, opacity: 0.8 }}>How AI training works, in 5 simple pictures</div>
          </div>
        </div>
        <ChevronRight size={18} color="#fff" />
      </Card>

      {/* AI Reader banner */}
      {reader?.supported && (
        <Card hover onClick={() => go("profile", { focus: "reader" })} style={{ padding: "14px 18px", marginBottom: 16, display: "flex", alignItems: "center", justifyContent: "space-between", gap: 14, background: t.amberSoft, border: `1px solid ${t.amber}33` }}>
          <div style={{ display: "flex", alignItems: "center", gap: 12 }}>
            <IconBadge icon={Headphones} color={t.amber} bg={t.card} size={38} />
            <div>
              <div style={{ fontSize: 13.5, fontWeight: 700, color: t.text }}>AI Reader can read to you</div>
              <div style={{ fontSize: 11.5, color: t.textFaint }}>Tap any <strong>Listen</strong> button to hear lessons, tasks and answers out loud</div>
            </div>
          </div>
          <ChevronRight size={18} color={t.amber} />
        </Card>
      )}

      {/* Customer Care banner */}
      <Card hover onClick={() => go("support")} style={{ padding: "14px 18px", marginBottom: 22, display: "flex", alignItems: "center", justifyContent: "space-between", gap: 14, background: t.navySoft, border: `1px solid ${t.navy}22` }}>
        <div style={{ display: "flex", alignItems: "center", gap: 12 }}>
          <IconBadge icon={LifeBuoy} color={t.navy} bg={t.card} size={38} />
          <div>
            <div style={{ fontSize: 13.5, fontWeight: 700, color: t.text }}>Need help?</div>
            <div style={{ fontSize: 11.5, color: t.textFaint }}>Customer Care is here. WhatsApp or email us any time.</div>
          </div>
        </div>
        <ChevronRight size={18} color={t.navy} />
      </Card>

      {/* Progress overview */}
      <Card style={{ padding: 22, marginBottom: 26, display: "flex", alignItems: "center", gap: 22, flexWrap: "wrap" }}>
        <ProgressRing pct={coursePct} size={100} stroke={9} label="Class done" color={t.emerald} />
        <div style={{ flex: 1, minWidth: 200, display: "flex", flexDirection: "column", gap: 4 }}>
          <MiniStatRow icon={BookOpen} label={`Lessons finished (of ${SKILLS.length})`} value={lessonsCount} color={t.navy} onClick={() => go("notes")} />
          <MiniStatRow icon={Target} label={`Tasks done (of ${TASKS.length})`} value={tasksGot} color={t.emerald} onClick={() => go("performance")} />
          <MiniStatRow icon={ClipboardList} label="Tests taken" value={totalAttempts} color={t.amber} onClick={() => go("performance")} />
          <MiniStatRow icon={Bookmark} label="Bookmarked" value={bookmarks.length} color={t.red} onClick={() => go("bookmarks")} />
        </div>
      </Card>

      {/* Roles */}
      <SectionHeader icon={Grid3x3} title="Your 2 Roles" />
      <div style={{ display: "grid", gridTemplateColumns: "repeat(auto-fit, minmax(240px, 1fr))", gap: 12, marginBottom: 28 }}>
        {ROLES.map(r => {
          const ids = r.skills.flatMap(s => s.taskIds);
          const got = ids.filter(id => taskProgress[id]?.s === "got").length;
          return (
            <Card key={r.key} hover onClick={() => go("categories", { role: r.key })} style={{ padding: 18 }}>
              <div style={{ display: "flex", alignItems: "center", gap: 10, marginBottom: 8 }}>
                <div style={{ fontSize: 26 }}>{r.icon}</div>
                <div>
                  <div style={{ fontSize: 14.5, fontWeight: 700, color: t.text }}>{r.name}</div>
                  <div style={{ fontSize: 12, color: t.textFaint }}>{r.skills.length} skills · {ids.length} tasks</div>
                </div>
              </div>
              <div style={{ fontSize: 12.5, color: t.textMuted, lineHeight: 1.5, marginBottom: 10 }}>{r.intro}</div>
              <div style={{ height: 6, background: t.cardBorder, borderRadius: 3, overflow: "hidden" }}>
                <div style={{ height: "100%", width: `${(got / ids.length) * 100}%`, background: t.emerald }} />
              </div>
              <div style={{ fontSize: 11, color: t.textFaint, marginTop: 5 }}>{got} of {ids.length} tasks done</div>
            </Card>
          );
        })}
      </div>

      {/* Quick actions */}
      <SectionHeader icon={Zap} title="Quick Actions" />
      <div style={{ display: "grid", gridTemplateColumns: "repeat(auto-fit, minmax(140px, 1fr))", gap: 12, marginBottom: 30 }}>
        <QuickTile icon={ClipboardList} label="Practice Test" desc="Timed test" color={t.navy} bg={t.navySoft} onClick={() => go("setup")} />
        <QuickTile icon={Shuffle} label="Random Task" desc="Quick drill" color={t.emerald} bg={t.emeraldSoft} onClick={() => go("random")} />
        <QuickTile icon={Sparkles} label="Daily Challenge" desc="10 new tasks" color={t.amber} bg={t.amberSoft} onClick={() => go("daily")} />
        <QuickTile icon={Layers} label="Flashcards" desc="Flip and learn" color={t.red} bg={t.redSoft} onClick={() => go("flashcards")} />
        <QuickTile icon={BookOpen} label="Lessons" desc={`${SKILLS.length} skills`} color={t.navy} bg={t.navySoft} onClick={() => go("notes")} />
        <QuickTile icon={XCircle} label="Wrong Answers" desc={`${Object.keys(wrongBank).length} to review`} color={t.red} bg={t.redSoft} onClick={() => go("wrongreview")} />
        <QuickTile icon={BarChart3} label="My Progress" desc={`${coursePct}% done`} color={t.emerald} bg={t.emeraldSoft} onClick={() => go("performance")} />
        <QuickTile icon={Trophy} label="Leaderboard" desc="Top scores" color={t.amber} bg={t.amberSoft} onClick={() => go("leaderboard")} />
      </div>

      {/* Recent activity */}
      <SectionHeader icon={Clock} title="Recent Tests" />
      <Card style={{ padding: history.length ? 6 : 0 }}>
        {history.length === 0 ? (
          <EmptyState icon={ClipboardList} text="No tests yet" sub="Take your first practice test to see it here" />
        ) : (
          history.slice(0, 5).map((h, i) => (
            <div key={i} style={{
              display: "flex", alignItems: "center", justifyContent: "space-between", padding: "12px 14px 12px 12px",
              borderBottom: i < Math.min(4, history.length - 1) ? `1px solid ${t.cardBorder}` : "none",
              borderLeft: `3px solid ${h.pct >= 50 ? t.emerald : t.red}`, marginBottom: 1,
            }}>
              <div style={{ display: "flex", alignItems: "center", gap: 12 }}>
                <IconBadge icon={h.pct >= 50 ? CheckCircle2 : XCircle} color={h.pct >= 50 ? t.emerald : t.red} bg={h.pct >= 50 ? t.emeraldSoft : t.redSoft} size={34} />
                <div>
                  <div style={{ fontSize: 13.5, fontWeight: 700, color: t.text }}>{h.category || "Mixed"} &middot; {h.total} questions</div>
                  <div style={{ fontSize: 12, color: t.textFaint }}>{new Date(h.date).toLocaleDateString(undefined, { month: "short", day: "numeric", hour: "2-digit", minute: "2-digit" })}</div>
                </div>
              </div>
              <div className="f-mono" style={{ fontWeight: 800, fontSize: 15, color: h.pct >= 50 ? t.emerald : t.red }}>{h.pct}%</div>
            </div>
          ))
        )}
      </Card>
      {totalAttempts > 0 && <div style={{ fontSize: 12, color: t.textFaint, marginTop: 10, textAlign: "center" }}>Average test score: {avgPct}%</div>}
    </div>
  );
}
