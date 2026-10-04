import { useState, useEffect, useRef } from "react";
import {
  BarChart3, TrendingUp, ClipboardList, Layers, Flame, Trophy, Crown, User, Mail, Camera, Star, MapPin,
  Award, Medal, Lock, PlayCircle, BookOpen, Target, GraduationCap, Headphones, Volume2, Trash2, CheckCircle2,
} from "lucide-react";
import { LineChart, Line, XAxis, YAxis, CartesianGrid, Tooltip, ResponsiveContainer } from "recharts";
import { useApp, Card, IconBadge, StatCard, Button, Chip, Modal, SectionHeader, EmptyState, Field } from "../ui/kit.jsx";
import { ProgressRing, ProgressBar, Toggle } from "../ui/extra.jsx";
import { useReader, SPEEDS } from "../lib/reader.jsx";
import { loadJSON } from "../lib/store.js";
import { ROLES, SKILLS, TASKS } from "../data/course.js";

// ---------- My Progress (the CCN "Performance" screen) ----------
export function PerformanceScreen({ go }) {
  const { t, history, streak, taskProgress, lessonsDone } = useApp();
  const totalAttempts = history.length;
  const avgPct = totalAttempts ? Math.round(history.reduce((s, h) => s + h.pct, 0) / totalAttempts) : 0;
  const tasksGot = TASKS.filter(q => taskProgress[q.id]?.s === "got").length;
  const coursePct = Math.round((tasksGot / TASKS.length) * 100);
  const trendData = history.slice(0, 14).reverse().map((h, i) => ({ name: `#${i + 1}`, score: h.pct }));

  const agg = {};
  history.forEach(h => {
    Object.entries(h.bySource || {}).forEach(([cat, v]) => {
      if (!agg[cat]) agg[cat] = { correct: 0, total: 0 };
      agg[cat].correct += v.correct; agg[cat].total += v.total;
    });
  });
  const aggArr = Object.entries(agg).map(([name, v]) => ({ name, pct: Math.round((v.correct / v.total) * 100), total: v.total })).sort((a, b) => a.pct - b.pct);

  return (
    <div className="fade-in">
      <SectionHeader icon={BarChart3} title="My Progress" />

      <div style={{ display: "grid", gridTemplateColumns: "repeat(auto-fit, minmax(150px, 1fr))", gap: 12, marginBottom: 20 }}>
        <StatCard icon={Target} label="Tasks done" value={`${tasksGot}/${TASKS.length}`} color={t.emerald} bg={t.emeraldSoft} />
        <StatCard icon={BookOpen} label="Lessons finished" value={`${Object.keys(lessonsDone).length}/${SKILLS.length}`} color={t.navy} bg={t.navySoft} />
        <StatCard icon={TrendingUp} label="Average test score" value={`${avgPct}%`} color={t.amber} bg={t.amberSoft} />
        <StatCard icon={Flame} label="Study streak" value={`${streak}d`} color={t.red} bg={t.redSoft} />
      </div>

      <Card style={{ padding: 22, marginBottom: 20, display: "flex", alignItems: "center", gap: 22, flexWrap: "wrap" }}>
        <ProgressRing pct={coursePct} size={110} stroke={10} label="Day 1 done" color={t.emerald} />
        <div style={{ flex: 1, minWidth: 220, display: "flex", flexDirection: "column", gap: 14 }}>
          {ROLES.map(r => {
            const ids = r.skills.flatMap(s => s.taskIds);
            const got = ids.filter(id => taskProgress[id]?.s === "got").length;
            const lessons = r.skills.filter(s => lessonsDone[s.id]).length;
            return (
              <div key={r.key}>
                <div style={{ display: "flex", justifyContent: "space-between", fontSize: 13, fontWeight: 700, color: t.text, marginBottom: 5 }}>
                  <span>{r.icon} {r.name}</span><span className="f-mono">{Math.round((got / ids.length) * 100)}%</span>
                </div>
                <ProgressBar pct={(got / ids.length) * 100} />
                <div style={{ fontSize: 11.5, color: t.textFaint, marginTop: 4 }}>{got}/{ids.length} tasks · {lessons}/{r.skills.length} lessons</div>
              </div>
            );
          })}
        </div>
      </Card>

      <Card style={{ padding: 20, marginBottom: 20 }}>
        <div style={{ fontSize: 13, fontWeight: 700, color: t.textMuted, textTransform: "uppercase", letterSpacing: 0.5, marginBottom: 14 }}>Each Skill</div>
        <div style={{ display: "flex", flexDirection: "column", gap: 4 }}>
          {SKILLS.map(s => {
            const got = s.taskIds.filter(id => taskProgress[id]?.s === "got").length;
            const again = s.taskIds.filter(id => taskProgress[id]?.s === "again").length;
            return (
              <div key={s.id} onClick={() => go("skill", { id: s.id })} className="press" style={{ display: "flex", alignItems: "center", gap: 10, padding: "8px 4px", cursor: "pointer" }}>
                <div style={{ width: 22, fontSize: 15, textAlign: "center" }}>{s.icon}</div>
                <div style={{ flex: 1, minWidth: 0 }}>
                  <div style={{ display: "flex", justifyContent: "space-between", gap: 8, fontSize: 12.5, color: t.text, marginBottom: 4 }}>
                    <span style={{ overflow: "hidden", textOverflow: "ellipsis", whiteSpace: "nowrap", fontWeight: 600 }}>{s.n} {lessonsDone[s.id] && <CheckCircle2 size={12} color={t.emerald} style={{ verticalAlign: -2 }} />}</span>
                    <span className="f-mono" style={{ color: t.textMuted, flexShrink: 0 }}>{got}/20{again ? <span style={{ color: t.red }}> · {again}↺</span> : null}</span>
                  </div>
                  <ProgressBar pct={(got / 20) * 100} height={6} />
                </div>
              </div>
            );
          })}
        </div>
        <div style={{ fontSize: 11.5, color: t.textFaint, marginTop: 10 }}>✓ = lesson finished · ↺ = tasks to practise again. Tap a skill to open it.</div>
      </Card>

      {trendData.length > 1 && (
        <Card style={{ padding: 20, marginBottom: 20 }}>
          <div style={{ fontSize: 13, fontWeight: 700, color: t.textMuted, textTransform: "uppercase", letterSpacing: 0.5, marginBottom: 14 }}>Test Scores Over Time</div>
          <ResponsiveContainer width="100%" height={200}>
            <LineChart data={trendData}>
              <CartesianGrid strokeDasharray="3 3" stroke={t.cardBorder} />
              <XAxis dataKey="name" tick={{ fontSize: 11, fill: t.textFaint }} />
              <YAxis domain={[0, 100]} tick={{ fontSize: 11, fill: t.textFaint }} />
              <Tooltip contentStyle={{ background: t.card, border: `1px solid ${t.cardBorder}`, borderRadius: 8, fontSize: 12 }} />
              <Line type="monotone" dataKey="score" stroke={t.navy} strokeWidth={2.5} dot={{ r: 3, fill: t.navy }} />
            </LineChart>
          </ResponsiveContainer>
        </Card>
      )}

      {aggArr.length > 0 && (
        <Card style={{ padding: 20, marginBottom: 20 }}>
          <div style={{ fontSize: 13, fontWeight: 700, color: t.textMuted, textTransform: "uppercase", letterSpacing: 0.5, marginBottom: 14 }}>Test Score by Skill (all tests)</div>
          <div style={{ display: "flex", flexDirection: "column", gap: 10 }}>
            {aggArr.map(a => (
              <div key={a.name} style={{ display: "flex", alignItems: "center", gap: 10 }}>
                <div style={{ width: 150, fontSize: 12.5, color: t.text, flexShrink: 0, overflow: "hidden", textOverflow: "ellipsis", whiteSpace: "nowrap" }}>{a.name}</div>
                <div style={{ flex: 1 }}><ProgressBar pct={a.pct} color={a.pct >= 50 ? t.emerald : t.red} /></div>
                <div className="f-mono" style={{ fontSize: 11.5, width: 40, textAlign: "right", color: t.textMuted }}>{a.pct}%</div>
              </div>
            ))}
          </div>
        </Card>
      )}

      {totalAttempts === 0 && <EmptyState icon={ClipboardList} text="No test scores yet" sub="Take a practice test to see your scores here" />}
    </div>
  );
}

