import { useState, useEffect, useRef } from "react";
import {
  Megaphone, X, Send, Paperclip, FileText, CheckCircle2, Clock, Award, Download, Share2, Lock, BellRing, CalendarPlus,
  Crown, Sparkles, ChevronRight, Trash2, Cloud,
} from "lucide-react";
import { useApp, PageHead, Empty, Bar } from "../ui.jsx";
import { loadJSON, saveJSON } from "../lib/store.js";
import { supabase, niceError } from "../lib/cloud.js";
import { DAYS, SKILLS, TASKS } from "../data/course.js";
import { timeAgo } from "./Account.jsx";

const fmtDate = iso => new Date(iso).toLocaleDateString(undefined, { day: "numeric", month: "long", year: "numeric" });

// Ask to sign in first (used by class features that need an account).
function NeedAccount({ what }) {
  const { cloudOn, go } = useApp();
  if (!cloudOn) return <Empty icon={Cloud} title="Not switched on yet" sub={`${what} works once your teacher switches on online accounts.`} />;
  return (
    <Empty icon={Lock} title="Sign in first" sub={`Make a free account (or sign in) to use ${what.toLowerCase()}.`}>
      <button className="btn primary" onClick={() => go("account")}>Create account or sign in</button>
    </Empty>
  );
}

// ================= Announcements =================
export function HomeAnnouncement() {
  const { announcements, go } = useApp();
  const [hidden, setHidden] = useState(() => loadJSON("hidden-news", []));
  const latest = (announcements || []).find(a => !hidden.includes(a.id) && Date.now() - new Date(a.created_at).getTime() < 14 * 864e5);
  if (!latest) return null;
  function hide() { const next = [...hidden, latest.id].slice(-50); setHidden(next); saveJSON("hidden-news", next); }
  return (
    <div className="card pad" style={{ marginBottom: 16, borderLeft: "4px solid var(--gold)" }}>
      <div className="between" style={{ alignItems: "flex-start" }}>
        <div className="row" style={{ gap: 10, minWidth: 0 }}>
          <div className="tile-icon fill-yellow" style={{ width: 38, height: 38, borderRadius: 11 }}><Megaphone size={18} /></div>
          <div style={{ minWidth: 0 }}>
            <div className="eyebrow">From your teacher · {timeAgo(latest.created_at)}</div>
            <div className="h3">{latest.title}</div>
          </div>
        </div>
        <button className="icon-btn" style={{ width: 34, height: 34 }} onClick={hide} aria-label="Hide this message"><X size={16} /></button>
      </div>
      {latest.body && <div style={{ fontSize: 14.5, marginTop: 10, whiteSpace: "pre-wrap" }}>{latest.body.length > 240 ? latest.body.slice(0, 240) + "…" : latest.body}</div>}
      <button className="btn sm ghost" style={{ marginTop: 12 }} onClick={() => go("news")}>All messages <ChevronRight size={15} /></button>
    </div>
  );
}

export function NewsScreen() {
  const { announcements, go, cloudOn } = useApp();
  return (
    <div>
      <PageHead back={{ label: "Library", onClick: () => go("library") }} eyebrow="Class" title="Messages from your teacher" />
      {!cloudOn ? <NeedAccount what="Messages" /> : !announcements?.length ? <Empty icon={Megaphone} title="No messages yet" sub="When your teacher posts news, it shows here and on the home screen." /> : (
        <div className="stack" style={{ gap: 12 }}>
          {announcements.map(a => (
            <div key={a.id} className="card pad">
              <div className="eyebrow">{fmtDate(a.created_at)}</div>
              <div className="h3" style={{ margin: "4px 0 6px" }}>{a.title}</div>
              <div style={{ fontSize: 15, whiteSpace: "pre-wrap" }}>{a.body}</div>
            </div>
          ))}
        </div>
      )}
    </div>
  );
}

