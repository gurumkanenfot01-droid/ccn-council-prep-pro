import { LifeBuoy, MessageCircle, Mail, HelpCircle, Clock, Info, ShieldCheck, Sparkles, BookOpenCheck, Code2 } from "lucide-react";
import { Card, SectionHeader, useApp } from "../ui/kit.jsx";
import { COURSE, ROLES, SKILLS, TASKS, GLOSSARY } from "../data/course.js";

// Same Customer Care contacts as the CCN app.
const WHATSAPP_NUMBER = "2349031853995";
const WHATSAPP_DISPLAY = "+234 903 185 3995";
const SUPPORT_EMAIL = "gurumkanenfot01@gmail.com";
const APP_VERSION = "1.0.0";
const DEVELOPER_NAME = "Nenfot Gurumka";

const FAQS = [
  { q: "Where is my progress saved?", a: "On this phone or computer. You do not need an account. If you clear your browser data or use another phone, your progress will not be there." },
  { q: "The AI Reader does not talk", a: "Turn up your volume and check silent mode. Go to Profile and tap \"Test the voice\". If there is still no sound, try Chrome (Android) or Safari (iPhone)." },
  { q: "Can I use the app with no internet?", a: "Yes. Open it once with internet. After that, lessons, tasks, tests and the AI Reader work offline on most phones." },
  { q: "I found a mistake in a task", a: "Send us the skill name and task number on WhatsApp or by email. Every report helps make the class better." },
];

export function SupportScreen() {
  const { t } = useApp();
  const waHref = `https://wa.me/${WHATSAPP_NUMBER}?text=${encodeURIComponent("Hi, I need help with the AI Trainer Class app.")}`;
  return (
    <div className="fade-in">
      <SectionHeader icon={LifeBuoy} title="Customer Care" />
      <Card style={{ padding: 18, marginBottom: 16 }}>
        <div style={{ fontSize: 13, color: t.textMuted, lineHeight: 1.6 }}>
          Do you have a question, a problem, or did you find a mistake? Send us a message. We will answer as soon as we can.
        </div>
      </Card>

      <a href={waHref} target="_blank" rel="noopener noreferrer" style={{ textDecoration: "none" }}>
        <Card style={{ padding: 18, marginBottom: 14, display: "flex", alignItems: "center", gap: 14, background: t.navySoft, border: `1px solid ${t.navy}22` }}>
          <div style={{ width: 44, height: 44, borderRadius: 12, background: "#25D366", display: "flex", alignItems: "center", justifyContent: "center", flexShrink: 0 }}>
            <MessageCircle size={22} color="#fff" />
          </div>
          <div>
            <div style={{ fontSize: 11.5, fontWeight: 700, color: t.textFaint, textTransform: "uppercase", letterSpacing: 0.4 }}>WhatsApp</div>
            <div style={{ fontSize: 15, fontWeight: 700, color: t.text }}>{WHATSAPP_DISPLAY}</div>
          </div>
        </Card>
      </a>

      <a href={`mailto:${SUPPORT_EMAIL}`} style={{ textDecoration: "none" }}>
        <Card style={{ padding: 18, marginBottom: 20, display: "flex", alignItems: "center", gap: 14 }}>
          <div style={{ width: 44, height: 44, borderRadius: 12, background: t.navy, display: "flex", alignItems: "center", justifyContent: "center", flexShrink: 0 }}>
            <Mail size={20} color="#fff" />
          </div>
          <div>
            <div style={{ fontSize: 11.5, fontWeight: 700, color: t.textFaint, textTransform: "uppercase", letterSpacing: 0.4 }}>Email</div>
            <div style={{ fontSize: 14.5, fontWeight: 700, color: t.text }}>{SUPPORT_EMAIL}</div>
          </div>
        </Card>
      </a>

      <Card style={{ padding: "12px 16px", marginBottom: 20, display: "flex", alignItems: "center", gap: 10 }}>
        <Clock size={14} color={t.textFaint} />
        <div style={{ fontSize: 12, color: t.textFaint }}>We usually answer within 24 hours</div>
      </Card>

      <Card style={{ padding: 18 }}>
        <div style={{ display: "flex", alignItems: "center", gap: 8, marginBottom: 12 }}>
          <HelpCircle size={16} color={t.navy} />
          <div style={{ fontSize: 13, fontWeight: 700, color: t.text }}>Common Questions</div>
        </div>
        {FAQS.map((f, i) => (
          <div key={i} style={{ padding: "10px 0", borderTop: i > 0 ? `1px solid ${t.cardBorder}` : "none" }}>
            <div style={{ fontSize: 12.5, fontWeight: 700, color: t.text, marginBottom: 4 }}>{f.q}</div>
            <div style={{ fontSize: 12, color: t.textMuted, lineHeight: 1.5 }}>{f.a}</div>
          </div>
        ))}
      </Card>
    </div>
  );
}

