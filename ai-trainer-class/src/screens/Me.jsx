import { useState, useRef } from "react";
import {
  Camera, UserRound, Headphones, Target, Palette, LifeBuoy, Info, Trash2, ChevronRight, MessageCircle, Mail, Clock,
  HelpCircle, Download, ArrowRight, ShieldCheck, Sun, Moon, BookOpenCheck, Play,
} from "lucide-react";
import { useApp, PageHead, Sheet, Picture } from "../ui.jsx";
import { ReaderSettings, ListenButton } from "../lib/reader.jsx";
import { LogoMark } from "../logo.jsx";
import { COURSE, ROLES, SKILLS, TASKS, GLOSSARY } from "../data/course.js";

const WHATSAPP_NUMBER = "2349031853995";
const WHATSAPP_DISPLAY = "+234 903 185 3995";
const SUPPORT_EMAIL = "gurumkanenfot01@gmail.com";
const GOALS = [5, 10, 20, 30];

// ================= Welcome (first visit) =================
export function Welcome() {
  const { setProfile, profile, go } = useApp();
  const [step, setStep] = useState(0);
  const [name, setName] = useState(profile.name || "");
  const [goal, setGoal] = useState(profile.goal || "");
  const [daily, setDaily] = useState(profile.dailyGoal || 10);
  const intro = "Welcome to the AI Trainer Class. AI companies need people to check and mark AI answers. In this class you learn 18 simple skills, practise on 360 real tasks, and track your progress. I am your AI Reader. Tap Listen on any card, and I will read it to you.";

  function finish(next) {
    setProfile({ ...profile, name: name.trim(), goal, dailyGoal: daily });
    go(next);
  }

  return (
    <div className="focus">
      <div className="focus-top"><div className="focus-top-inner">
        <div className="segments">{[0, 1, 2].map(k => <i key={k} className={k < step ? "done" : k === step ? "now" : ""} />)}</div>
      </div></div>
      <div className="focus-body" style={{ paddingTop: 20 }}>
        {step === 0 && (
          <div className="rise">
            <div className="hero" style={{ padding: 32 }}>
              <div className="rail-logo" style={{ background: "rgba(255,255,255,.2)", boxShadow: "none", width: 60, height: 60, borderRadius: 20 }}><LogoMark size={32} /></div>
              <h1 className="h1" style={{ fontSize: 38, margin: "8px 0 10px" }}>Become an AI Trainer.</h1>
              <div style={{ fontSize: 17, opacity: .92, maxWidth: 480 }}>AI companies pay people to check and mark AI answers. Learn how, in very simple English.</div>
              <div style={{ marginTop: 18 }}><ListenButton text={intro} id="welcome" label="Listen" title="Welcome" style={{ background: "rgba(255,255,255,.2)", color: "#fff" }} /></div>
            </div>
            <div className="grid g3" style={{ marginTop: 16 }}>
              {[["📚", "18 short lessons", "With pictures and examples"], ["🎯", "360 practice tasks", "Each one explained simply"], ["🎧", "AI Reader", "Listen instead of reading"]].map(([e, t, s]) => (
                <div key={t} className="card pad"><div style={{ fontSize: 28 }}>{e}</div><div className="h3" style={{ marginTop: 6 }}>{t}</div><div className="muted" style={{ fontSize: 14 }}>{s}</div></div>
              ))}
            </div>
          </div>
        )}
        {step === 1 && (
          <div className="rise card pad" style={{ padding: 28 }}>
            <div style={{ fontSize: 40 }}>👋</div>
            <h1 className="h1" style={{ margin: "8px 0 6px" }}>What is your name?</h1>
            <div className="muted" style={{ marginBottom: 18 }}>We use it to greet you. It stays on this phone.</div>
            <input className="input" style={{ fontSize: 18, padding: 16 }} autoFocus value={name} onChange={e => setName(e.target.value)} placeholder="Your first name" aria-label="Your name"
              onKeyDown={e => { if (e.key === "Enter" && name.trim()) setStep(2); }} />
          </div>
        )}
        {step === 2 && (
          <div className="rise stack" style={{ gap: 14 }}>
            <div className="card pad" style={{ padding: 24 }}>
              <h1 className="h1" style={{ marginBottom: 6 }}>Nice to meet you, {name.trim().split(" ")[0]}!</h1>
              <div className="muted">Which job do you want? (You will learn both.)</div>
              <div className="grid g2" style={{ marginTop: 14 }}>
                {ROLES.map(r => (
                  <button key={r.key} className="card tap pad" onClick={() => setGoal(r.name)} style={{ textAlign: "left", borderColor: goal === r.name ? "var(--brand)" : undefined, background: goal === r.name ? "var(--brand-soft)" : undefined }}>
                    <div style={{ fontSize: 28 }}>{r.icon}</div>
                    <div className="h3">{r.name}</div>
                    <div className="muted" style={{ fontSize: 13.5 }}>{r.intro}</div>
                  </button>
                ))}
              </div>
            </div>
            <div className="card pad" style={{ padding: 24 }}>
              <div className="h3">Daily goal</div>
              <div className="muted" style={{ fontSize: 14, marginBottom: 12 }}>How many tasks a day? Small and steady wins.</div>
              <div className="chips">{GOALS.map(g => <button key={g} className={`chip${daily === g ? " on" : ""}`} onClick={() => setDaily(g)}>{g} a day{g === 10 ? " ⭐" : ""}</button>)}</div>
            </div>
          </div>
        )}
      </div>
      <div className="focus-foot"><div className="focus-foot-inner">
        {step > 0 && <button className="btn ghost lg" onClick={() => setStep(step - 1)}>Back</button>}
        {step < 2
          ? <button className="btn grad lg full" disabled={step === 1 && !name.trim()} onClick={() => setStep(step + 1)}>{step === 0 ? "Let's start" : "Next"} <ArrowRight size={18} /></button>
          : <>
              <button className="btn ghost lg full" onClick={() => finish("bigpicture")}>See the big picture</button>
              <button className="btn grad lg full" onClick={() => finish("learn")}><Play size={18} fill="currentColor" /> Start learning</button>
            </>}
      </div></div>
    </div>
  );
}