// ================= New day banner =================
export function NewDayBanner() {
  const { go } = useApp();
  const newest = DAYS[DAYS.length - 1];
  const [seen, setSeen] = useState(() => loadJSON("seen-day", null));
  useEffect(() => { if (seen === null && newest) { saveJSON("seen-day", newest.day); setSeen(newest.day); } }, []); // eslint-disable-line
  if (!newest || seen === null || newest.day <= seen) return null;
  function done() { saveJSON("seen-day", newest.day); setSeen(newest.day); }
  const first = SKILLS.find(s => s.day === newest.day);
  return (
    <div className="card pad row" style={{ marginBottom: 16, gap: 14, background: "var(--brand)", color: "#fff", borderColor: "transparent" }}>
      <div className="tile-icon" style={{ background: "rgba(255,255,255,.12)", color: "var(--gold)" }}><Sparkles size={22} /></div>
      <div style={{ flex: 1, minWidth: 0 }}>
        <div className="h3">Day {newest.day} is here! 🎉</div>
        <div style={{ fontSize: 13.5, opacity: .85 }}>{newest.subtitle || newest.title}</div>
      </div>
      <div className="row" style={{ gap: 6 }}>
        {first && <button className="btn sm white" onClick={() => { done(); saveJSON("course-day", newest.day); go("skill", { id: first.id }); }}>Start</button>}
        <button className="icon-btn" style={{ width: 34, height: 34, background: "transparent", color: "#fff", borderColor: "rgba(255,255,255,.3)" }} onClick={done} aria-label="Hide"><X size={16} /></button>
      </div>
    </div>
  );
}

