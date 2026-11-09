import { useEffect, useRef, useState } from "react";
import { CheckCircle2, RotateCcw, Lightbulb, X } from "lucide-react";
import { loadFaceModels, scanFaces, readDescriptor, averageDescriptors, snapshot, frameBrightness } from "../lib/face.js";
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
const TURN = 0.15; // ≈20° head turn: easy for a person, impossible for a still photo
const STEP_TIMEOUT_MS = 75000; // generous: dim rooms and slow phones take longer
const DIM = 70; // average brightness below which the screen light is offered

export default function Liveness({ cam, onDone, actionLabel }) {
  const [step, setStep] = useState("loading");
  const [hint, setHint] = useState("");
  const [failed, setFailed] = useState("");
  const [attempt, setAttempt] = useState(0);
  const [dim, setDim] = useState(false);
  const [light, setLight] = useState(false); // white screen used as a lamp on the face
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
            setFailed("That took too long. Make sure your whole face is visible. In a dark room, tap “Use screen light” and hold the phone close to your face, then try again.");
            return;
          }
          const video = camRef.current.getVideo();
          setDim(frameBrightness(video) < DIM);
          if (state === "capture") {
            const r = await readDescriptor(video);
            if (r.error === "multiple_faces") setHint("Only you should be in view.");
            else if (r.error) setHint("Keep your face in the frame.");
            else if (Math.abs(r.yaw) > 0.25) setHint("Look straight at the camera.");
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
                if (Math.abs(yaw) < 0.15) { since = since || Date.now(); if (Date.now() - since > 500) go("sideA"); }
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

  // Screen light: the whole screen turns white and lights up the face, like a
  // ring light. Good for night: no lamp needed.
  useEffect(() => {
    if (!light) return undefined;
    document.body.classList.add("screen-light-on");
    return () => document.body.classList.remove("screen-light-on");
  }, [light]);

  return (
    <div className={light ? "screen-light" : ""} style={{ display: "flex", flexDirection: "column", gap: 12 }}>
      {light && (
        <div className="row" style={{ justifyContent: "space-between" }}>
          <strong style={{ fontSize: 14 }}><Lightbulb size={15} /> Screen light on — turn your screen brightness up</strong>
          <button className="btn btn-sm btn-ghost" onClick={() => setLight(false)}><X size={14} /> Off</button>
        </div>
      )}
      <CameraView stream={cam.stream} status={cam.camera} />
      {!light && step !== "done" && !failed && (
        <button type="button" className={`btn ${dim ? "btn-primary" : "btn-ghost"} btn-sm`} style={{ alignSelf: "center" }} onClick={() => setLight(true)}>
          <Lightbulb size={15} /> {dim ? "It’s dark — use screen light" : "Dark room? Use screen light"}
        </button>
      )}
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
          {!light && <button className="btn btn-primary" onClick={() => { setLight(true); setFailed(""); setStep("loading"); setAttempt(a => a + 1); }}><Lightbulb size={16} /> Try again with screen light</button>}
          <button className="btn btn-ghost" onClick={() => { setFailed(""); setStep("loading"); setAttempt(a => a + 1); }}>
            <RotateCcw size={16} /> Try again
          </button>
        </>
      )}
      {step === "done" && <div className="notice"><Spinner size={14} /> {actionLabel}…</div>}
    </div>
  );
}
