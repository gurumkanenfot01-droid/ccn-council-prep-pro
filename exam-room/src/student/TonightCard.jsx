import { CalendarClock, PlayCircle } from "lucide-react";
import { serverNow } from "../lib/api.js";
import { studentTitle } from "../lib/specialty.js";

// A big, bold box with the next paper's day and time, worked out from the
// exams themselves (so it changes by itself each day): TONIGHT / OPEN NOW /
// TOMORROW, the time in large letters, and a live countdown.
const time = d => d.toLocaleTimeString([], { hour: "numeric", minute: "2-digit" });
const day = d => d.toLocaleDateString([], { weekday: "long", day: "numeric", month: "long" });
const sameDay = (a, b) => a.getFullYear() === b.getFullYear() && a.getMonth() === b.getMonth() && a.getDate() === b.getDate();
function left(ms) {
  const m = Math.max(0, Math.round(ms / 60000));
  const h = Math.floor(m / 60), r = m % 60;
  return h ? `${h} h ${r} min` : `${r} min`;
}

export default function TonightCard({ exams, now }) {
  const t = now ?? serverNow();
  const next = (exams || [])
    .filter(e => new Date(e.ends_at).getTime() > t && (!e.session_status || e.session_status === "in_progress"))
    .sort((a, b) => new Date(a.starts_at) - new Date(b.starts_at))[0];
  if (!next) return null;
  const start = new Date(next.starts_at), end = new Date(next.ends_at), today = new Date(t);
  const open = t >= start.getTime();
  const tomorrow = new Date(t); tomorrow.setDate(tomorrow.getDate() + 1);
  const evening = start.getHours() >= 17;
  const when = open ? "OPEN NOW"
    : sameDay(start, today) ? (evening ? "TONIGHT" : "TODAY")
    : sameDay(start, tomorrow) ? (evening ? "TOMORROW NIGHT" : "TOMORROW")
    : day(start).toUpperCase();
  return (
    <section className={`tonight${open ? " open" : ""}`} aria-live="polite">
      <div className="tn-when"><CalendarClock size={18} /> {when}</div>
      <div className="tn-title">{studentTitle(next.title)}</div>
      <div className="tn-time">{time(start)} – {time(end)}</div>
      <div className="tn-day">{day(start)}{!sameDay(start, end) ? ` (ends ${day(end)})` : ""}</div>
      <div className="tn-count">
        {open
          ? <><PlayCircle size={16} /> Tap <strong>Start exam</strong> below · closes at {time(end)} ({left(end - t)} left)</>
          : <>Starts in <strong>{left(start - t)}</strong> · be ready 10 minutes early</>}
      </div>
    </section>
  );
}