// ================= Assignments (learner) =================
export function AssignmentsScreen() {
  const { user, go, showToast, params } = useApp();
  const [list, setList] = useState(null);
  const [day, setDay] = useState(params.day || DAYS[DAYS.length - 1]?.day || 1);
  const [title, setTitle] = useState("");
  const [answer, setAnswer] = useState(() => loadJSON("assignment-draft", ""));
  const [file, setFile] = useState(null);
  const [busy, setBusy] = useState(false);
  const [err, setErr] = useState(null);
  const fileRef = useRef(null);

  useEffect(() => { saveJSON("assignment-draft", answer || null); }, [answer]);
  useEffect(() => {
    if (!user) return;
    supabase.from("submissions").select("*").eq("user_id", user.id).order("created_at", { ascending: false })
      .then(({ data, error }) => { if (error) setErr(niceError(error)); else setList(data); });
  }, [user]);

  if (!user) return <div><PageHead back={{ label: "Library", onClick: () => go("library") }} eyebrow="Class" title="Assignments" /><NeedAccount what="Assignments" /></div>;

  function pick(e) {
    const f = e.target.files[0];
    if (!f) return;
    if (f.size > 10 * 1024 * 1024) { setErr("That file is too big. Please choose one under 10 MB."); return; }
    setErr(null); setFile(f);
  }

  async function submit() {
    if (!answer.trim() && !file) { setErr("Type your answer or attach a file first."); return; }
    setBusy(true); setErr(null);
    try {
      let file_path = null, file_name = null;
      if (file) {
        const safe = file.name.replace(/[^\w.-]+/g, "_").slice(-80);
        file_path = `${user.id}/${Date.now()}-${safe}`;
        const { error } = await supabase.storage.from("submissions").upload(file_path, file, { contentType: file.type || undefined });
        if (error) throw error;
        file_name = file.name;
      }
      const row = { day: Number(day), title: title.trim() || `Day ${day} assignment`, answer: answer.trim(), file_path, file_name };
      const { data, error } = await supabase.from("submissions").insert(row).select().single();
      if (error) throw error;
      setList(l => [data, ...(l || [])]);
      setAnswer(""); setTitle(""); setFile(null); saveJSON("assignment-draft", null);
      showToast("Handed in! Your teacher will mark it ✓");
    } catch (e) { setErr(niceError(e)); }
    setBusy(false);
  }

  async function remove(s) {
    if (!window.confirm("Delete this unmarked answer?")) return;
    const { error } = await supabase.from("submissions").delete().eq("id", s.id);
    if (error) { setErr(niceError(error)); return; }
    if (s.file_path) supabase.storage.from("submissions").remove([s.file_path]).catch(() => {});
    setList(l => l.filter(x => x.id !== s.id));
  }

  async function openFile(path) {
    const { data, error } = await supabase.storage.from("submissions").createSignedUrl(path, 600);
    if (error) { setErr(niceError(error)); return; }
    window.open(data.signedUrl, "_blank", "noopener");
  }

  return (
    <div>
      <PageHead back={{ label: "Library", onClick: () => go("library") }} eyebrow="Class" title={<>Hand in your <span className="serif">work</span></>} sub="Type your answer or attach a file (Word, PDF or a photo). Your teacher marks it and you see the score and comments here." />
      <div className="card pad stack" style={{ gap: 14 }}>
        <div className="row wrap" style={{ gap: 10 }}>
          <div style={{ flex: "0 0 130px" }}>
            <label className="label" htmlFor="as-day">Day</label>
            <select id="as-day" className="input" value={day} onChange={e => setDay(e.target.value)}>
              {DAYS.map(d => <option key={d.day} value={d.day}>Day {d.day}</option>)}
            </select>
          </div>
          <div style={{ flex: "1 1 200px" }}>
            <label className="label" htmlFor="as-title">Title</label>
            <input id="as-title" className="input" value={title} onChange={e => setTitle(e.target.value)} placeholder={`Day ${day} assignment`} />
          </div>
        </div>
        <div>
          <label className="label" htmlFor="as-answer">Your answer</label>
          <textarea id="as-answer" className="input" rows={7} value={answer} onChange={e => setAnswer(e.target.value)} placeholder="Type your answer here. It is saved on this phone while you type." />
        </div>
        <div className="row wrap" style={{ gap: 10 }}>
          <button type="button" className="btn ghost" onClick={() => fileRef.current.click()}><Paperclip size={16} /> {file ? "Change file" : "Attach a file"}</button>
          {file && <span className="pill brand" style={{ textTransform: "none" }}><FileText size={12} /> {file.name} <button onClick={() => setFile(null)} aria-label="Remove file" style={{ border: "none", background: "none", padding: 0, color: "inherit", display: "grid" }}><X size={12} /></button></span>}
          <input ref={fileRef} type="file" accept=".pdf,.doc,.docx,.txt,image/*" onChange={pick} style={{ display: "none" }} />
        </div>
        {err && <div className="pill coral" style={{ whiteSpace: "normal", padding: "8px 12px", textTransform: "none" }}>{err}</div>}
        <button className="btn primary lg" onClick={submit} disabled={busy}><Send size={17} /> {busy ? "Sending…" : "Hand it in"}</button>
      </div>

      <div className="section">
        <div className="section-head"><h2 className="h2">My work</h2></div>
        {list === null ? <div className="muted">Loading…</div> : !list.length ? <Empty icon={FileText} title="Nothing handed in yet" sub="Your answers and your teacher's marks will show here." /> : (
          <div className="stack" style={{ gap: 12 }}>
            {list.map(s => (
              <div key={s.id} className="card pad">
                <div className="between" style={{ alignItems: "flex-start" }}>
                  <div style={{ minWidth: 0 }}>
                    <div className="eyebrow">Day {s.day} · {fmtDate(s.created_at)}</div>
                    <div className="h3" style={{ marginTop: 2 }}>{s.title}</div>
                  </div>
                  {s.status === "marked"
                    ? <span className="pill mint" style={{ fontSize: 13 }}><CheckCircle2 size={13} /> {s.score ?? "–"}%</span>
                    : <span className="pill sun"><Clock size={12} /> Waiting for mark</span>}
                </div>
                {s.answer && <div className="muted" style={{ fontSize: 14, marginTop: 8, whiteSpace: "pre-wrap" }}>{s.answer.length > 280 ? s.answer.slice(0, 280) + "…" : s.answer}</div>}
                {s.file_path && <button className="btn sm ghost" style={{ marginTop: 10 }} onClick={() => openFile(s.file_path)}><Paperclip size={14} /> {s.file_name || "Open file"}</button>}
                {s.status === "marked" && s.feedback && (
                  <div className="explain-box fill-green" style={{ marginTop: 12 }}>
                    <div className="eyebrow">Teacher's comment</div>
                    <div style={{ whiteSpace: "pre-wrap" }}>{s.feedback}</div>
                  </div>
                )}
                {s.status !== "marked" && <button className="btn sm danger" style={{ marginTop: 10 }} onClick={() => remove(s)}><Trash2 size={14} /> Delete</button>}
              </div>
            ))}
          </div>
        )}
      </div>
    </div>
  );
}

