import { Info, Mail, ShieldCheck, Sparkles, BookOpenCheck, Code2 } from "lucide-react";
import { Card, SectionHeader, useApp } from "../ui/kit.jsx";
import { QUESTION_BANK, CATEGORY_LIST } from "../App.jsx";

const APP_VERSION = "1.0.0";
const DEVELOPER_NAME = "[Your Name]";
const CONTACT_EMAIL = "gurumkanenfot01@gmail.com";

function Row({ label, value }) {
  const { t } = useApp();
  return (
    <div style={{ display: "flex", justifyContent: "space-between", gap: 10, padding: "9px 0", borderTop: `1px solid ${t.cardBorder}` }}>
      <div style={{ fontSize: 12.5, color: t.textFaint }}>{label}</div>
      <div style={{ fontSize: 12.5, fontWeight: 700, color: t.text, textAlign: "right" }}>{value}</div>
    </div>
  );
}

export default function AboutScreen() {
  const { t } = useApp();
  return (
    <div className="fade-in">
      <SectionHeader icon={Info} title="About / Developer" />

      <Card style={{ padding: 20, marginBottom: 16, textAlign: "center" }}>
        <div style={{ fontSize: 11, fontWeight: 700, color: t.navy, textTransform: "uppercase", letterSpacing: 0.6, marginBottom: 6 }}>CCN Council Prep Pro</div>
        <div style={{ fontSize: 13, color: t.textMuted, lineHeight: 1.5, maxWidth: 420, margin: "0 auto" }}>
          An exam-prep companion for the Critical Care Nursing Council examination — mock papers, category quizzes,
          OSCE procedure walkthroughs, viva instrument prep, and study notes, all in one place.
        </div>
      </Card>

      <Card style={{ padding: 18, marginBottom: 16 }}>
        <div style={{ fontSize: 13, fontWeight: 700, color: t.navy, marginBottom: 4 }}>App Info</div>
        <Row label="Version" value={APP_VERSION} />
        <Row label="Question bank" value={`${QUESTION_BANK.length.toLocaleString()} questions`} />
        <Row label="Categories" value={CATEGORY_LIST.length} />
      </Card>

      <Card style={{ padding: 18, marginBottom: 16 }}>
        <div style={{ display: "flex", alignItems: "center", gap: 8, marginBottom: 10 }}>
          <Code2 size={16} color={t.navy} />
          <div style={{ fontSize: 13, fontWeight: 700, color: t.text }}>Developer</div>
        </div>
        <div style={{ fontSize: 13, color: t.textMuted, lineHeight: 1.6 }}>
          Built and maintained by <strong style={{ color: t.text }}>{DEVELOPER_NAME}</strong> for the CCN Council Prep community.
        </div>
        <div style={{ display: "flex", alignItems: "center", gap: 8, marginTop: 10 }}>
          <Mail size={14} color={t.textFaint} />
          <a href={`mailto:${CONTACT_EMAIL}`} style={{ fontSize: 12.5, color: t.navy, fontWeight: 700, textDecoration: "none" }}>{CONTACT_EMAIL}</a>
        </div>
        <div style={{ fontSize: 11.5, color: t.textFaint, marginTop: 8 }}>
          Found a wrong answer, a bug, or have a feature idea? Reach out — this app improves from real feedback.
        </div>
      </Card>

      <Card style={{ padding: 18, marginBottom: 16, background: t.navySoft, border: `1px solid ${t.navy}22` }}>
        <div style={{ display: "flex", alignItems: "center", gap: 8, marginBottom: 8 }}>
          <ShieldCheck size={16} color={t.navy} />
          <div style={{ fontSize: 13, fontWeight: 700, color: t.text }}>A Note on the Content</div>
        </div>
        <div style={{ fontSize: 12.5, color: t.textMuted, lineHeight: 1.6 }}>
          This bank mixes real past-exam and checklist material (clearly credited in each question's source) with
          AI-generated practice questions written to mirror the curriculum. AI-generated questions are labeled as
          such. No question bank — including this one — can guarantee exam results; use it to build understanding
          and identify weak spots, not as a substitute for your coursework.
        </div>
      </Card>

      <Card style={{ padding: 18 }}>
        <div style={{ display: "flex", alignItems: "center", gap: 8, marginBottom: 10 }}>
          <Sparkles size={16} color={t.navy} />
          <div style={{ fontSize: 13, fontWeight: 700, color: t.text }}>What's Inside</div>
        </div>
        {[
          "Paper 1 / Paper 2 full mock exams, weighted across the whole curriculum",
          "Category-by-category practice with instant explanations",
          "OSCE Prep — step-by-step procedures with marks and diagrams",
          "Viva / Instruments — labeled diagrams and key facts for identification stations",
          "Study Notes, Bookmarks, Wrong-Answer review, Daily Challenge, and a Leaderboard",
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
