import { useState, useEffect, useMemo } from "react";
import {
  Users, CalendarCheck, Flame, Target, Search, X, Paperclip, Megaphone, Send, Trash2, Download, AlertTriangle, CheckCircle2, Clock, FilePlus2, GraduationCap, RefreshCw,
} from "lucide-react";
import { useApp, PageHead, Empty, Bar } from "../ui.jsx";
import { supabase, niceError, fetchAnnouncements } from "../lib/cloud.js";
import { DAYS, SKILL_BY_ID, TASKS } from "../data/course.js";
import { dayKey } from "../lib/quiz.js";
import { timeAgo } from "./Account.jsx";
import { AddDay } from "./AddDay.jsx";

const TABS = [["students", "Students", Users], ["work", "Work to mark", Paperclip], ["news", "Messages", Megaphone], ["addday", "Add a day", FilePlus2]];
const daysAgo = d => (d ? Math.round((new Date(dayKey()) - new Date(d)) / 864e5) : Infinity);
const lastSeen = d => { const n = daysAgo(d); return n === Infinity ? "never" : n === 0 ? "today" : n === 1 ? "yesterday" : `${n} days ago`; };
const skillOfTask = id => id.slice(0, id.lastIndexOf("-"));

export function TeacherScreen() {
  const { isTeacher, go, params } = useApp();
  const [tab, setTab] = useState(params.tab || "students");
  if (!isTeacher) {
    return (
      <div>
        <PageHead eyebrow="Teacher" title="Teachers only" />
        <Empty icon={GraduationCap} title="This page is for teachers" sub="Sign in with a teacher account to see it. A teacher is added from the Supabase SQL editor (see the setup guide)." >
          <button className="btn primary" onClick={() => go("account")}>Account</button>
        </Empty>
      </div>
    );
  }
  return (
    <div>
      <PageHead eyebrow="Teacher dashboard" title={<>Your <span className="serif">class</span></>} sub="See who is studying, mark work, post messages and add new days." />
      <div className="seg" style={{ marginBottom: 18 }} role="tablist">
        {TABS.map(([id, label, Icon]) => <button key={id} className={tab === id ? "on" : ""} onClick={() => setTab(id)}><Icon size={14} style={{ verticalAlign: -2 }} /> {label}</button>)}
      </div>
      {tab === "students" && <Students />}
      {tab === "work" && <WorkToMark />}
      {tab === "news" && <PostNews />}
      {tab === "addday" && <AddDay />}
    </div>
  );
}

// ---------------------------------------------------------------- students
function useClass() {
  const { user } = useApp();
  const [state, setState] = useState({ loading: true, rows: [], err: null });
  async function load() {
    setState(s => ({ ...s, loading: true }));
    const [p, g] = await Promise.all([
      supabase.from("profiles").select("id, name, email, city, goal, created_at"),
      supabase.from("progress").select("user_id, data, xp, tasks_done, lessons_done, streak, week_count, last_active, updated_at"),
    ]);
    if (p.error || g.error) { setState({ loading: false, rows: [], err: niceError(p.error || g.error) }); return; }
    const byId = new Map(g.data.map(r => [r.user_id, r]));
    const rows = p.data.filter(pr => pr.id !== user?.id).map(pr => {
      const pg = byId.get(pr.id) || {};
      return { ...pr, ...pg, data: pg.data || {}, xp: pg.xp || 0, tasks_done: pg.tasks_done || 0, lessons_done: pg.lessons_done || 0, streak: daysAgo(pg.last_active) <= 1 ? pg.streak || 0 : 0, week_count: daysAgo(pg.last_active) <= 6 ? pg.week_count || 0 : 0 };
    });
    setState({ loading: false, rows, err: null });
  }
  useEffect(() => { load(); }, []);
  return { ...state, reload: load };
}

