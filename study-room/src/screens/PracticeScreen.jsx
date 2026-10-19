import { useEffect, useState } from "react";
import { AlertTriangle, ArrowRight, CheckCircle2, XCircle, Clock, Flag } from "lucide-react";
import { CameraView, SoundMeter, FacePill, MicPill, fmtTime } from "../ui.jsx";

const LETTERS = ["A", "B", "C", "D"];

export default function PracticeScreen({ questions, category, monitor, onFinish }) {
  const [idx, setIdx] = useState(0);
  const [answers, setAnswers] = useState({}); // question id -> chosen option index
  const [startedAt] = useState(() => Date.now());
  const [now, setNow] = useState(() => Date.now());
  const [toast, setToast] = useState(null);

  // Warnings only count while this screen is open.
  useEffect(() => { monitor.beginWatching(); }, []); // eslint-disable-line react-hooks/exhaustive-deps

  useEffect(() => {
    const t = setInterval(() => setNow(Date.now()), 1000);
    return () => clearInterval(t);
  }, []);

  // Show each new warning for a few seconds.
  useEffect(() => {
    if (!monitor.latest) return;
    setToast(monitor.latest);
    const t = setTimeout(() => setToast(null), 4000);
    return () => clearTimeout(t);
  }, [monitor.latest]);

  const q = questions[idx];
  const chosen = answers[q.id];
  const answered = chosen !== undefined;
  const isLast = idx === questions.length - 1;
  const correctSoFar = questions.filter(x => answers[x.id] === x.ansIdx).length;
  const answeredCount = Object.keys(answers).length;

  function finish() {
    const { awaySeconds } = monitor.endWatching();
    onFinish({
      questions, answers, category,
      seconds: Math.round((Date.now() - startedAt) / 1000),
      events: monitor.events, awaySeconds,
    });
  }

  function endEarly() {
    if (confirm(`End the session now? You've answered ${answeredCount} of ${questions.length} questions.`)) finish();
  }

  return (
    <main className="wrap">
      <header className="topbar">
        <div style={{ display: "flex", alignItems: "center", gap: 10, flexWrap: "wrap" }}>
          <strong style={{ fontVariantNumeric: "tabular-nums" }}>Question {idx + 1} / {questions.length}</strong>
          <span className="pill pill-off"><Clock size={13} /> {fmtTime((now - startedAt) / 1000)}</span>
          <span className="pill pill-ok"><CheckCircle2 size={13} /> {correctSoFar} correct</span>
        </div>
        <button className="btn btn-ghost btn-sm" onClick={endEarly}><Flag size={14} /> End session</button>
      </header>

      <div className="meter" style={{ marginBottom: 16 }} aria-hidden="true">
        <span style={{ width: `${(answeredCount / questions.length) * 100}%`, background: "var(--navy)" }} />
      </div>

      <div className="session">
        <section className="card" aria-live="polite">
          <div className="faint" style={{ fontSize: 12.5, fontWeight: 700, textTransform: "uppercase", letterSpacing: "0.04em", marginBottom: 8 }}>
            {q.categoryIcon} {q.category}
          </div>
          <h2 style={{ fontSize: 18, lineHeight: 1.45, margin: "0 0 16px" }}>{q.q}</h2>

          <div style={{ display: "flex", flexDirection: "column", gap: 10 }}>
            {q.opts.map((opt, i) => {
              const state = !answered ? "" : i === q.ansIdx ? "correct" : i === chosen ? "wrong" : "";
              return (
                <button key={i} className={`option ${state}`} disabled={answered}
                  onClick={() => setAnswers(a => ({ ...a, [q.id]: i }))}>
                  <span className="letter">{LETTERS[i]}</span>
                  <span style={{ flex: 1 }}>{opt}</span>
                  {state === "correct" && <CheckCircle2 size={18} color="var(--emerald)" />}
                  {state === "wrong" && <XCircle size={18} color="var(--red)" />}
                </button>
              );
            })}
          </div>

          {answered && (
            <div style={{ marginTop: 16, padding: 14, borderRadius: 12, background: chosen === q.ansIdx ? "var(--emerald-soft)" : "var(--red-soft)" }}>
              <strong style={{ color: chosen === q.ansIdx ? "var(--emerald)" : "var(--red)" }}>
                {chosen === q.ansIdx ? "Correct!" : `Not quite — the answer is ${LETTERS[q.ansIdx]}.`}
              </strong>
              {q.exp && <p style={{ margin: "6px 0 0", fontSize: 14 }}>{q.exp}</p>}
            </div>
          )}

          <div style={{ display: "flex", justifyContent: "flex-end", marginTop: 16 }}>
            <button className={`btn ${isLast ? "btn-success" : "btn-primary"}`} disabled={!answered}
              onClick={() => (isLast ? finish() : setIdx(i => i + 1))}>
              {isLast ? "Finish & see results" : "Next question"} <ArrowRight size={16} />
            </button>
          </div>
        </section>

        <aside className="monitor card" style={{ padding: 12 }} aria-label="Focus monitor">
          <CameraView stream={monitor.videoStream} status={monitor.camera} live />
          <div className="monitor-info" style={{ display: "flex", flexDirection: "column", gap: 8 }}>
            <div className="chip-row" style={{ gap: 6 }}>
              <FacePill face={monitor.face} faceModel={monitor.faceModel} camera={monitor.camera} />
              <MicPill mic={monitor.mic} noisy={monitor.noisy} />
            </div>
            {monitor.mic === "on" && <SoundMeter level={monitor.level} noisy={monitor.noisy} />}
            <div style={{ fontSize: 13, display: "flex", alignItems: "center", gap: 6 }}>
              <AlertTriangle size={14} color={monitor.events.length ? "var(--amber)" : "var(--faint)"} />
              <span className={monitor.events.length ? "" : "muted"}>
                {monitor.events.length === 0 ? "No warnings — great focus" : `${monitor.events.length} warning${monitor.events.length === 1 ? "" : "s"}`}
              </span>
            </div>
          </div>
        </aside>
      </div>

      {toast && (
        <div className="toast" role="alert" key={toast.n}>
          <AlertTriangle size={16} /> {toast.label}
        </div>
      )}
    </main>
  );
}
