import { useEffect, useRef } from "react";
import { CameraOff, Loader2, ScanFace, Users, EyeOff, Moon, Mic, MicOff, Volume2, Smartphone } from "lucide-react";

export function Spinner({ size = 22 }) {
  return <Loader2 size={size} className="spin" aria-label="Loading" />;
}

export function CameraView({ stream, status, label }) {
  const ref = useRef(null);
  useEffect(() => {
    const v = ref.current;
    if (!v) return;
    v.srcObject = stream || null;
    if (stream) v.play().catch(() => {});
  }, [stream]);
  const message = {
    off: "Camera is off", starting: "Starting camera…", denied: "Camera access was blocked",
    unavailable: "No camera found", error: "Camera couldn't start",
  }[status];
  return (
    <div className="cam">
      <video ref={ref} autoPlay playsInline muted aria-label="Your camera" />
      {status !== "on" && (
        <div className="cam-empty">{status === "starting" ? <Spinner /> : <CameraOff size={22} />}<span>{message}</span></div>
      )}
      {status === "on" && label && <span className="cam-badge"><span className="rec-dot" aria-hidden="true" /> {label}</span>}
    </div>
  );
}

export function SoundMeter({ level, noisy }) {
  const pct = Math.round(level * 100);
  const color = noisy ? "var(--red)" : level > 0.55 ? "var(--amber)" : "var(--emerald)";
  return (
    <div className="meter" role="meter" aria-label="Sound level" aria-valuemin={0} aria-valuemax={100} aria-valuenow={pct}>
      <span style={{ width: `${Math.max(3, pct)}%`, background: color }} />
    </div>
  );
}

export function FacePill({ face }) {
  if (face === "ok") return <span className="pill pill-ok"><ScanFace size={13} /> Face OK</span>;
  if (face === "none") return <span className="pill pill-bad"><EyeOff size={13} /> No face</span>;
  if (face === "multiple") return <span className="pill pill-bad"><Users size={13} /> Another person</span>;
  if (face === "away") return <span className="pill pill-warn"><EyeOff size={13} /> Looking away</span>;
  if (face === "dark") return <span className="pill pill-bad"><Moon size={13} /> Too dark</span>;
  return <span className="pill pill-off"><Spinner size={13} /> Checking face</span>;
}

export function MicPill({ mic, noisy }) {
  if (mic !== "on") return <span className="pill pill-off"><MicOff size={13} /> Mic off</span>;
  return noisy
    ? <span className="pill pill-bad"><Volume2 size={13} /> Noise</span>
    : <span className="pill pill-ok"><Mic size={13} /> Quiet</span>;
}

export function PhonePill({ phone }) {
  return phone ? <span className="pill pill-bad"><Smartphone size={13} /> Phone seen</span> : null;
}

export function Watermark({ text }) {
  const items = Array.from({ length: 60 }, (_, i) => <span key={i}>{text}</span>);
  return <div className="watermark" aria-hidden="true">{items}</div>;
}

export function PermissionHelp({ camera, mic }) {
  const blocked = camera === "denied" || mic === "denied";
  const missing = camera === "unavailable" || mic === "unavailable";
  const failed = camera === "error" || mic === "error";
  if (!blocked && !missing && !failed) return null;
  return (
    <div className="banner banner-warn" style={{ display: "block", fontWeight: 500 }}>
      {blocked && (
        <>
          <strong>Camera or microphone was blocked.</strong> Allow both, then try again:
          <ul style={{ margin: "6px 0 0", paddingLeft: 18 }}>
            <li><strong>iPhone / iPad:</strong> tap <strong>aA</strong> in Safari’s address bar → Website Settings → Camera and Microphone → Allow.</li>
            <li><strong>Android Chrome:</strong> tap the icon left of the web address → Permissions → turn on Camera and Microphone.</li>
            <li><strong>Computer:</strong> click the camera icon in the address bar and choose Allow.</li>
          </ul>
        </>
      )}
      {!blocked && missing && <><strong>No camera or microphone found.</strong> Use a phone, tablet or laptop with both.</>}
      {!blocked && !missing && <><strong>The camera or microphone couldn’t start.</strong> Close other apps using it (WhatsApp or Zoom calls), then try again.</>}
    </div>
  );
}

export function fmtDateTime(iso) {
  return new Date(iso).toLocaleString(undefined, { weekday: "short", day: "numeric", month: "short", hour: "2-digit", minute: "2-digit" });
}