function skillRates(datas) {
  const agg = {};
  for (const d of datas) {
    for (const [id, v] of Object.entries(d.taskProgress || {})) {
      const sid = skillOfTask(id);
      const a = (agg[sid] = agg[sid] || { got: 0, again: 0, people: new Set() });
      if (v.s === "got") a.got++; else a.again++;
    }
  }
  return Object.entries(agg)
    .filter(([sid, a]) => SKILL_BY_ID[sid] && a.got + a.again >= 3)
    .map(([sid, a]) => ({ skill: SKILL_BY_ID[sid], ...a, rate: Math.round((a.again / (a.got + a.again)) * 100) }))
    .sort((x, y) => y.rate - x.rate);
}

function csv(rows) {
  const head = ["Name", "Email", "City", "Last active", "Streak", "XP", "Tasks done", "Lessons done", "Studied this week"];
  const esc = v => `"${String(v ?? "").replace(/"/g, '""')}"`;
  const lines = rows.map(r => [r.name, r.email, r.city, r.last_active || "", r.streak, r.xp, r.tasks_done, r.lessons_done, r.week_count].map(esc).join(","));
  const blob = new Blob([[head.join(","), ...lines].join("\n")], { type: "text/csv" });
  const a = document.createElement("a");
  a.href = URL.createObjectURL(blob); a.download = `class-progress-${dayKey()}.csv`; a.click();
}

