import { Target, BookOpen, TrendingUp, Flame, Lock, Award } from "lucide-react";
import { useApp, PageHead, StatTile, Picture, Empty } from "../ui.jsx";
import { overall, skillStats, LEVELS, lastWeek } from "../lib/gamify.js";
import { DAYS, ROLES, SKILLS, TASKS, LADDER_IMG } from "../data/course.js";
import { TodayCard } from "./Learn.jsx";

export function badgesFor({ history, taskProgress, lessonsDone, streak }) {
  const got = TASKS.filter(q => taskProgress[q.id]?.s === "got").length;
  const dayLessons = DAYS.map(d => ({ icon: ["📗", "📘", "📙", "📕", "📓", "📔"][(d.day - 1) % 6], label: `All Day ${d.day} lessons`, earned: d.roles.every(r => r.skills.every(s => lessonsDone[s.id])) }));
  return [
    { icon: "📖", label: "First lesson", earned: Object.keys(lessonsDone).length >= 1 },
    { icon: "🎯", label: "First test", earned: history.length >= 1 },
    { icon: "💯", label: "50 tasks done", earned: got >= 50 },
    { icon: "🔥", label: "7-day streak", earned: streak >= 7 },
    { icon: "🌟", label: "Scored 90%+", earned: history.some(h => h.pct >= 90) },
    ...dayLessons,
    { icon: "🏅", label: "10 tests done", earned: history.length >= 10 },
    { icon: "👑", label: `All ${TASKS.length} tasks`, earned: TASKS.length > 0 && got >= TASKS.length },
  ];
}

// Score line for recent tests, drawn with plain SVG.
function Sparkline({ values }) {
  const w = 600, h = 140, pad = 12;
  const pts = values.map((v, i) => [pad + (i * (w - pad * 2)) / Math.max(1, values.length - 1), h - pad - (v / 100) * (h - pad * 2)]);
  const line = pts.map((p, i) => `${i ? "L" : "M"}${p[0].toFixed(1)},${p[1].toFixed(1)}`).join(" ");
  const area = `${line} L${pts[pts.length - 1][0]},${h - pad} L${pts[0][0]},${h - pad} Z`;
  const passY = h - pad - 0.5 * (h - pad * 2);
  return (
    <svg viewBox={`0 0 ${w} ${h}`} width="100%" height="140" preserveAspectRatio="none" role="img" aria-label="Test scores over time">
      <defs><linearGradient id="sparkFill" x1="0" y1="0" x2="0" y2="1"><stop offset="0" stopColor="#D4A657" stopOpacity=".35" /><stop offset="1" stopColor="#D4A657" stopOpacity="0" /></linearGradient></defs>
      <line x1={pad} x2={w - pad} y1={passY} y2={passY} stroke="var(--faint)" opacity=".5" strokeDasharray="6 6" strokeWidth="2" />
      <path d={area} fill="url(#sparkFill)" />
      <path d={line} fill="none" stroke="var(--brand-2)" strokeWidth="3" strokeLinejoin="round" strokeLinecap="round" vectorEffect="non-scaling-stroke" />
      {pts.map((p, i) => <circle key={i} cx={p[0]} cy={p[1]} r="5" fill={values[i] >= 50 ? "var(--brand-2)" : "var(--coral)"} stroke="var(--surface)" strokeWidth="2.5" vectorEffect="non-scaling-stroke" />)}
    </svg>
  );
}

