import { CheckCircle2, HelpCircle, KeyRound, Lightbulb } from "lucide-react";
import { useApp } from "./kit.jsx";
import { InfoBox } from "./extra.jsx";
import { ListenButton } from "../lib/reader.jsx";
import { explainSpeech } from "../lib/quiz.js";

// The answer block every task shows after you answer: the model answer, "Why
// (explained simply)", the key word and its meaning, and a one-line rule.
export function Explanation({ q, showAnswer = true, listenId }) {
  const { t } = useApp();
  return (
    <div style={{ display: "flex", flexDirection: "column", gap: 10 }}>
      {showAnswer && (
        <InfoBox icon={CheckCircle2} title="The answer" color={t.emerald} bg={t.emeraldSoft}
          action={<ListenButton text={explainSpeech(q)} id={listenId || `exp-${q.id}`} />}>
          {q.ans}
        </InfoBox>
      )}
      <InfoBox icon={HelpCircle} title="Why (explained simply)" color={t.navy} bg={t.navySoft}
        action={!showAnswer ? <ListenButton text={explainSpeech(q).slice(1)} id={listenId || `exp-${q.id}`} /> : null}>
        {q.why}
      </InfoBox>
      <InfoBox icon={KeyRound} title="Key word" color={t.amber} bg={t.amberSoft}>
        <strong>{q.kw}</strong> — {q.km}
      </InfoBox>
      <div style={{ display: "flex", gap: 8, alignItems: "flex-start", fontSize: 13.5, color: t.text, padding: "2px 4px" }}>
        <Lightbulb size={16} color={t.amber} style={{ flexShrink: 0, marginTop: 2 }} />
        <div><strong>Remember:</strong> {q.simple}</div>
      </div>
    </div>
  );
}

// The situation box shown above every task / question.
export function Situation({ q, fontSize = 14.5 }) {
  const { t } = useApp();
  return (
    <div style={{ background: t.bgAlt, border: `1px solid ${t.cardBorder}`, borderLeft: `4px solid ${t.navy}`, borderRadius: 10, padding: "12px 14px", fontSize, lineHeight: 1.6, color: t.text }}>
      <div style={{ fontSize: 11, fontWeight: 800, color: t.navy, textTransform: "uppercase", letterSpacing: 0.5, marginBottom: 4 }}>Situation</div>
      {q.sit}
    </div>
  );
}