function Students() {
  const { loading, rows, err, reload } = useClass();
  const [q, setQ] = useState("");
  const [sort, setSort] = useState("active");
  const [open, setOpen] = useState(null);
  const weak = useMemo(() => skillRates(rows.map(r => r.data)).slice(0, 5), [rows]);
  if (loading) return <div className="muted">Loading your class…</div>;
  if (err) return <div className="pill coral" style={{ textTransform: "none", whiteSpace: "normal" }}>{err}</div>;
  const today = rows.filter(r => daysAgo(r.last_active) === 0).length;
  const week = rows.filter(r => daysAgo(r.last_active) <= 6).length;
  const avg = rows.length ? Math.round(rows.reduce((n, r) => n + r.tasks_done, 0) / rows.length) : 0;
  const list = rows
    .filter(r => !q || `${r.name} ${r.email} ${r.city}`.toLowerCase().includes(q.toLowerCase()))
    .sort((a, b) => sort === "xp" ? b.xp - a.xp : sort === "name" ? (a.name || "").localeCompare(b.name || "") : daysAgo(a.last_active) - daysAgo(b.last_active) || b.xp - a.xp);
  return (
    <div>
      <div className="grid g4" style={{ gridTemplateColumns: "repeat(auto-fit, minmax(150px, 1fr))" }}>
        {[[Users, "Students", rows.length, "var(--brand-soft)", "var(--brand-ink)"], [CalendarCheck, "Studied today", today, "var(--mint-soft)", "var(--mint)"], [Flame, "Active this week", week, "var(--gold-soft)", "var(--gold-ink)"], [Target, "Average tasks done", avg, "var(--sky-soft)", "var(--sky)"]].map(([Icon, l, v, bg, fg]) => (
          <div key={l} className="stat"><div className="stat-ic" style={{ background: bg, color: fg }}><Icon size={16} /></div><div className="v">{v}</div><div className="l">{l}</div></div>
        ))}
      </div>

      {weak.length > 0 && (
        <div className="card pad section">
          <div className="row" style={{ marginBottom: 4 }}><AlertTriangle size={18} color="var(--coral)" /><div className="h3">Skills the class finds hardest</div></div>
          <div className="muted" style={{ fontSize: 13.5, marginBottom: 12 }}>Share of practice tasks marked "Not yet". Good topics to explain again in class.</div>
          <div className="stack" style={{ gap: 10 }}>
            {weak.map(w => (
              <div key={w.skill.id}>
                <div className="between" style={{ fontSize: 14 }}><span style={{ fontWeight: 600, minWidth: 0 }}>{w.skill.icon} {w.skill.n} <span className="faint">· Day {w.skill.day}</span></span><span className="pill coral">{w.rate}% not yet</span></div>
                <div className="bar" style={{ marginTop: 6 }}><i style={{ width: `${w.rate}%`, background: "var(--coral)" }} /></div>
              </div>
            ))}
          </div>
        </div>
      )}

      <div className="section">
        <div className="section-head">
          <h2 className="h2">Students</h2>
          <div className="row" style={{ gap: 8 }}>
            <button className="btn sm ghost" onClick={reload}><RefreshCw size={14} /> Refresh</button>
            <button className="btn sm ghost" onClick={() => csv(list)} disabled={!list.length}><Download size={14} /> Download (Excel)</button>
          </div>
        </div>
        <div className="row wrap" style={{ gap: 10, marginBottom: 12 }}>
          <div style={{ position: "relative", flex: "1 1 220px" }}>
            <Search size={16} style={{ position: "absolute", left: 13, top: "50%", transform: "translateY(-50%)", color: "var(--faint)" }} />
            <input className="input" style={{ paddingLeft: 38 }} value={q} onChange={e => setQ(e.target.value)} placeholder="Find a student" aria-label="Find a student" />
          </div>
          <div className="seg">
            {[["active", "Last active"], ["xp", "XP"], ["name", "Name"]].map(([k, l]) => <button key={k} className={sort === k ? "on" : ""} onClick={() => setSort(k)}>{l}</button>)}
          </div>
        </div>
        {!list.length ? <Empty icon={Users} title={rows.length ? "No match" : "No students yet"} sub={rows.length ? "Try another name." : "When learners create accounts in the app, they show here."} /> : (
          <div className="card" style={{ overflow: "hidden" }}>
            {list.map((r, i) => {
              const gap = daysAgo(r.last_active);
              return (
                <button key={r.id} className="index-row" style={i === 0 ? { borderTop: "none" } : undefined} onClick={() => setOpen(r)}>
                  <span className="index-num" style={{ background: "var(--brand-soft)", color: "var(--brand-ink)" }}>{(r.name || r.email || "?").trim()[0]?.toUpperCase()}</span>
                  <span style={{ minWidth: 0 }}>
                    <span style={{ display: "block", fontWeight: 700 }}>{r.name || "No name"}</span>
                    <span className="muted" style={{ display: "block", fontSize: 13, overflow: "hidden", textOverflow: "ellipsis", whiteSpace: "nowrap" }}>{r.email}</span>
                    <span className="faint" style={{ display: "block", fontSize: 12.5, marginTop: 2 }}>🔥 {r.streak} · {r.xp} XP · {r.tasks_done} tasks · {r.lessons_done} lessons</span>
                  </span>
                  <span className={`pill ${gap === 0 ? "mint" : gap <= 3 ? "sky" : "coral"}`}>{gap > 3 ? "Behind · " : ""}{lastSeen(r.last_active)}</span>
                </button>
              );
            })}
          </div>
        )}
      </div>
      {open && <StudentSheet s={open} onClose={() => setOpen(null)} />}
    </div>
  );
}