// ================= Certificates =================
// A day is complete when every lesson of the day is read and at least 80%
// of its practice tasks are marked "Got it".
export function dayCompletion(day, taskProgress, lessonsDone) {
  const skills = SKILLS.filter(s => s.day === day.day);
  const tasks = TASKS.filter(t => t.day === day.day);
  const lessons = skills.filter(s => lessonsDone[s.id]).length;
  const got = tasks.filter(t => taskProgress[t.id]?.s === "got").length;
  const need = Math.ceil(tasks.length * 0.8);
  const pct = skills.length ? Math.round(((lessons / skills.length) * 0.5 + (need ? Math.min(1, got / need) : 1) * 0.5) * 100) : 0;
  const doneAt = [...skills.map(s => lessonsDone[s.id]), ...tasks.map(t => taskProgress[t.id]?.s === "got" ? taskProgress[t.id].d : null)].filter(Boolean).sort().pop();
  return { lessons, skills: skills.length, got, need, tasks: tasks.length, pct, done: skills.length > 0 && lessons === skills.length && got >= need, doneAt };
}

async function drawCertificate(canvas, { name, day, title, date }) {
  const W = 1600, H = 1130;
  canvas.width = W; canvas.height = H;
  const c = canvas.getContext("2d");
  try { await Promise.all([document.fonts.load("700 80px Fraunces"), document.fonts.load("italic 600 60px Fraunces"), document.fonts.load("600 30px 'Plus Jakarta Sans'")]); } catch { /* fallback fonts */ }
  const g = c.createLinearGradient(0, 0, W, H);
  g.addColorStop(0, "#0F4C3A"); g.addColorStop(1, "#1B6B53");
  c.fillStyle = g; c.fillRect(0, 0, W, H);
  c.fillStyle = "#FBFAF5"; c.fillRect(46, 46, W - 92, H - 92);
  c.strokeStyle = "#D4A657"; c.lineWidth = 3; c.strokeRect(70, 70, W - 140, H - 140);
  c.lineWidth = 1; c.strokeRect(82, 82, W - 164, H - 164);
  c.textAlign = "center";
  c.fillStyle = "#8C6420"; c.font = "700 26px 'Plus Jakarta Sans', sans-serif";
  c.fillText("A I   T R A I N E R   C L A S S", W / 2, 200);
  c.fillStyle = "#10231C"; c.font = "700 84px Fraunces, Georgia, serif";
  c.fillText("Certificate of Completion", W / 2, 310);
  c.fillStyle = "#5F6F68"; c.font = "500 30px 'Plus Jakarta Sans', sans-serif";
  c.fillText("This is to certify that", W / 2, 400);
  c.fillStyle = "#0F4C3A"; c.font = "italic 600 96px Fraunces, Georgia, serif";
  let size = 96;
  while (c.measureText(name).width > W - 360 && size > 40) { size -= 4; c.font = `italic 600 ${size}px Fraunces, Georgia, serif`; }
  c.fillText(name, W / 2, 520);
  c.strokeStyle = "#D4A657"; c.lineWidth = 2; c.beginPath(); c.moveTo(W / 2 - 300, 560); c.lineTo(W / 2 + 300, 560); c.stroke();
  c.fillStyle = "#5F6F68"; c.font = "500 30px 'Plus Jakarta Sans', sans-serif";
  c.fillText(`has completed Day ${day} of the AI Trainer Class`, W / 2, 630);
  c.fillStyle = "#10231C"; c.font = "600 38px Fraunces, Georgia, serif";
  let t = title; while (c.measureText(t).width > W - 360 && t.length > 10) t = t.slice(0, -2);
  c.fillText(t === title ? t : t + "…", W / 2, 690);
  // seal
  c.beginPath(); c.arc(W / 2, 850, 78, 0, Math.PI * 2); c.fillStyle = "#0F4C3A"; c.fill();
  c.beginPath(); c.arc(W / 2, 850, 66, 0, Math.PI * 2); c.strokeStyle = "#D4A657"; c.lineWidth = 3; c.stroke();
  c.fillStyle = "#D4A657"; c.font = "700 34px Fraunces, Georgia, serif"; c.fillText(`Day ${day}`, W / 2, 862);
  c.fillStyle = "#5F6F68"; c.font = "500 24px 'Plus Jakarta Sans', sans-serif";
  c.textAlign = "left"; c.fillText(`Date: ${date}`, 170, 980);
  c.textAlign = "right"; c.fillText("AI Trainer Class", W - 170, 980);
}