export function ProgressScreen() {
  const ctx = useApp();
  const { taskProgress, lessonsDone, history, streak, level, xp, go, activity } = ctx;
  const all = overall(taskProgress, lessonsDone);
  const avg = history.length ? Math.round(history.reduce((s, h) => s + h.pct, 0) / history.length) : 0;
  const recent = history.slice(0, 14).reverse().map(h => h.pct);
  const badges = badgesFor(ctx);
  const weekTotal = lastWeek(activity).reduce((s, d) => s + d.count, 0);

  return (
    <div>
      <PageHead eyebrow="Progress" title="How you are doing" sub={`${all.got} of ${all.total} tasks done · ${weekTotal} things studied this week`} action={<button className="btn ghost" onClick={() => go("certificates")}><Award size={16} /> Certificates</button>} />

      <div className="hero" style={{ marginBottom: 18 }}>
        <div className="between wrap" style={{ gap: 18 }}>
          <div>
            <div className="eyebrow">Level {level.index + 1} of {LEVELS.length}</div>
            <div className="h1" style={{ margin: "6px 0" }}>{level.icon} {level.name}</div>
            <div style={{ opacity: .9 }}>{level.next ? `${level.toNext} XP to ${level.next.name}` : "You reached the top level!"}</div>
          </div>
          <div style={{ textAlign: "right" }}>
            <div className="mono" style={{ fontSize: 56, fontWeight: 700, lineHeight: 1 }}>{xp}</div>
            <div style={{ opacity: .85, fontSize: 13 }}>total XP</div>
          </div>
        </div>
        <div className="bar brand" style={{ marginTop: 18 }}><i style={{ width: `${level.pct}%` }} /></div>
        <div className="row" style={{ marginTop: 14, gap: 6, flexWrap: "wrap" }}>
          {LEVELS.map((l, i) => (
            <span key={l.name} className="sticker" style={i <= level.index ? { background: "var(--gold)", color: "#1F1605", borderColor: "transparent" } : undefined}>{l.icon} {l.name}</span>
          ))}
        </div>
      </div>

      <div className="grid g4">
        <StatTile icon={Target} tone="mint" label="Tasks done" value={`${all.got}/${all.total}`} />
        <StatTile icon={BookOpen} tone="brand" label="Lessons finished" value={`${all.lessons}/${SKILLS.length}`} />
        <StatTile icon={TrendingUp} tone="sun" label="Average test score" value={`${avg}%`} />
        <StatTile icon={Flame} tone="coral" label="Day streak" value={streak} />
      </div>

      <div className="section"><TodayCard /></div>

      <div className="section card pad">
        <div className="between wrap" style={{ marginBottom: 14 }}>
          <div><div className="h3">Skill map</div><div className="faint" style={{ fontSize: 13 }}>Darker green = more tasks done. Tap a skill to open it.</div></div>
          <div className="row faint" style={{ fontSize: 12, gap: 4 }}>0% {[.08, .3, .55, .8, 1].map(o => <i key={o} style={{ width: 14, height: 14, borderRadius: 4, background: `color-mix(in srgb, var(--mint) ${o * 100}%, var(--surface-2))` }} />)} 100%</div>
        </div>
        {ROLES.map(r => (
          <div key={r.key} style={{ marginBottom: 14 }}>
            <div className="eyebrow" style={{ marginBottom: 8 }}>Day {r.day} · {r.icon} {r.name}</div>
            <div className="heat">
              {r.skills.map(s => {
                const st = skillStats(s, taskProgress);
                const strong = st.pct >= 55;
                return (
                  <button key={s.id} className="heat-cell" onClick={() => go("skill", { id: s.id })} title={`${s.n}: ${st.got}/${st.total}`}
                    style={{ background: st.pct ? `color-mix(in srgb, var(--brand-2) ${Math.max(10, st.pct)}%, var(--surface-2))` : "var(--surface-2)", color: strong ? "#fff" : "var(--text)" }}>
                    <span style={{ fontSize: 20 }}>{s.icon}</span>
                    <span>
                      <span style={{ display: "block", fontSize: 11.5, fontWeight: 700, lineHeight: 1.2 }}>{s.n}</span>
                      <span className="mono" style={{ fontSize: 11, opacity: .8 }}>{st.got}/{st.total}{lessonsDone[s.id] ? " · 📖" : ""}</span>
                    </span>
                  </button>
                );
              })}
            </div>
          </div>
        ))}
      </div>

      <div className="section card pad">
        <div className="h3" style={{ marginBottom: 4 }}>Test scores</div>
        {recent.length > 1 ? (
          <>
            <div className="faint" style={{ fontSize: 13, marginBottom: 10 }}>Your last {recent.length} tests. The dashed line is the 50% pass mark.</div>
            <Sparkline values={recent} />
          </>
        ) : <div className="faint" style={{ fontSize: 14 }}>Take two or more tests to see your score line here.</div>}
        {history.length > 0 && (
          <div className="stack" style={{ gap: 10, marginTop: 14 }}>
            {(() => {
              const agg = {};
              history.forEach(h => Object.entries(h.bySource || {}).forEach(([n, v]) => { agg[n] = agg[n] || { c: 0, t: 0 }; agg[n].c += v.correct; agg[n].t += v.total; }));
              return Object.entries(agg).map(([n, v]) => ({ n, pct: Math.round((v.c / v.t) * 100) })).sort((a, b) => a.pct - b.pct).slice(0, 6).map(a => (
                <div key={a.n}>
                  <div className="between" style={{ fontSize: 13.5, marginBottom: 4 }}><span>{a.n}</span><span className="mono" style={{ fontWeight: 700, color: a.pct >= 50 ? "var(--mint)" : "var(--coral)" }}>{a.pct}%</span></div>
                  <div className="bar"><i style={{ width: `${a.pct}%`, background: a.pct >= 50 ? "var(--green)" : "var(--coral)" }} /></div>
                </div>
              ));
            })()}
            <div className="faint" style={{ fontSize: 12.5 }}>Your weakest skills in tests are at the top.</div>
          </div>
        )}
      </div>

      <div className="section">
        <div className="section-head"><h2 className="h2">Badges</h2><span className="pill brand">{badges.filter(b => b.earned).length}/{badges.length}</span></div>
        <div className="grid g4">
          {badges.map(b => (
            <div key={b.label} className="card pad" style={{ textAlign: "center", opacity: b.earned ? 1 : .5 }}>
              <div style={{ fontSize: 34, filter: b.earned ? "none" : "grayscale(1)" }}>{b.earned ? b.icon : <Lock size={30} color="var(--faint)" />}</div>
              <div style={{ fontWeight: 700, fontSize: 13.5, marginTop: 6 }}>{b.label}</div>
            </div>
          ))}
        </div>
      </div>

      <div className="section card pad">
        <div className="h3" style={{ marginBottom: 10 }}>Where this can lead</div>
        <Picture src={LADDER_IMG} alt="Where generalist work can lead: generalist tasks, trusted contributor, reviewer or QA, specialist projects, team lead" />
        <div className="muted" style={{ fontSize: 14, marginTop: 10 }}>Your levels in this app follow the same ladder. Keep going!</div>
      </div>

      {!history.length && !all.got && <Empty icon={Target} title="Your progress starts today" sub="Finish a lesson or a few tasks and this page fills up." />}
    </div>
  );
}