function StudentSheet({ s, onClose }) {
  const [subs, setSubs] = useState(null);
  useEffect(() => { supabase.from("submissions").select("id, day, title, status, score, created_at").eq("user_id", s.id).order("created_at", { ascending: false }).then(({ data }) => setSubs(data || [])); }, [s.id]);
  const tp = s.data.taskProgress || {};
  const ld = s.data.lessonsDone || {};
  const weak = skillRates([s.data]).filter(w => w.rate > 0).slice(0, 4);
  const tests = (s.data.history || []).slice(0, 5);
  return (
    <div className="scrim" onClick={onClose}>
      <div className="sheet wide" onClick={e => e.stopPropagation()} role="dialog">
        <div className="grabber" />
        <div className="between" style={{ alignItems: "flex-start" }}>
          <div style={{ minWidth: 0 }}>
            <div className="h2">{s.name || "No name"}</div>
            <div className="muted" style={{ fontSize: 14, overflowWrap: "anywhere" }}>{s.email}{s.city ? ` · ${s.city}` : ""}</div>
            <div className="faint" style={{ fontSize: 13 }}>Joined {new Date(s.created_at).toLocaleDateString()} · last active {lastSeen(s.last_active)}</div>
          </div>
          <button className="icon-btn" onClick={onClose} aria-label="Close"><X size={18} /></button>
        </div>
        <div className="stat-row" style={{ margin: "16px 0" }}>
          <div className="stat"><div className="v">{s.xp}</div><div className="l">XP</div></div>
          <div className="stat"><div className="v">{s.streak}</div><div className="l">Day streak</div></div>
          <div className="stat"><div className="v">{s.tasks_done}</div><div className="l">Tasks right</div></div>
        </div>
        <div className="h3" style={{ marginBottom: 8 }}>Progress by day</div>
        <div className="stack" style={{ gap: 10, marginBottom: 16 }}>
          {DAYS.map(d => {
            const ts = TASKS.filter(t => t.day === d.day);
            const got = ts.filter(t => tp[t.id]?.s === "got").length;
            const skills = d.roles.flatMap(r => r.skills);
            const lessons = skills.filter(k => ld[k.id]).length;
            return (
              <div key={d.day}>
                <div className="between" style={{ fontSize: 13.5 }}><span style={{ fontWeight: 600 }}>Day {d.day}</span><span className="muted">{lessons}/{skills.length} lessons · {got}/{ts.length} tasks</span></div>
                <Bar pct={ts.length ? (got / ts.length) * 100 : 0} style={{ marginTop: 5 }} />
              </div>
            );
          })}
        </div>
        {weak.length > 0 && <>
          <div className="h3" style={{ marginBottom: 8 }}>Needs help with</div>
          <div className="chips" style={{ marginBottom: 16 }}>{weak.map(w => <span key={w.skill.id} className="chip">{w.skill.icon} {w.skill.n} · {w.again} not yet</span>)}</div>
        </>}
        <div className="h3" style={{ marginBottom: 8 }}>Recent tests</div>
        {!tests.length ? <div className="muted" style={{ fontSize: 14, marginBottom: 16 }}>No tests yet.</div> : (
          <div className="stack" style={{ gap: 6, marginBottom: 16 }}>
            {tests.map(h => <div key={h.date} className="between soft" style={{ padding: "8px 12px", fontSize: 14 }}><span style={{ minWidth: 0 }}>{h.category} · {new Date(h.date).toLocaleDateString()}</span><span className={`pill ${h.pct >= 50 ? "mint" : "coral"}`}>{h.pct}%</span></div>)}
          </div>
        )}
        <div className="h3" style={{ marginBottom: 8 }}>Handed-in work</div>
        {subs === null ? <div className="muted">Loading…</div> : !subs.length ? <div className="muted" style={{ fontSize: 14 }}>Nothing yet.</div> : (
          <div className="stack" style={{ gap: 6 }}>
            {subs.map(w => <div key={w.id} className="between soft" style={{ padding: "8px 12px", fontSize: 14 }}><span style={{ minWidth: 0 }}>Day {w.day} · {w.title}</span>{w.status === "marked" ? <span className="pill mint">{w.score}%</span> : <span className="pill sun">To mark</span>}</div>)}
          </div>
        )}
      </div>
    </div>
  );
}

