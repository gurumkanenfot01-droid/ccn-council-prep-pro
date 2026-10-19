import { useEffect, useRef } from "react";
import { Camera, CameraOff, Mic, MicOff, ScanFace, Users, EyeOff, Moon, Loader2, Volume2 } from "lucide-react";

export function CameraView({ stream, status, live }) {
  const ref = useRef(null);
  useEffect(() => {
    const v = ref.current;
    if (!v) return;
    v.srcObject = stream || null;
    if (stream) v.play().catch(() => {});
  }, [stream]);

  const message = {
    off: "Camera is off",
    starting: "Starting camera…",
    denied: "Camera access was blocked",
    unavailable: "No camera found on this device",
    error: "Camera couldn't start",
  }[status];

  return (
    <div className="cam">
      <video ref={ref} autoPlay playsInline muted aria-label="Your camera preview" />
      {status !== "on" && (
        <div className="cam-empty">
          {status === "starting" ? <Loader2 size={22} className="spin" /> : <CameraOff size={22} />}
          <span>{message}</span>
        </div>
      )}
      {status === "on" && live && (
        <span className="cam-badge"><span className="rec-dot" aria-hidden="true" /> Live<span className="cam-badge-extra"> · not recorded</span></span>
      )}
    </div>
  );
}

export function SoundMeter({ level, noisy }) {
  const pct = Math.round(level * 100);
  const color = noisy ? "var(--red)" : level > 0.55 ? "var(--amber)" : "var(--emerald)";
  return (
    <div className="meter" role="meter" aria-label="Surrounding sound level" aria-valuemin={0} aria-valuemax={100} aria-valuenow={pct}>
      <span style={{ width: `${Math.max(3, pct)}%`, background: color }} />
    </div>
  );
}

export function FacePill({ face, faceModel, camera }) {
  if (camera !== "on") return <span className="pill pill-off"><CameraOff size={13} /> Camera off</span>;
  if (face === "dark") return <span className="pill pill-bad"><Moon size={13} /> Camera covered / dark</span>;
  if (faceModel === "loading") return <span className="pill pill-off"><Loader2 size={13} className="spin" /> Loading face check…</span>;
  if (faceModel === "unavailable") return <span className="pill pill-off"><ScanFace size={13} /> Face check unavailable</span>;
  if (face === "ok") return <span className="pill pill-ok"><ScanFace size={13} /> Face in view</span>;
  if (face === "none") return <span className="pill pill-bad"><EyeOff size={13} /> No face visible</span>;
  if (face === "multiple") return <span className="pill pill-bad"><Users size={13} /> Another person</span>;
  if (face === "away") return <span className="pill pill-warn"><EyeOff size={13} /> Looking away</span>;
  return <span className="pill pill-off"><ScanFace size={13} /> Checking…</span>;
}

export function MicPill({ mic, noisy }) {
  if (mic === "on") {
    return noisy
      ? <span className="pill pill-bad"><Volume2 size={13} /> Noise detected</span>
      : <span className="pill pill-ok"><Mic size={13} /> Quiet</span>;
  }
  if (mic === "starting") return <span className="pill pill-off"><Loader2 size={13} className="spin" /> Starting mic…</span>;
  return <span className="pill pill-off"><MicOff size={13} /> Mic off</span>;
}

export function CameraPill({ camera }) {
  return camera === "on"
    ? <span className="pill pill-ok"><Camera size={13} /> Camera on</span>
    : <span className="pill pill-off"><CameraOff size={13} /> Camera {camera === "denied" ? "blocked" : "off"}</span>;
}

export function fmtTime(totalSeconds) {
  const s = Math.max(0, Math.round(totalSeconds));
  const m = Math.floor(s / 60);
  return `${String(m).padStart(2, "0")}:${String(s % 60).padStart(2, "0")}`;
}

// Points removed from a perfect 100 focus score for each warning.
export const FOCUS_PENALTY = {
  noFace: 10, multipleFaces: 15, lookingAway: 5, dark: 10, noise: 5, tabAway: 10, cameraLost: 15, micLost: 10,
};

export function focusScore(events) {
  return Math.max(0, 100 - events.reduce((sum, e) => sum + (FOCUS_PENALTY[e.type] || 5), 0));
}

export function focusLabel(score) {
  if (score >= 90) return "Excellent focus";
  if (score >= 70) return "Good focus";
  if (score >= 50) return "Fair focus";
  return "Easily distracted";
}
