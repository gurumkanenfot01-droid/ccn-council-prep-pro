import { useEffect, useRef, useState } from "react";
import { Ear, ScanLine, CheckCircle2 } from "lucide-react";
import { CameraView } from "../ui.jsx";
import { snapshot } from "../lib/face.js";

// Maximum security, just before the exam: an ear check (no earphones) and a
// slow room scan. The photos are saved on the student's timeline for the
// administrator once the exam has started. Nothing here is automatic marking:
// the administrator looks at the photos.
const STEPS = [
  { kind: "ear_check", icon: Ear, title: "Show your LEFT ear", text: "Remove any earphones or earbuds. Turn your head to the right so your left ear faces the camera." },
  { kind: "ear_check", icon: Ear, title: "Show your RIGHT ear", text: "Now turn your head to the left so your right ear faces the camera." },
  { kind: "room_scan", icon: ScanLine, title: "Room scan — left side", text: "Slowly turn your phone or laptop to show the left side of the room." },
  { kind: "room_scan", icon: ScanLine, title: "Room scan — behind you", text: "Keep turning to show what is behind you." },
  { kind: "room_scan", icon: ScanLine, title: "Room scan — right side", text: "Keep turning to show the right side of the room." },
  { kind: "room_scan", icon: ScanLine, title: "Room scan — your desk", text: "Point the camera down at your desk and lap: no notes, books or phones." },
];
const SECONDS = 4;

export default function RoomCheck({ cam, onDone }) {
  const [step, setStep] = useState(-1); // -1 = intro
  const [left, setLeft] = useState(SECONDS);
  const photos = useRef([]);

  useEffect(() => {
    if (step < 0 || step >= STEPS.length) return undefined;
    setLeft(SECONDS);
    let n = SECONDS;
    const t = setInterval(() => {
      n -= 1;
      setLeft(n);
      if (n <= 0) {
        clearInterval(t);
        const photo = snapshot(cam.getVideo());
        if (photo) photos.current.push({ kind: STEPS[step].kind, photo });
        setStep(s => s + 1);
      }
    }, 1000);
    return () => clearInterval(t);
  }, [step]); // eslint-disable-line react-hooks/exhaustive-deps

  useEffect(() => {
    if (step === STEPS.length) onDone(photos.current);
  }, [step]); // eslint-disable-line react-hooks/exhaustive-deps

  const cur = STEPS[step];
  return (
    <div className="card" style={{ display: "flex", flexDirection: "column", gap: 12 }}>
      <strong>Maximum security check</strong>
      <CameraView stream={cam.stream} status={cam.camera} label="Room check" />
      {step < 0 ? (
        <>
          <p className="muted" style={{ margin: 0 }}>
            Before this exam you will show both ears (no earphones) and slowly turn the camera around the room.
            It takes about 25 seconds. Photos are saved for your administrator.
          </p>
          <button className="btn btn-primary btn-full" onClick={() => setStep(0)}><ScanLine size={16} /> Start the check</button>
        </>
      ) : cur ? (
        <div style={{ textAlign: "center" }}>
          <div className="faint" style={{ fontSize: 12.5 }}>Step {step + 1} of {STEPS.length}</div>
          <h3 style={{ margin: "4px 0", fontSize: 18 }}><cur.icon size={18} /> {cur.title}</h3>
          <p className="muted" style={{ margin: "0 0 6px" }}>{cur.text}</p>
          <div style={{ fontSize: 34, fontWeight: 800 }} aria-live="polite">{left}</div>
        </div>
      ) : (
        <div style={{ textAlign: "center" }}><CheckCircle2 size={28} color="var(--emerald)" /><p className="muted">Check done. Opening the exam…</p></div>
      )}
    </div>
  );
}