function CertificateSheet({ day, info, name, onClose }) {
  const ref = useRef(null);
  const [url, setUrl] = useState(null);
  useEffect(() => {
    const canvas = document.createElement("canvas");
    ref.current = canvas;
    drawCertificate(canvas, { name, day: day.day, title: day.subtitle || day.title, date: fmtDate(info.doneAt || new Date().toISOString()) })
      .then(() => setUrl(canvas.toDataURL("image/png")));
  }, []); // eslint-disable-line
  const file = `AI-Trainer-Class-Day-${day.day}-certificate.png`;
  async function share() {
    try {
      const blob = await new Promise(r => ref.current.toBlob(r, "image/png"));
      const f = new File([blob], file, { type: "image/png" });
      if (navigator.canShare?.({ files: [f] })) await navigator.share({ files: [f], title: "My AI Trainer Class certificate" });
      else download();
    } catch { /* cancelled */ }
  }
  function download() { const a = document.createElement("a"); a.href = url; a.download = file; a.click(); }
  return (
    <div className="scrim" onClick={onClose}>
      <div className="sheet wide" onClick={e => e.stopPropagation()} role="dialog">
        <div className="grabber" />
        <div className="between" style={{ marginBottom: 12 }}><div className="h2">Your certificate 🎓</div><button className="icon-btn" onClick={onClose} aria-label="Close"><X size={18} /></button></div>
        {url ? <img src={url} alt={`Day ${day.day} certificate for ${name}`} style={{ width: "100%", borderRadius: 12, boxShadow: "var(--sh)" }} /> : <div className="muted" style={{ padding: 40, textAlign: "center" }}>Making your certificate…</div>}
        <div className="row" style={{ gap: 10, marginTop: 14 }}>
          <button className="btn primary full" onClick={download} disabled={!url}><Download size={17} /> Download</button>
          <button className="btn ghost full" onClick={share} disabled={!url}><Share2 size={17} /> Share</button>
        </div>
      </div>
    </div>
  );
}