// ================= Me =================
export function MeScreen() {
  const { profile, setProfile, theme, toggleTheme, go, resetAll, level, canInstall, promptInstall, showToast } = useApp();
  const [form, setForm] = useState(profile);
  const [confirm, setConfirm] = useState(false);
  const fileRef = useRef(null);
  const dirty = JSON.stringify(form) !== JSON.stringify(profile);

  function photo(e) {
    const file = e.target.files[0];
    if (!file) return;
    if (file.size > 900000) { alert("Please choose a smaller picture (under about 900KB)."); return; }
    const r = new FileReader();
    r.onload = () => { const next = { ...form, photo: r.result }; setForm(next); setProfile(next); };
    r.readAsDataURL(file);
  }
  function save() { setProfile(form); showToast("Profile saved ✓"); }
  function setGoal(g) { const next = { ...form, dailyGoal: g }; setForm(next); setProfile(next); }

  return (
    <div>
      <div className="hero" style={{ display: "flex", gap: 20, alignItems: "center", flexWrap: "wrap", marginBottom: 18 }}>
        <div style={{ position: "relative" }}>
          <div style={{ width: 88, height: 88, borderRadius: 28, background: "rgba(255,255,255,.2)", overflow: "hidden", display: "grid", placeItems: "center", border: "3px solid rgba(255,255,255,.5)" }}>
            {form.photo ? <img src={form.photo} alt="" style={{ width: "100%", height: "100%", objectFit: "cover" }} /> : <UserRound size={40} />}
          </div>
          <button onClick={() => fileRef.current.click()} aria-label="Change photo" style={{ position: "absolute", right: -6, bottom: -6, width: 34, height: 34, borderRadius: 12, border: "none", background: "#fff", color: "#3B2FB8", display: "grid", placeItems: "center" }}><Camera size={16} /></button>
          <input ref={fileRef} type="file" accept="image/*" onChange={photo} style={{ display: "none" }} />
        </div>
        <div>
          <h1 className="h1">{profile.name || "Your profile"}</h1>
          <div style={{ opacity: .9 }}>{level.icon} {level.name}{profile.goal ? ` · wants to be: ${profile.goal}` : ""}</div>
        </div>
      </div>

      <div className="grid g2">
        <div className="card pad">
          <div className="row" style={{ marginBottom: 14 }}><UserRound size={19} color="var(--brand-ink)" /><div className="h3">About me</div></div>
          <div className="stack" style={{ gap: 12 }}>
            <div><label className="label" htmlFor="nm">Name</label><input id="nm" className="input" value={form.name} onChange={e => setForm({ ...form, name: e.target.value })} /></div>
            <div><label className="label" htmlFor="em">Email (optional)</label><input id="em" className="input" value={form.email} onChange={e => setForm({ ...form, email: e.target.value })} /></div>
            <div><label className="label" htmlFor="ct">City / Country</label><input id="ct" className="input" value={form.city} onChange={e => setForm({ ...form, city: e.target.value })} /></div>
            <div>
              <label className="label" htmlFor="gl">Job I want</label>
              <select id="gl" className="input" value={form.goal} onChange={e => setForm({ ...form, goal: e.target.value })}>
                <option value="">Choose one</option>
                {ROLES.map(r => <option key={r.key} value={r.name}>{r.name}</option>)}
                <option value="Both roles">Both roles</option>
              </select>
            </div>
            <button className="btn primary" onClick={save} disabled={!dirty || !form.name.trim()}>Save</button>
          </div>
        </div>

        <div className="stack" style={{ gap: 14 }}>
          <div className="card pad">
            <div className="row" style={{ marginBottom: 12 }}><Target size={19} color="var(--mint)" /><div className="h3">Daily goal</div></div>
            <div className="chips">{GOALS.map(g => <button key={g} className={`chip${(form.dailyGoal || 10) === g ? " on" : ""}`} onClick={() => setGoal(g)}>{g} a day</button>)}</div>
          </div>
          <div className="card pad">
            <div className="row" style={{ marginBottom: 12 }}><Palette size={19} color="var(--sun)" /><div className="h3">Look</div></div>
            <div className="seg">
              <button className={theme === "light" ? "on" : ""} onClick={() => theme !== "light" && toggleTheme()}><Sun size={15} style={{ verticalAlign: -3 }} /> Light</button>
              <button className={theme === "dark" ? "on" : ""} onClick={() => theme !== "dark" && toggleTheme()}><Moon size={15} style={{ verticalAlign: -3 }} /> Dark</button>
            </div>
          </div>
          {canInstall && (
            <button className="card tap pad row" style={{ textAlign: "left", gap: 12 }} onClick={promptInstall}>
              <Download size={20} color="var(--brand-ink)" /><div style={{ flex: 1 }}><div className="h3">Install the app</div><div className="muted" style={{ fontSize: 13.5 }}>Works offline, opens fast</div></div><ChevronRight size={18} color="var(--faint)" />
            </button>
          )}
        </div>
      </div>

      <div className="card pad section">
        <div className="row" style={{ marginBottom: 14 }}><Headphones size={19} color="var(--brand-ink)" /><div className="h3">AI Reader</div></div>
        <ReaderSettings />
      </div>

      <div className="card section" style={{ padding: 6 }}>
        <button className="list-row" onClick={() => go("help")}><LifeBuoy size={20} color="var(--sky)" /><span style={{ flex: 1, fontWeight: 600 }}>Help & Customer Care</span><ChevronRight size={18} color="var(--faint)" /></button>
        <button className="list-row" onClick={() => go("about")}><Info size={20} color="var(--brand-ink)" /><span style={{ flex: 1, fontWeight: 600 }}>About this class</span><ChevronRight size={18} color="var(--faint)" /></button>
        <button className="list-row" onClick={() => setConfirm(true)}><Trash2 size={20} color="var(--coral)" /><span style={{ flex: 1, fontWeight: 600, color: "var(--coral)" }}>Start again (delete my progress)</span></button>
      </div>

      {confirm && (
        <Sheet onClose={() => setConfirm(false)}>
          <div className="h2" style={{ marginBottom: 8 }}>Delete everything?</div>
          <div className="muted" style={{ marginBottom: 20 }}>Your tasks, tests, XP, badges, bookmarks and profile on this device will be deleted. You cannot undo this.</div>
          <div className="row"><button className="btn ghost lg full" onClick={() => setConfirm(false)}>Keep it</button><button className="btn lg full" style={{ background: "var(--coral)", color: "#fff" }} onClick={resetAll}>Delete</button></div>
        </Sheet>
      )}
    </div>
  );
}

