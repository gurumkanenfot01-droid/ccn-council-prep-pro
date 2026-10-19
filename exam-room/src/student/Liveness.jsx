import { useEffect, useRef, useState } from "react";
import { CheckCircle2, RotateCcw } from "lucide-react";
import { loadFaceModels, scanFaces, readDescriptor, averageDescriptors, snapshot } from "../lib/face.js";
import { CameraView, Spinner } from "../ui.jsx";

// Proves a live person is in front of the camera (a printed photo or a still
// image on another screen can't turn its head), then reads their face
// descriptor from three frames. Calls onDone({ descriptor, photo }).
const STEP_TEXT = {
  loading: "Loading the face check… (the first time this downloads about 8 MB)",
  center: "Look straight at the camera",
  sideA: "Slowly turn your head to one side",
  sideB: "Now slowly turn your head to the other side",
  capture: "Look straight at the camera and hold still",
  done: "Done",
};
const TURN = 0.2; // ≈27° head turn: easy for a person, impossible for a still photo
const STEP_TIMEOUT_MS = 40000;

export default function Liveness({ cam, onDone, actionLabel }) {
  const [step, setStep] = useState("loading");
  const [hint, setHint] = useState("");
  const [failed, setFailed] = useState("");
  const [attempt, setAttempt] = useState(0);
  const done = useRef(onDone);
  done.current = onDone;
  // The camera hook returns a new object each render; read it through a ref
  // so the check doesn't restart on every render.
  const camRef = useRef(cam);
  camRef.current = cam;

  useEffect(() => {
    let alive = true;
    let timer = null;
    let state = "loading";
    let since = 0;
    let firstSide = 0;
    let stepStarted = Date.now();
    const readings = [];
    const go = s => { state = s; since = 0; stepStarted = Date.now(); setStep(s); setHint(""); };

    loadFaceModels().then(() => {
      if (!alive) return;
      go("center");
      const tick = async () => {
        if (!alive) return;
        try {
          if (Date.now() - stepStarted > STEP_TIMEOUT_MS) {
            setFailed("That took too long. Make sure your whole face is visible in good light, then try again.");
            return;
          }
          const video = camRef.current.getVideo();
          if (state === "capture") {
            const r = await readDescriptor(video);
            if (r.error === "multiple_faces") setHint("Only you should be in view.");
            else if (r.error) setHint("Keep your face in the frame.");
            else if (Math.abs(r.yaw) > 0.18) setHint("Look straight at the camera.");
            else {
              setHint("");
              readings.push(r.descriptor);
              if (readings.length >= 3) {
                const photo = snapshot(video, 320);
                go("done");
                done.current({ descriptor: averageDescriptors(readings), photo });
                return;
              }
            }
          } else {
            const faces = await scanFaces(video);
            if (faces == null) { /* camera warming up */ }
            else if (faces.length === 0) setHint("Keep your face in the frame.");
            else if (faces.length > 1) setHint("Only you should be in view.");
            else {
              setHint("");
              const yaw = faces[0].yaw;
              if (state === "center") {
                if (Math.abs(yaw) < 0.12) { since = since || Date.now(); if (Date.now() - since > 800) go("sideA"); }
                else since = 0;
              } else if (state === "sideA" && Math.abs(yaw) > TURN) {
                firstSide = Math.sign(yaw);
                go("sideB");
              } else if (state === "sideB" && Math.sign(yaw) === -firstSide && Math.abs(yaw) > TURN) {
                go("capture");
              }
            }
          }
        } catch (e) { /* try the next frame */ }
        if (alive) timer = setTimeout(tick, 250);
      };
      tick();
    }).catch(() => setFailed("The face check couldn't load. Check your internet connection and try again."));

    return () => { alive = false; clearTimeout(timer); };
  }, [attempt]);

  const order = ["center", "sideA", "sideB", "capture"];
  const at = order.indexOf(step);

  return (
    <div style={{ display: "flex", flexDirection: "column", gap: 12 }}>
      <CameraView stream={cam.stream} status={cam.camera} />
      <div className="banner banner-info" role="status" aria-live="polite">
        {step === "loading" || step === "capture" ? <Spinner size={16} /> : null}
        <span>{failed ? "" : STEP_TEXT[step]}{hint && !failed ? ` — ${hint}` : ""}</span>
      </div>
      <ol className="list" style={{ fontSize: 13.5 }}>
        {order.map((s, i) => (
          <li key={s} className="row" style={{ gap: 6, color: i < at || step === "done" ? "var(--emerald)" : i === at ? "var(--text)" : "var(--faint)" }}>
            <CheckCircle2 size={15} /> {STEP_TEXT[s]}
          </li>
        ))}
      </ol>
      {failed && (
        <>
          <div className="error" role="alert">{failed}</div>
          <button className="btn btn-ghost" onClick={() => { setFailed(""); setStep("loading"); setAttempt(a => a + 1); }}>
            <RotateCcw size={16} /> Try again
          </button>
        </>
      )}
      {step === "done" && <div className="notice"><Spinner size={14} /> {actionLabel}…</div>}
    </div>
  );
}
