import { useMemo } from "react";
import { RotateCcw, ShieldCheck, AlertTriangle, CheckCircle2, XCircle } from "lucide-react";
import { EVENT_LABELS } from "../lib/monitor.js";
import { fmtTime, focusScore, focusLabel } from "../ui.jsx";

const LETTERS = ["A", "B", "C", "D"];

export default function ResultScreen({ result, onAgain }) {
  const { questions, answers, seconds, events, awaySeconds } = result;
  const answered = questions.filter(q => answers[q.id] !== undefined);
  const correct = answered.filter(q => answers[q.id] === q.ansIdx).length;
  const pct = answered.length ? Math.round((correct / answered.length) * 100) : 0;
  const focus = focusScore(events);
  const wrong = answered.filter(q => answers[q.id] !== q.ansIdx);

  const byType = useMemo(() => {
    const m = new Map();
    events.forEach(e => m.set(e.type, (m.get(e.type) || 0) + 1));
    return [...m.entries()].sort((a, b) => b[1] - a[1]);
  }, [events]);

  return (
    <main className="wrap">
      <h1 className="serif" style={{ fontSize: 26, margin: "0 0 4px" }}>Session complete</h1>
      <p className="muted" style={{ margin: "0 0 18px" }}>
        Your camera and microphone are now off.
      </p>

      <div className="stat-grid" style={{ marginBottom: 16 }}>
        <div className="stat">
          <div className="num" style={{ color: pct >= 60 ? "var(--emerald)" : "var(--red)" }}>{pct}%</div>
          <div className="lbl">Score · {correct} of {answered.length} correct</div>
        </div>
        <div className="stat">
          <div className="num" style={{ color: focus >= 70 ? "var(--emerald)" : focus >= 50 ? "var(--amber)" : "var(--red)" }}>{focus}</div>
          <div className="lbl">Focus score · {focusLabel(focus)}</div>
        </div>
        <div className="stat">
          <div className="num">{fmtTime(seconds)}</div>
          <div className="lbl">Time studied</div>
        </div>
        <div className="stat">
          <div className="num">{events.length}</div>
          <div className="lbl">Warnings{awaySeconds ? ` · ${fmtTime(awaySeconds)} off screen` : ""}</div>
        </div>
      </div>

      <section className="card" style={{ marginBottom: 16 }} aria-labelledby="focus-h">
        <h2 id="focus-h" style={{ fontSize: 16, margin: "0 0 10px", display: "flex", alignItems: "center", gap: 8 }}>
          {events.length ? <AlertTriangle size={17} color="var(--amber)" /> : <ShieldCheck size={17} color="var(--emerald)" />}
          Focus report
        </h2>
        {events.length === 0 ? (
          <p className="muted" style={{ margin: 0 }}>No warnings. You stayed in view, kept your surroundings quiet and didn’t leave the screen.</p>
        ) : (
          <>
            <div className="chip-row" style={{ marginBottom: 12, gap: 6 }}>
              {byType.map(([type, n]) => (
                <span key={type} className="pill pill-warn">{EVENT_LABELS[type]} × {n}</span>
              ))}
            </div>
            <ul className="list" style={{ maxHeight: 220, overflowY: "auto" }}>
              {events.map((e, i) => (
                <li key={i} style={{ fontSize: 13.5, display: "flex", gap: 10 }}>
                  <span className="faint" style={{ fontVariantNumeric: "tabular-nums", minWidth: 44 }}>{fmtTime(e.at)}</span>
                  <span>{e.label}</span>
                </li>
              ))}
            </ul>
          </>
        )}
      </section>

      {wrong.length > 0 && (
        <section className="card" style={{ marginBottom: 16 }} aria-labelledby="review-h">
          <h2 id="review-h" style={{ fontSize: 16, margin: "0 0 10px" }}>Review your {wrong.length} wrong answer{wrong.length === 1 ? "" : "s"}</h2>
          <ul className="list" style={{ gap: 14 }}>
            {wrong.map(q => (
              <li key={q.id} style={{ borderTop: "1px solid var(--border)", paddingTop: 12 }}>
                <div style={{ fontWeight: 700, marginBottom: 6 }}>{q.q}</div>
                <div style={{ fontSize: 14, display: "flex", gap: 6, alignItems: "flex-start", color: "var(--red)" }}>
                  <XCircle size={16} style={{ flex: "none", marginTop: 2 }} /> Your answer: {LETTERS[answers[q.id]]}. {q.opts[answers[q.id]]}
                </div>
                <div style={{ fontSize: 14, display: "flex", gap: 6, alignItems: "flex-start", color: "var(--emerald)" }}>
                  <CheckCircle2 size={16} style={{ flex: "none", marginTop: 2 }} /> Correct: {LETTERS[q.ansIdx]}. {q.opts[q.ansIdx]}
                </div>
                {q.exp && <p className="muted" style={{ fontSize: 13.5, margin: "6px 0 0" }}>{q.exp}</p>}
              </li>
            ))}
          </ul>
        </section>
      )}

      <button className="btn btn-primary btn-full" onClick={onAgain}><RotateCcw size={16} /> Practise again</button>
    </main>
  );
}