export function CertificatesScreen() {
  const { taskProgress, lessonsDone, profile, go } = useApp();
  const [open, setOpen] = useState(null);
  const name = (profile.name || "").trim();
  return (
    <div>
      <PageHead back={{ label: "Progress", onClick: () => go("progress") }} eyebrow="Rewards" title={<>Your <span className="serif">certificates</span></>} sub="Finish a day to earn its certificate: read every lesson and get at least 80% of its tasks right." />
      {!name && <div className="card pad" style={{ marginBottom: 14 }}>Add your name in <button className="btn sm ghost" onClick={() => go("me")}>Me</button> so it can be printed on your certificates.</div>}
      <div className="grid g2">
        {DAYS.map(d => {
          const info = dayCompletion(d, taskProgress, lessonsDone);
          return (
            <div key={d.day} className="card pad" style={info.done ? { borderColor: "var(--gold)", background: "linear-gradient(160deg, var(--gold-soft), var(--surface) 70%)" } : undefined}>
              <div className="between">
                <div className="tile-icon" style={info.done ? { background: "var(--brand)", color: "var(--gold)" } : undefined}>{info.done ? <Award size={22} /> : <Lock size={20} />}</div>
                <span className={`pill ${info.done ? "mint" : ""}`}>{info.done ? "Earned" : `${info.pct}%`}</span>
              </div>
              <div className="eyebrow" style={{ marginTop: 12 }}>Day {d.day}</div>
              <div className="h3">{d.subtitle || d.title}</div>
              <div className="muted" style={{ fontSize: 13.5, margin: "8px 0 10px" }}>Lessons {info.lessons}/{info.skills} · Tasks right {info.got}/{info.need} needed</div>
              <Bar pct={info.pct} />
              {info.done && <button className="btn primary full" style={{ marginTop: 14 }} disabled={!name} onClick={() => setOpen({ d, info })}><Award size={17} /> View certificate</button>}
            </div>
          );
        })}
      </div>
      {open && <CertificateSheet day={open.d} info={open.info} name={name} onClose={() => setOpen(null)} />}
    </div>
  );
}

// ================= Daily reminder (calendar) =================
function icsFor(time) {
  const [h, m] = time.split(":").map(Number);
  const start = new Date(); start.setHours(h, m, 0, 0);
  if (start < new Date()) start.setDate(start.getDate() + 1);
  const p = n => String(n).padStart(2, "0");
  const local = d => `${d.getFullYear()}${p(d.getMonth() + 1)}${p(d.getDate())}T${p(d.getHours())}${p(d.getMinutes())}00`;
  const end = new Date(start.getTime() + 15 * 60000);
  const url = window.location.origin;
  return [
    "BEGIN:VCALENDAR", "VERSION:2.0", "PRODID:-//AI Trainer Class//EN", "BEGIN:VEVENT",
    `UID:aitc-daily-${Date.now()}@ai-trainer-class`, `DTSTAMP:${new Date().toISOString().replace(/[-:]/g, "").slice(0, 15)}Z`,
    `DTSTART:${local(start)}`, `DTEND:${local(end)}`, "RRULE:FREQ=DAILY",
    "SUMMARY:AI Trainer Class: study time 📚", `DESCRIPTION:Keep your streak! Open the class: ${url}`, `URL:${url}`,
    "BEGIN:VALARM", "TRIGGER:PT0M", "ACTION:DISPLAY", "DESCRIPTION:Time to study", "END:VALARM",
    "END:VEVENT", "END:VCALENDAR",
  ].join("\r\n");
}