// ---------- Leaderboard ----------
export function LeaderboardScreen() {
  const { t, profile } = useApp();
  const [entries] = useState(() => loadJSON("leaderboard-entries", []));
  const [range, setRange] = useState("week");
  const now = Date.now();
  const rangeMs = range === "week" ? 7 * 86400000 : range === "month" ? 30 * 86400000 : Infinity;
  const filtered = entries.filter(e => now - new Date(e.date).getTime() < rangeMs);
  const best = {};
  filtered.forEach(e => { if (!best[e.name] || e.pct > best[e.name].pct) best[e.name] = e; });
  const ranked = Object.values(best).sort((a, b) => b.pct - a.pct).slice(0, 20);

  return (
    <div className="fade-in">
      <SectionHeader icon={Trophy} title="Leaderboard" />
      <Card style={{ padding: 14, marginBottom: 16, background: t.navySoft, border: "none" }}>
        <div style={{ fontSize: 12.5, color: t.navy, lineHeight: 1.5 }}>
          Best test scores on <strong>this device</strong>. Score 50% or more in a test, then tap <strong>Add it</strong> to join. Share the phone with a study friend and compete!
        </div>
      </Card>
      <div style={{ display: "flex", gap: 8, marginBottom: 18, flexWrap: "wrap" }}>
        <Chip active={range === "week"} onClick={() => setRange("week")}>This week</Chip>
        <Chip active={range === "month"} onClick={() => setRange("month")}>This month</Chip>
        <Chip active={range === "all"} onClick={() => setRange("all")}>All time</Chip>
      </div>
      {ranked.length === 0 ? (
        <EmptyState icon={Trophy} text="No scores yet" sub="Be the first! Pass a test and add your score." />
      ) : (
        <div style={{ display: "flex", flexDirection: "column", gap: 8 }}>
          {ranked.map((e, i) => (
            <Card key={e.name + i} style={{ padding: "14px 18px", display: "flex", alignItems: "center", gap: 14, borderColor: e.name === profile.name ? t.navy : t.cardBorder }}>
              <div className="f-mono" style={{ width: 26, textAlign: "center", fontWeight: 800, color: i === 0 ? t.amber : i === 1 ? t.textMuted : i === 2 ? "#B87333" : t.textFaint, fontSize: i < 3 ? 18 : 14 }}>
                {i === 0 ? <Crown size={18} color={t.amber} /> : `#${i + 1}`}
              </div>
              <div style={{ flex: 1, minWidth: 0 }}>
                <div style={{ fontSize: 14, fontWeight: 700, color: t.text }}>{e.name}{e.name === profile.name && <span style={{ color: t.navy, fontWeight: 600 }}> (you)</span>}</div>
                {e.category && <div style={{ fontSize: 11.5, color: t.textFaint }}>{e.category} · {e.correct}/{e.total}</div>}
              </div>
              <div className="f-mono" style={{ fontWeight: 800, color: t.navy, fontSize: 15 }}>{e.pct}%</div>
            </Card>
          ))}
        </div>
      )}
    </div>
  );
}

