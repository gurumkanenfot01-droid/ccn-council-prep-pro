import { useState } from "react";
import { Stethoscope, ChevronLeft, PlayCircle, CheckCircle2 } from "lucide-react";
import { Card, Button, SectionHeader, useApp } from "../ui/kit.jsx";
import { OSCE_PROCEDURES } from "../data/osceProcedures.js";
import { OsceDiagram } from "../data/osceDiagrams.jsx";
import { QUESTION_BANK } from "../App.jsx";

// Maps procedure slug -> substring to match against question "topic" (e.g. "OSCE: BLS / CPR")
const TOPIC_MATCH = {
  "bls-cpr": "bls / cpr",
  "syringe-pump": "syringe pump",
  "et-intubation": "endotracheal intubation",
  "central-line": "central line",
  "ett-care": "ett suctioning",
  "tracheostomy-care": "tracheostomy care",
  "opa-suctioning": "opa & suctioning",
  "oxygen-therapy": "oxygen therapy",
  "pain-assessment": "pain assessment",
  "pefr": "pefr",
  "pressure-ulcer-prevention": "pressure ulcer prevention",
};

function ProcedureList({ onSelect }) {
  const { t } = useApp();
  return (
    <div className="fade-in">
      <SectionHeader icon={Stethoscope} title="OSCE Procedure Prep" />
      <Card style={{ padding: "14px 18px", marginBottom: 20, background: t.navySoft, border: `1px solid ${t.navy}22` }}>
        <div style={{ fontSize: 13, color: t.textMuted, lineHeight: 1.5 }}>
          Step-by-step guides for {OSCE_PROCEDURES.length} OSCE procedures, built from real checklists — with marks per step, why each step matters, key diagrams, and linked practice questions.
        </div>
      </Card>
      <div style={{ display: "grid", gridTemplateColumns: "repeat(auto-fill, minmax(220px, 1fr))", gap: 14 }}>
        {OSCE_PROCEDURES.map(p => {
          const stepCount = p.sections.reduce((n, s) => n + s.steps.length, 0);
          return (
            <Card key={p.slug} hover onClick={() => onSelect(p)} style={{ padding: 20 }}>
              <div style={{ fontSize: 11, fontWeight: 700, color: t.navy, textTransform: "uppercase", letterSpacing: 0.5, marginBottom: 6 }}>{p.category}</div>
              <div style={{ fontSize: 15, fontWeight: 700, color: t.text, marginBottom: 8, lineHeight: 1.3 }}>{p.title}</div>
              <div style={{ fontSize: 12.5, color: t.textFaint }}>{stepCount} steps &middot; {p.totalMarks} marks</div>
            </Card>
          );
        })}
      </div>
    </div>
  );
}