export function ReminderCard() {
  const [time, setTime] = useState(() => loadJSON("reminder-time", "19:00"));
  function save(t) { setTime(t); saveJSON("reminder-time", t); }
  function addToCalendar() {
    const blob = new Blob([icsFor(time)], { type: "text/calendar" });
    const a = document.createElement("a");
    a.href = URL.createObjectURL(blob); a.download = "ai-trainer-class-reminder.ics"; a.click();
    setTimeout(() => URL.revokeObjectURL(a.href), 4000);
  }
  const [h, m] = time.split(":").map(Number);
  const s = new Date(); s.setHours(h, m, 0, 0);
  const p = n => String(n).padStart(2, "0");
  const g = d => `${d.getFullYear()}${p(d.getMonth() + 1)}${p(d.getDate())}T${p(d.getHours())}${p(d.getMinutes())}00`;
  const google = `https://calendar.google.com/calendar/render?action=TEMPLATE&text=${encodeURIComponent("AI Trainer Class: study time 📚")}&details=${encodeURIComponent(`Keep your streak! ${window.location.origin}`)}&dates=${g(s)}/${g(new Date(s.getTime() + 15 * 60000))}&recur=${encodeURIComponent("RRULE:FREQ=DAILY")}`;
  return (
    <div className="card pad">
      <div className="row" style={{ marginBottom: 6 }}><BellRing size={19} color="var(--gold-ink)" /><div className="h3">Daily reminder</div></div>
      <div className="muted" style={{ fontSize: 14, marginBottom: 12 }}>Your phone's calendar will remind you to study every day at this time.</div>
      <div className="row wrap" style={{ gap: 10 }}>
        <input type="time" className="input" style={{ width: 140 }} value={time} onChange={e => e.target.value && save(e.target.value)} aria-label="Reminder time" />
        <a className="btn primary" href={google} target="_blank" rel="noopener noreferrer"><CalendarPlus size={16} /> Google Calendar</a>
        <button className="btn ghost" onClick={addToCalendar}><CalendarPlus size={16} /> iPhone / other</button>
      </div>
    </div>
  );
}

// ================= Class leaderboard =================
export function ClassLeaderboard() {
  const { user, cloudOn, sync } = useApp();
  const [rows, setRows] = useState(null);
  const [range, setRange] = useState("week");
  const [err, setErr] = useState(null);
  useEffect(() => {
    if (!user) return;
    supabase.rpc("class_leaderboard").then(({ data, error }) => { if (error) setErr(niceError(error)); else setRows(data || []); });
  }, [user, sync.at]);
  if (!cloudOn) return null;
  if (!user) return <NeedAccount what="The class leaderboard" />;
  const key = range === "week" ? "week_count" : "xp";
  const ranked = (rows || []).filter(r => r[key] > 0 || r.is_me).sort((a, b) => b[key] - a[key]).slice(0, 50);
  const medal = ["🥇", "🥈", "🥉"];
  return (
    <div>
      <div className="seg" style={{ marginBottom: 14 }}>
        <button className={range === "week" ? "on" : ""} onClick={() => setRange("week")}>This week</button>
        <button className={range === "all" ? "on" : ""} onClick={() => setRange("all")}>All time XP</button>
      </div>
      {err && <div className="pill coral" style={{ textTransform: "none", whiteSpace: "normal" }}>{err}</div>}
      {rows === null && !err ? <div className="muted">Loading…</div> : !ranked.length ? <Empty icon={Crown} title="No one yet" sub="Study a little and you will be first!" /> : (
        <div className="stack" style={{ gap: 8 }}>
          {ranked.map((r, i) => (
            <div key={i} className="card row" style={{ padding: "12px 16px", gap: 14, borderColor: r.is_me ? "var(--brand-2)" : undefined, background: r.is_me ? "var(--brand-soft)" : undefined }}>
              <div style={{ width: 34, textAlign: "center", fontSize: i < 3 ? 24 : 15, fontWeight: 800, color: "var(--faint)" }}>{medal[i] || `#${i + 1}`}</div>
              <div style={{ flex: 1, minWidth: 0 }}>
                <div style={{ fontWeight: 700 }}>{r.name}{r.is_me && <span style={{ color: "var(--brand-ink)" }}> (you)</span>}</div>
                <div className="faint" style={{ fontSize: 13 }}>🔥 {r.streak} day streak · {r.tasks_done} tasks</div>
              </div>
              <div style={{ textAlign: "right" }}>
                <div className="h3" style={{ color: "var(--brand-ink)" }}>{r[key]}</div>
                <div className="faint" style={{ fontSize: 11.5 }}>{range === "week" ? "this week" : "XP"}</div>
              </div>
            </div>
          ))}
        </div>
      )}
    </div>
  );
}