// ================= Help =================
const FAQS = [
  ["Where is my progress saved?", "On this phone or computer. You do not need an account. If you clear your browser data or change phones, your progress will not move with you."],
  ["The AI Reader does not talk", "Turn up the volume and check silent mode. Tap the round headphones button, then \"Test the voice\". If there is still no sound, try Chrome (Android) or Safari (iPhone)."],
  ["Can I use it with no internet?", "Yes. Open the app once with internet. After that, lessons, tasks, tests and the AI Reader work offline on most phones."],
  ["What is XP?", "Points for learning. You get 10 XP for a task you got right, 50 XP for a finished lesson, and 5 XP for each right test answer. XP moves you up the levels."],
  ["I found a mistake in a task", "Send us the skill name and task number on WhatsApp or email. Every report helps."],
];

export function Help() {
  const { go } = useApp();
  const [open, setOpen] = useState(0);
  const wa = `https://wa.me/${WHATSAPP_NUMBER}?text=${encodeURIComponent("Hi, I need help with the AI Trainer Class app.")}`;
  return (
    <div>
      <PageHead back={{ label: "Me", onClick: () => go("me") }} eyebrow="Customer Care" title="How can we help?" />
      <div className="grid g2">
        <a href={wa} target="_blank" rel="noopener noreferrer" className="card tap pad row" style={{ textDecoration: "none", color: "inherit", gap: 14 }}>
          <div className="tile-icon" style={{ background: "#25D366", color: "#fff" }}><MessageCircle size={22} /></div>
          <div><div className="eyebrow">WhatsApp</div><div className="h3">{WHATSAPP_DISPLAY}</div></div>
        </a>
        <a href={`mailto:${SUPPORT_EMAIL}`} className="card tap pad row" style={{ textDecoration: "none", color: "inherit", gap: 14 }}>
          <div className="tile-icon" style={{ background: "var(--brand)", color: "#fff" }}><Mail size={20} /></div>
          <div style={{ minWidth: 0 }}><div className="eyebrow">Email</div><div className="h3" style={{ overflowWrap: "anywhere" }}>{SUPPORT_EMAIL}</div></div>
        </a>
      </div>
      <div className="row faint" style={{ fontSize: 13.5, margin: "12px 4px" }}><Clock size={15} /> We usually answer within 24 hours.</div>
      <div className="card section" style={{ padding: 6 }}>
        {FAQS.map(([q, a], i) => (
          <div key={q}>
            {i > 0 && <div className="divider" style={{ margin: "0 14px" }} />}
            <button className="list-row" onClick={() => setOpen(open === i ? -1 : i)} aria-expanded={open === i}>
              <HelpCircle size={19} color="var(--brand-ink)" /><span style={{ flex: 1, fontWeight: 700 }}>{q}</span>
            </button>
            {open === i && <div className="fade muted" style={{ padding: "0 16px 16px 49px", fontSize: 14.5 }}>{a}</div>}
          </div>
        ))}
      </div>
    </div>
  );
}