// ---------------------------------------------------------------- marking
function WorkToMark() {
  const [rows, setRows] = useState(null);
  const [names, setNames] = useState({});
  const [filter, setFilter] = useState("submitted");
  const [open, setOpen] = useState(null);
  const [err, setErr] = useState(null);
  useEffect(() => {
    Promise.all([
      supabase.from("submissions").select("*").order("created_at", { ascending: false }).limit(500),
      supabase.from("profiles").select("id, name, email"),
    ]).then(([s, p]) => {
      if (s.error || p.error) { setErr(niceError(s.error || p.error)); return; }
      setRows(s.data); setNames(Object.fromEntries(p.data.map(x => [x.id, x])));
    });
  }, []);
  if (err) return <div className="pill coral" style={{ textTransform: "none", whiteSpace: "normal" }}>{err}</div>;
  if (!rows) return <div className="muted">Loading…</div>;
  const list = rows.filter(r => filter === "all" || r.status === filter);
  const toMark = rows.filter(r => r.status === "submitted").length;
  return (
    <div>
      <div className="seg" style={{ marginBottom: 14 }}>
        {[["submitted", `To mark (${toMark})`], ["marked", "Marked"], ["all", "All"]].map(([k, l]) => <button key={k} className={filter === k ? "on" : ""} onClick={() => setFilter(k)}>{l}</button>)}
      </div>
      {!list.length ? <Empty icon={CheckCircle2} title={filter === "submitted" ? "All marked!" : "Nothing here"} sub="Work that learners hand in shows here." /> : (
        <div className="card" style={{ overflow: "hidden" }}>
          {list.map((r, i) => (
            <button key={r.id} className="index-row" style={i === 0 ? { borderTop: "none" } : undefined} onClick={() => setOpen(r)}>
              <span className="index-num">D{r.day}</span>
              <span style={{ minWidth: 0 }}>
                <span style={{ display: "block", fontWeight: 700 }}>{names[r.user_id]?.name || names[r.user_id]?.email || "Learner"}</span>
                <span className="muted" style={{ display: "block", fontSize: 13 }}>{r.title} · {timeAgo(r.created_at)}{r.file_name ? " · 📎" : ""}</span>
              </span>
              {r.status === "marked" ? <span className="pill mint">{r.score}%</span> : <span className="pill sun"><Clock size={12} /> To mark</span>}
            </button>
          ))}
        </div>
      )}
      {open && <MarkSheet r={open} who={names[open.user_id]} onClose={() => setOpen(null)} onSaved={u => { setRows(rs => rs.map(x => x.id === u.id ? u : x)); setOpen(null); }} />}
    </div>
  );
}

function MarkSheet({ r, who, onClose, onSaved }) {
  const { showToast } = useApp();
  const [score, setScore] = useState(r.score ?? "");
  const [feedback, setFeedback] = useState(r.feedback || "");
  const [busy, setBusy] = useState(false);
  const [err, setErr] = useState(null);
  async function openFile() {
    const { data, error } = await supabase.storage.from("submissions").createSignedUrl(r.file_path, 600);
    if (error) setErr(niceError(error)); else window.open(data.signedUrl, "_blank", "noopener");
  }
  async function save() {
    const n = Number(score);
    if (score === "" || Number.isNaN(n) || n < 0 || n > 100) { setErr("Give a score from 0 to 100."); return; }
    setBusy(true);
    const { data, error } = await supabase.from("submissions").update({ score: Math.round(n), feedback: feedback.trim(), status: "marked", marked_at: new Date().toISOString() }).eq("id", r.id).select().single();
    setBusy(false);
    if (error) { setErr(niceError(error)); return; }
    showToast("Marked ✓ The learner can see it now");
    onSaved(data);
  }
  return (
    <div className="scrim" onClick={onClose}>
      <div className="sheet wide" onClick={e => e.stopPropagation()} role="dialog">
        <div className="grabber" />
        <div className="between" style={{ alignItems: "flex-start" }}>
          <div style={{ minWidth: 0 }}>
            <div className="eyebrow">Day {r.day} · {new Date(r.created_at).toLocaleString()}</div>
            <div className="h2">{r.title}</div>
            <div className="muted" style={{ fontSize: 14 }}>{who?.name || "Learner"} · {who?.email}</div>
          </div>
          <button className="icon-btn" onClick={onClose} aria-label="Close"><X size={18} /></button>
        </div>
        {r.answer && <div className="soft" style={{ marginTop: 14, whiteSpace: "pre-wrap", fontSize: 15, maxHeight: 320, overflowY: "auto" }}>{r.answer}</div>}
        {r.file_path && <button className="btn ghost" style={{ marginTop: 12 }} onClick={openFile}><Paperclip size={16} /> Open {r.file_name || "file"}</button>}
        <div className="row wrap" style={{ gap: 12, marginTop: 16, alignItems: "flex-end" }}>
          <div style={{ width: 130 }}>
            <label className="label" htmlFor="mk-score">Score (%)</label>
            <input id="mk-score" className="input" type="number" min="0" max="100" inputMode="numeric" value={score} onChange={e => setScore(e.target.value)} />
          </div>
          <div className="chips">{[100, 80, 60, 40].map(n => <button key={n} className="chip" onClick={() => setScore(n)}>{n}</button>)}</div>
        </div>
        <div style={{ marginTop: 12 }}>
          <label className="label" htmlFor="mk-fb">Comment for the learner</label>
          <textarea id="mk-fb" className="input" rows={4} value={feedback} onChange={e => setFeedback(e.target.value)} placeholder="What was good, and one thing to improve." />
        </div>
        {err && <div className="pill coral" style={{ marginTop: 10, textTransform: "none", whiteSpace: "normal" }}>{err}</div>}
        <button className="btn primary lg full" style={{ marginTop: 14 }} onClick={save} disabled={busy}><CheckCircle2 size={18} /> {busy ? "Saving…" : r.status === "marked" ? "Update mark" : "Save mark"}</button>
      </div>
    </div>
  );
}

