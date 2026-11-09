import { useEffect, useState } from "react";
import { Layers, MessageCircle } from "lucide-react";
import { api } from "../lib/api.js";
import { ADMIN_WHATSAPP } from "./StudentApp.jsx";

// Council: tells the student how many of the questions they will get,
// based on what they paid. Hidden on a database without the update.
const NAMES = { 100: "Full questions", 80: "80% of the questions", 75: "Three quarters of the questions", 50: "Half of the questions", 25: "A quarter of the questions" };

export default function PlanCard({ code, name }) {
  const [share, setShare] = useState(null);
  useEffect(() => {
    api.myPlan(code).then(r => { if (r && r.share) setShare(Number(r.share)); });
  }, [code]);
  if (!share) return null;
  const full = share >= 100;
  return (
    <section className={`card plan-card${full ? " full" : ""}`}>
      <div className="row" style={{ gap: 12, alignItems: "flex-start" }}>
        <span className="plan-pct">{share}%</span>
        <div style={{ flex: 1, minWidth: 0 }}>
          <strong>Your plan: {NAMES[share] || `${share}% of the questions`}</strong>
          <p className="muted" style={{ margin: "4px 0 0", fontSize: 13.5 }}>
            {full
              ? "You will get every question in Paper 1, Paper 2 and the OSCE."
              : `In Paper 1, Paper 2 and the OSCE you will get ${share}% of the questions a full-paying student gets. Each paper shows your number of questions once it is loaded.`}
          </p>
          {!full && (
            <a className="btn btn-sm btn-success" style={{ marginTop: 8 }} target="_blank" rel="noreferrer"
              href={`https://wa.me/${ADMIN_WHATSAPP}?text=${encodeURIComponent(`Hello, I want to complete my payment for full Council Exams questions. My name is ${name}.`)}`}>
              <MessageCircle size={14} /> Pay the balance for full questions
            </a>
          )}
        </div>
        <Layers size={18} className="faint" />
      </div>
    </section>
  );
}
