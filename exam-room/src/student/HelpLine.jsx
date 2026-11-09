import { MessageCircle, Phone } from "lucide-react";
import { ADMIN_WHATSAPP, ADMIN_WHATSAPP_DISPLAY } from "./StudentApp.jsx";

// The administrator's WhatsApp number, on the student's screens, for any
// problem with an exam. During an exam, opening WhatsApp leaves the exam
// screen (a warning), so the student is asked first and told they can use
// another phone instead.
export default function HelpLine({ name = "", inExam = false, compact = false }) {
  const text = `Hello, I have a problem with my exam. My name is ${name}.`;
  const href = `https://wa.me/${ADMIN_WHATSAPP}?text=${encodeURIComponent(text)}`;
  function open(e) {
    if (inExam && !window.confirm("Opening WhatsApp leaves the exam screen and counts as a warning.\n\nIf you can, message from another phone instead.\n\nOpen WhatsApp now?")) e.preventDefault();
  }
  return (
    <div className={`helpline${compact ? " compact" : ""}`} role="note">
      <Phone size={compact ? 14 : 16} />
      <span>
        {inExam ? "Problem with your exam? " : "Problem with your exam or code? "}
        WhatsApp the administrator: <strong className="num">{ADMIN_WHATSAPP_DISPLAY}</strong>
        {inExam && <span className="faint"> (use another phone if you can)</span>}
      </span>
      <a className="btn btn-sm btn-success" href={href} target="_blank" rel="noreferrer" onClick={open}><MessageCircle size={14} /> Chat</a>
    </div>
  );
}