function Row({ label, value }) {
  const { t } = useApp();
  return (
    <div style={{ display: "flex", justifyContent: "space-between", gap: 10, padding: "9px 0", borderTop: `1px solid ${t.cardBorder}` }}>
      <div style={{ fontSize: 12.5, color: t.textFaint }}>{label}</div>
      <div style={{ fontSize: 12.5, fontWeight: 700, color: t.text, textAlign: "right" }}>{value}</div>
    </div>
  );
}

export function AboutScreen() {
  const { t } = useApp();
  return (
    <div className="fade-in">
      <SectionHeader icon={Info} title="About" />
      <Card style={{ padding: 20, marginBottom: 16, textAlign: "center" }}>
        <div style={{ fontSize: 11, fontWeight: 700, color: t.navy, textTransform: "uppercase", letterSpacing: 0.6, marginBottom: 6 }}>AI Trainer Class</div>
        <div style={{ fontSize: 13, color: t.textMuted, lineHeight: 1.5, maxWidth: 440, margin: "0 auto" }}>
          {COURSE.title}. Learn the skills that AI companies look for, in very simple English. Read the lessons, do the practice tasks, take tests and track your progress. The AI Reader can read everything to you.
        </div>
      </Card>

      <Card style={{ padding: 18, marginBottom: 16 }}>
        <div style={{ fontSize: 13, fontWeight: 700, color: t.navy, marginBottom: 4 }}>In This Class</div>
        <Row label="Version" value={APP_VERSION} />
        <Row label="Roles" value={ROLES.map(r => r.short).join(" + ")} />
        <Row label="Skills (lessons)" value={SKILLS.length} />
        <Row label="Practice tasks" value={TASKS.length} />
        <Row label="Worked examples" value={SKILLS.reduce((n, s) => n + s.examples.length, 0)} />
        <Row label="Key words" value={GLOSSARY.length} />
      </Card>

      <Card style={{ padding: 18, marginBottom: 16 }}>
        <div style={{ display: "flex", alignItems: "center", gap: 8, marginBottom: 10 }}>
          <Code2 size={16} color={t.navy} />
          <div style={{ fontSize: 13, fontWeight: 700, color: t.text }}>Made by</div>
        </div>
        <div style={{ fontSize: 13, color: t.textMuted, lineHeight: 1.6 }}>
          Built by <strong style={{ color: t.text }}>{DEVELOPER_NAME}</strong>, the maker of CCN Council Prep Pro. This app uses the same design.
        </div>
        <div style={{ display: "flex", alignItems: "center", gap: 8, marginTop: 10 }}>
          <Mail size={14} color={t.textFaint} />
          <a href={`mailto:${SUPPORT_EMAIL}`} style={{ fontSize: 12.5, color: t.navy, fontWeight: 700, textDecoration: "none" }}>{SUPPORT_EMAIL}</a>
        </div>
      </Card>

      <Card style={{ padding: 18, marginBottom: 16, background: t.navySoft, border: `1px solid ${t.navy}22` }}>
        <div style={{ display: "flex", alignItems: "center", gap: 8, marginBottom: 8 }}>
          <ShieldCheck size={16} color={t.navy} />
          <div style={{ fontSize: 13, fontWeight: 700, color: t.text }}>Please note</div>
        </div>
        <div style={{ fontSize: 12.5, color: t.textMuted, lineHeight: 1.6 }}>
          This class helps you learn and practise. It cannot promise you a job. Every company has its own rulebook, so always read and follow the guidelines of the project you join.
        </div>
      </Card>

      <Card style={{ padding: 18 }}>
        <div style={{ display: "flex", alignItems: "center", gap: 8, marginBottom: 10 }}>
          <Sparkles size={16} color={t.navy} />
          <div style={{ fontSize: 13, fontWeight: 700, color: t.text }}>What's inside</div>
        </div>
        {[
          "18 simple lessons with pictures, key words, steps, examples and common mistakes",
          "360 practice tasks, each with \"Why (explained simply)\" and a key word",
          "Practice Tests, Role Tests, a Daily Challenge and Random Tasks",
          "Progress for every skill, test scores, badges and a study streak",
          "AI Reader that reads lessons, tasks and answers out loud",
          "Flashcards, Key Words, Bookmarks, Wrong Answers and a Leaderboard",
        ].map((line, i) => (
          <div key={i} style={{ display: "flex", gap: 10, padding: "7px 0", borderTop: i > 0 ? `1px solid ${t.cardBorder}` : "none" }}>
            <BookOpenCheck size={14} color={t.textFaint} style={{ flexShrink: 0, marginTop: 2 }} />
            <div style={{ fontSize: 12.5, color: t.text, lineHeight: 1.5 }}>{line}</div>
          </div>
        ))}
      </Card>
    </div>
  );
}