// ================= About =================
export function About() {
  const { go } = useApp();
  const stats = [["Roles", ROLES.length], ["Skills", SKILLS.length], ["Tasks", TASKS.length], ["Key words", GLOSSARY.length]];
  return (
    <div>
      <PageHead back={{ label: "Me", onClick: () => go("me") }} eyebrow="About" title="AI Trainer Class" sub={COURSE.title} />
      <Picture src="/img/v_teacher.jpg" alt="Think of it like a teacher marking homework" style={{ marginBottom: 16 }} />
      <div className="grid g4">
        {stats.map(([l, v]) => <div key={l} className="card pad" style={{ textAlign: "center" }}><div className="display grad-text" style={{ fontSize: 30, fontWeight: 800 }}>{v}</div><div className="faint">{l}</div></div>)}
      </div>
      <div className="card pad section">
        <div className="h3" style={{ marginBottom: 10 }}>What's inside</div>
        {["Story-style lessons with pictures, key words, steps and worked examples", "360 practice tasks, each with \"Why (explained simply)\" and a key word", "Learn-mode and exam-mode tests, Role Tests and a Daily Challenge", "XP, levels, daily goal, streak, badges and a skill map", "An AI Reader that reads everything out loud, even hands-free"].map(l => (
          <div key={l} className="row" style={{ alignItems: "flex-start", padding: "6px 0" }}><BookOpenCheck size={17} color="var(--mint)" style={{ flexShrink: 0, marginTop: 2 }} /><span>{l}</span></div>
        ))}
      </div>
      <div className="card pad section row" style={{ alignItems: "flex-start", gap: 12, background: "var(--brand-soft)", borderColor: "transparent" }}>
        <ShieldCheck size={20} color="var(--brand-ink)" style={{ flexShrink: 0 }} />
        <div style={{ fontSize: 14.5 }}>This class helps you learn and practise. It cannot promise you a job. Every company has its own rulebook, so always follow the guidelines of the project you join.</div>
      </div>
      <div className="faint" style={{ fontSize: 13, marginTop: 16, textAlign: "center" }}>Version 2.0 · Made by Nenfot Gurumka · <a href={`mailto:${SUPPORT_EMAIL}`} style={{ color: "var(--brand-ink)" }}>{SUPPORT_EMAIL}</a></div>
    </div>
  );
}