function ProcedureDetail({ proc, onBack, startQuiz }) {
  const { t } = useApp();
  const matchStr = TOPIC_MATCH[proc.slug] || proc.slug;
  const practiceQs = QUESTION_BANK.filter(q => q.category === "OSCE Practice" && q.topic && q.topic.toLowerCase().includes(matchStr));

  function practiceThis() {
    const ids = practiceQs.length ? practiceQs.map(q => q.id) : QUESTION_BANK.filter(q => q.category === "OSCE Practice").map(q => q.id);
    startQuiz({ count: Math.min(15, ids.length), category: `OSCE: ${proc.title}`, idPool: ids });
  }

  return (
    <div className="fade-in">
      <button onClick={onBack} className="press" style={{ display: "flex", alignItems: "center", gap: 6, background: "none", border: "none", cursor: "pointer", color: t.navy, fontWeight: 700, fontSize: 13, marginBottom: 14, padding: 0 }}>
        <ChevronLeft size={16} /> All Procedures
      </button>

      <div style={{ fontSize: 11, fontWeight: 700, color: t.navy, textTransform: "uppercase", letterSpacing: 0.5, marginBottom: 4 }}>{proc.category}</div>
      <div className="f-serif" style={{ fontSize: 21, fontWeight: 700, color: t.text, marginBottom: 6 }}>{proc.title}</div>
      <div style={{ fontSize: 12, color: t.textFaint, marginBottom: 16 }}>{proc.totalMarks} total marks &middot; Source: {proc.source}</div>

      {proc.scenario && (
        <Card style={{ padding: 16, marginBottom: 18, background: t.navySoft, border: `1px solid ${t.navy}22` }}>
          <div style={{ fontSize: 11, fontWeight: 700, color: t.navy, textTransform: "uppercase", letterSpacing: 0.5, marginBottom: 6 }}>Example Exam Scenario</div>
          <div style={{ fontSize: 13, color: t.text, lineHeight: 1.5 }}>{proc.scenario}</div>
        </Card>
      )}

      {(proc.diagramIds || []).length > 0 && (
        <Card style={{ padding: 16, marginBottom: 18 }}>
          <div style={{ fontSize: 11, fontWeight: 700, color: t.textMuted, textTransform: "uppercase", letterSpacing: 0.5, marginBottom: 10 }}>Key Diagrams</div>
          <div style={{ display: "grid", gridTemplateColumns: "repeat(auto-fit, minmax(160px, 1fr))", gap: 16 }}>
            {proc.diagramIds.map(id => (
              <div key={id} style={{ background: t.bgAlt, borderRadius: 10, padding: 10, border: `1px solid ${t.cardBorder}` }}>
                <OsceDiagram id={id} theme={t} />
              </div>
            ))}
          </div>
        </Card>
      )}

      {proc.sections.map((section, si) => (
        <Card key={si} style={{ padding: 18, marginBottom: 14 }}>
          <div style={{ fontSize: 13.5, fontWeight: 700, color: t.navy, marginBottom: 12 }}>{section.label}</div>
          {section.steps.map((step, i) => (
            <div key={i} style={{ display: "flex", gap: 12, padding: "10px 0", borderTop: i > 0 ? `1px solid ${t.cardBorder}` : "none" }}>
              <div style={{ flexShrink: 0, width: 26, height: 26, borderRadius: "50%", background: t.navySoft, color: t.navy, fontSize: 11, fontWeight: 800, display: "flex", alignItems: "center", justifyContent: "center" }}>{step.no}</div>
              <div style={{ flex: 1 }}>
                <div style={{ display: "flex", justifyContent: "space-between", gap: 8, marginBottom: 4 }}>
                  <div style={{ fontSize: 13.5, fontWeight: 600, color: t.text, lineHeight: 1.4 }}>{step.activity}</div>
                  <div className="f-mono" style={{ flexShrink: 0, fontSize: 11.5, fontWeight: 700, color: t.emerald || t.navy, background: t.bgAlt, borderRadius: 6, padding: "2px 8px", height: "fit-content" }}>{step.marks}pt</div>
                </div>
                <div style={{ fontSize: 12, color: t.textFaint, lineHeight: 1.45 }}>{step.explanation}</div>
                {step.diagramId && (
                  <div style={{ marginTop: 10, background: t.bgAlt, borderRadius: 10, padding: 10, border: `1px solid ${t.cardBorder}`, maxWidth: 320 }}>
                    <OsceDiagram id={step.diagramId} theme={t} />
                  </div>
                )}
              </div>
            </div>
          ))}
        </Card>
      ))}

      <Card style={{ padding: 18, marginTop: 6 }}>
        <div style={{ display: "flex", alignItems: "center", gap: 8, marginBottom: 10 }}>
          <CheckCircle2 size={16} color={t.navy} />
          <div style={{ fontSize: 13.5, fontWeight: 700, color: t.text }}>Practice Questions for this Procedure</div>
        </div>
        <div style={{ fontSize: 12.5, color: t.textFaint, marginBottom: 14 }}>
          {practiceQs.length > 0 ? `${practiceQs.length} questions tied directly to this procedure.` : "No procedure-specific questions yet — practice from the full OSCE bank instead."}
        </div>
        <Button full variant="accent" icon={PlayCircle} onClick={practiceThis}>Practice Now</Button>
      </Card>
    </div>
  );
}

export default function OSCEScreen({ startQuiz }) {
  const [selected, setSelected] = useState(null);
  if (selected) return <ProcedureDetail proc={selected} onBack={() => setSelected(null)} startQuiz={startQuiz} />;
  return <ProcedureList onSelect={setSelected} />;
}