// ---------- AI Reader settings ----------
function ReaderSettings({ highlight }) {
  const { t } = useApp();
  const r = useReader();
  const ref = useRef(null);
  useEffect(() => { if (highlight && ref.current) ref.current.scrollIntoView({ behavior: "smooth", block: "center" }); }, [highlight]);

  if (!r?.supported) {
    return (
      <Card style={{ padding: 16, marginBottom: 20 }}>
        <div style={{ display: "flex", alignItems: "center", gap: 12 }}>
          <IconBadge icon={Headphones} color={t.textFaint} bg={t.bgAlt} size={38} />
          <div style={{ fontSize: 12.5, color: t.textMuted }}>The AI Reader does not work in this browser. Try Chrome, Edge or Safari.</div>
        </div>
      </Card>
    );
  }
  return (
    <div ref={ref}>
      <Card style={{ padding: 18, marginBottom: 20, border: highlight ? `2px solid ${t.navy}` : undefined }}>
        <div style={{ display: "flex", alignItems: "center", gap: 12, marginBottom: 16 }}>
          <IconBadge icon={Headphones} color={t.amber} bg={t.amberSoft} size={38} />
          <div>
            <div style={{ fontSize: 14, fontWeight: 700, color: t.text }}>AI Reader</div>
            <div style={{ fontSize: 11.5, color: t.textFaint }}>Reads lessons, tasks and answers out loud. Uses your phone's voice, so it is free.</div>
          </div>
        </div>

        <div style={{ fontSize: 11.5, fontWeight: 700, color: t.textMuted, marginBottom: 6, textTransform: "uppercase", letterSpacing: 0.4 }}>Voice</div>
        <select value={r.settings.voiceURI} onChange={e => r.updateSettings({ voiceURI: e.target.value })}
          style={{ width: "100%", border: `1px solid ${t.cardBorder}`, borderRadius: 10, padding: "10px 12px", background: t.bgAlt, color: t.text, fontSize: 14, marginBottom: 14 }}>
          <option value="">Best voice for me (automatic)</option>
          {r.voices.map(v => <option key={v.voiceURI} value={v.voiceURI}>{v.name} ({v.lang})</option>)}
        </select>

        <div style={{ fontSize: 11.5, fontWeight: 700, color: t.textMuted, marginBottom: 6, textTransform: "uppercase", letterSpacing: 0.4 }}>Speed</div>
        <div style={{ display: "flex", gap: 6, flexWrap: "wrap", marginBottom: 14 }}>
          {SPEEDS.map(s => <Chip key={s} active={r.settings.rate === s} onClick={() => r.updateSettings({ rate: s })}>{s === 0.75 ? "Slow" : s === 1 ? "Normal" : s === 1.3 ? "Fast" : `${s}x`}</Chip>)}
        </div>

        <div style={{ display: "flex", alignItems: "center", justifyContent: "space-between", gap: 12, borderTop: `1px solid ${t.cardBorder}`, paddingTop: 14, marginBottom: 14 }}>
          <div>
            <div style={{ fontSize: 13.5, fontWeight: 700, color: t.text }}>Read each task to me</div>
            <div style={{ fontSize: 12, color: t.textFaint }}>Starts reading by itself when a new task or test question opens</div>
          </div>
          <Toggle on={r.settings.autoRead} onClick={() => r.updateSettings({ autoRead: !r.settings.autoRead })} />
        </div>

        <Button variant="soft" icon={Volume2} onClick={() => r.speak("Hello! I am your AI Reader. I will read your lessons and tasks out loud. Tap Listen on any card to hear it.", "Test voice")}>Test the voice</Button>
      </Card>
    </div>
  );
}