// ---------------------------------------------------------------- messages
function PostNews() {
  const { announcements, setAnnouncements, showToast } = useApp();
  const [title, setTitle] = useState("");
  const [body, setBody] = useState("");
  const [busy, setBusy] = useState(false);
  const [err, setErr] = useState(null);
  useEffect(() => { fetchAnnouncements(50).then(setAnnouncements).catch(() => {}); }, []); // eslint-disable-line
  async function post() {
    if (!title.trim()) { setErr("Give the message a short title."); return; }
    setBusy(true); setErr(null);
    const { error } = await supabase.from("announcements").insert({ title: title.trim(), body: body.trim() });
    setBusy(false);
    if (error) { setErr(niceError(error)); return; }
    setTitle(""); setBody("");
    showToast("Posted! Learners see it on their home screen");
    fetchAnnouncements(50).then(setAnnouncements).catch(() => {});
  }
  async function remove(id) {
    if (!window.confirm("Delete this message?")) return;
    const { error } = await supabase.from("announcements").delete().eq("id", id);
    if (error) { setErr(niceError(error)); return; }
    setAnnouncements(a => a.filter(x => x.id !== id));
  }
  return (
    <div>
      <div className="card pad stack" style={{ gap: 12 }}>
        <div>
          <label className="label" htmlFor="nw-t">Title</label>
          <input id="nw-t" className="input" value={title} onChange={e => setTitle(e.target.value)} placeholder="e.g. Day 4 is live!" maxLength={120} />
        </div>
        <div>
          <label className="label" htmlFor="nw-b">Message</label>
          <textarea id="nw-b" className="input" rows={4} value={body} onChange={e => setBody(e.target.value)} placeholder="Class is at 7pm on Zoom. Finish the Day 3 tasks first." />
        </div>
        {err && <div className="pill coral" style={{ textTransform: "none", whiteSpace: "normal" }}>{err}</div>}
        <button className="btn primary" onClick={post} disabled={busy}><Send size={16} /> {busy ? "Posting…" : "Post to the class"}</button>
      </div>
      <div className="section stack" style={{ gap: 10 }}>
        {(announcements || []).map(a => (
          <div key={a.id} className="card pad between" style={{ alignItems: "flex-start" }}>
            <div style={{ minWidth: 0 }}>
              <div className="eyebrow">{new Date(a.created_at).toLocaleString()}</div>
              <div className="h3">{a.title}</div>
              {a.body && <div className="muted" style={{ fontSize: 14, whiteSpace: "pre-wrap" }}>{a.body}</div>}
            </div>
            <button className="icon-btn" onClick={() => remove(a.id)} aria-label="Delete message"><Trash2 size={16} /></button>
          </div>
        ))}
      </div>
    </div>
  );
}