// ---------- Profile ----------
export function ProfileScreen({ go, focus }) {
  const { t, profile, setProfile, history, streak, taskProgress, lessonsDone, resetAll } = useApp();
  const [form, setForm] = useState(profile);
  const [saved, setSaved] = useState(false);
  const [confirmReset, setConfirmReset] = useState(false);
  const fileRef = useRef(null);

  useEffect(() => { setForm(profile); }, [profile]);

  function handlePhoto(e) {
    const file = e.target.files[0];
    if (!file) return;
    if (file.size > 900000) { alert("Please choose a smaller picture (under about 900KB)."); return; }
    const reader = new FileReader();
    reader.onload = () => setForm(f => ({ ...f, photo: reader.result }));
    reader.readAsDataURL(file);
  }

  function save() {
    setProfile(form);
    setSaved(true);
    setTimeout(() => setSaved(false), 1800);
  }

  const totalAttempts = history.length;
  const avgPct = totalAttempts ? Math.round(history.reduce((s, h) => s + h.pct, 0) / totalAttempts) : 0;
  const tasksGot = TASKS.filter(q => taskProgress[q.id]?.s === "got").length;
  const roleDone = key => ROLES.find(r => r.key === key).skills.every(s => lessonsDone[s.id]);
  const badges = [
    { id: "lesson", label: "First Lesson Finished", earned: Object.keys(lessonsDone).length >= 1, icon: BookOpen },
    { id: "first", label: "First Test", earned: totalAttempts >= 1, icon: PlayCircle },
    { id: "tasks50", label: "50 Tasks Done", earned: tasksGot >= 50, icon: Target },
    { id: "ten", label: "10 Tests Done", earned: totalAttempts >= 10, icon: Medal },
    { id: "high", label: "Scored 90%+", earned: history.some(h => h.pct >= 90), icon: Crown },
    { id: "week", label: "7-Day Streak", earned: streak >= 7, icon: Flame },
    { id: "g", label: "All Generalist Lessons", earned: roleDone("g"), icon: GraduationCap },
    { id: "l", label: "All LLM Rater Lessons", earned: roleDone("l"), icon: Star },
    { id: "all", label: "All 360 Tasks Done", earned: tasksGot >= TASKS.length, icon: Layers },
  ];

  return (
    <div className="fade-in">
      <SectionHeader icon={User} title="My Profile" />

      {!profile.name && (
        <Card style={{ padding: "14px 18px", marginBottom: 16, background: t.amberSoft, border: `1px solid ${t.amber}44`, fontSize: 13.5, color: t.text, lineHeight: 1.5 }}>
          👋 <strong>Welcome to the AI Trainer Class!</strong> Type your name and tap <strong>Save</strong> to start.
        </Card>
      )}

      <Card style={{ padding: 24, marginBottom: 20 }}>
        <div style={{ display: "flex", gap: 20, alignItems: "center", flexWrap: "wrap", marginBottom: 22 }}>
          <div style={{ position: "relative" }}>
            <div style={{ width: 84, height: 84, borderRadius: "50%", background: t.navySoft, display: "flex", alignItems: "center", justifyContent: "center", overflow: "hidden", border: `2px solid ${t.navy}` }}>
              {form.photo ? <img src={form.photo} alt="" style={{ width: "100%", height: "100%", objectFit: "cover" }} /> : <User size={34} color={t.navy} />}
            </div>
            <button onClick={() => fileRef.current.click()} aria-label="Add a photo" className="press" style={{ position: "absolute", bottom: -2, right: -2, background: t.navy, border: `2px solid ${t.card}`, borderRadius: "50%", width: 30, height: 30, display: "flex", alignItems: "center", justifyContent: "center", cursor: "pointer" }}>
              <Camera size={13} color="#fff" />
            </button>
            <input ref={fileRef} type="file" accept="image/*" onChange={handlePhoto} style={{ display: "none" }} />
          </div>
          <div>
            <div className="f-serif" style={{ fontSize: 19, fontWeight: 700, color: t.text }}>{form.name || "Add your name"}</div>
            <div style={{ fontSize: 13, color: t.textFaint, marginTop: 2 }}>{form.goal || "AI Trainer student"}</div>
          </div>
        </div>

        <div style={{ display: "grid", gridTemplateColumns: "repeat(auto-fit, minmax(200px, 1fr))", gap: 14 }}>
          <Field label="Full name" value={form.name} onChange={v => setForm(f => ({ ...f, name: v }))} icon={User} />
          <Field label="Email (optional)" value={form.email} onChange={v => setForm(f => ({ ...f, email: v }))} icon={Mail} />
          <Field label="City / Country" value={form.city} onChange={v => setForm(f => ({ ...f, city: v }))} icon={MapPin} />
          <div>
            <div style={{ fontSize: 11.5, fontWeight: 700, color: t.textMuted, marginBottom: 6, textTransform: "uppercase", letterSpacing: 0.4 }}>Role I want</div>
            <div style={{ display: "flex", alignItems: "center", gap: 8, border: `1px solid ${t.cardBorder}`, borderRadius: 10, padding: "9px 12px", background: t.bgAlt }}>
              <Award size={14} color={t.textFaint} />
              <select value={form.goal || ""} onChange={e => setForm(f => ({ ...f, goal: e.target.value }))}
                style={{ border: "none", outline: "none", background: "transparent", fontSize: 14, color: t.text, width: "100%" }}>
                <option value="">Choose a role</option>
                {ROLES.map(r => <option key={r.key} value={r.name}>{r.name}</option>)}
                <option value="Both roles">Both roles</option>
              </select>
            </div>
          </div>
          <Field label="My level now" value={form.level} onChange={v => setForm(f => ({ ...f, level: v }))} icon={Star} />
        </div>
        <div style={{ marginTop: 18 }}>
          <Button variant="primary" onClick={save} disabled={!form.name?.trim()}>{saved ? "Saved ✓" : "Save"}</Button>
          {saved && profile.name && <Button variant="ghost" style={{ marginLeft: 10 }} onClick={() => go("home")}>Go to Home</Button>}
        </div>
      </Card>

      <ReaderSettings highlight={focus === "reader"} />

      <div style={{ display: "grid", gridTemplateColumns: "repeat(auto-fit, minmax(150px, 1fr))", gap: 12, marginBottom: 20 }}>
        <StatCard icon={Target} label="Tasks done" value={tasksGot} color={t.emerald} bg={t.emeraldSoft} />
        <StatCard icon={ClipboardList} label="Tests taken" value={totalAttempts} color={t.navy} bg={t.navySoft} />
        <StatCard icon={TrendingUp} label="Average score" value={`${avgPct}%`} color={t.amber} bg={t.amberSoft} />
      </div>

      <SectionHeader icon={Award} title="Badges" />
      <div style={{ display: "grid", gridTemplateColumns: "repeat(auto-fill, minmax(150px, 1fr))", gap: 12, marginBottom: 24 }}>
        {badges.map(b => (
          <Card key={b.id} style={{ padding: 16, textAlign: "center", opacity: b.earned ? 1 : 0.4 }}>
            <div style={{ display: "flex", justifyContent: "center", marginBottom: 8 }}>
              <IconBadge icon={b.earned ? b.icon : Lock} color={b.earned ? t.amber : t.textFaint} bg={b.earned ? t.amberSoft : t.bgAlt} size={40} />
            </div>
            <div style={{ fontSize: 12.5, fontWeight: 700, color: t.text }}>{b.label}</div>
          </Card>
        ))}
      </div>

      <Card style={{ padding: 16, display: "flex", alignItems: "center", justifyContent: "space-between", gap: 14 }}>
        <div>
          <div style={{ fontSize: 13, fontWeight: 700, color: t.text }}>Start again</div>
          <div style={{ fontSize: 11.5, color: t.textFaint }}>Delete all progress, scores and settings on this device</div>
        </div>
        <Button size="sm" variant="ghost" icon={Trash2} onClick={() => setConfirmReset(true)} style={{ color: t.red }}>Reset</Button>
      </Card>

      {confirmReset && (
        <Modal onClose={() => setConfirmReset(false)} width={360}>
          <div className="f-serif" style={{ fontSize: 18, fontWeight: 700, marginBottom: 10, color: t.text }}>Delete everything?</div>
          <div style={{ fontSize: 14, color: t.textMuted, marginBottom: 20 }}>Your tasks, tests, badges, bookmarks and profile on this device will be deleted. You cannot undo this.</div>
          <div style={{ display: "flex", gap: 10 }}>
            <Button full variant="ghost" onClick={() => setConfirmReset(false)}>Keep it</Button>
            <Button full variant="accent" onClick={resetAll}>Delete</Button>
          </div>
        </Modal>
      )}
    </div>
  );
}
