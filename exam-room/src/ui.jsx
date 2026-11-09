import { useEffect, useRef, useState } from "react";
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
    unavailable: "No camera found", busy: "Camera is in use or switched off", error: "Camera couldn't start",
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
  const failed = ["error", "busy"].includes(camera) || ["error", "busy"].includes(mic);
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
      {!blocked && !missing && <><strong>The camera or microphone couldn’t start.</strong> Close other apps using it (WhatsApp, Zoom or Teams calls, the Camera app, other browser tabs). On a laptop, also check the camera key on the keyboard (a camera symbol, often on F10–F12) or a sliding cover over the camera, then try again.</>}
    </div>
  );
}

export function fmtDateTime(iso) {
  return new Date(iso).toLocaleString(undefined, { weekday: "short", day: "numeric", month: "short", hour: "2-digit", minute: "2-digit" });
}

// "⋯ More" menu for row actions. The list floats above the page (position:
// fixed), so it is never cut off inside a scrolling table, opens upwards near
// the bottom of the screen, and closes on any choice, outside tap or Escape.
export function MoreMenu({ label = "More", ariaLabel, compact = false, icon, children, keepOpen = false }) {
  const ref = useRef(null);
  const [open, setOpen] = useState(false);
  const [pos, setPos] = useState(null);
  useEffect(() => {
    if (!open) return undefined;
    const close = e => { if (!ref.current || !ref.current.contains(e.target)) setOpen(false); };
    const esc = e => { if (e.key === "Escape") setOpen(false); };
    const away = () => setOpen(false);
    document.addEventListener("pointerdown", close);
    document.addEventListener("keydown", esc);
    window.addEventListener("scroll", away, true);
    window.addEventListener("resize", away);
    return () => {
      document.removeEventListener("pointerdown", close);
      document.removeEventListener("keydown", esc);
      window.removeEventListener("scroll", away, true);
      window.removeEventListener("resize", away);
    };
  }, [open]);
  function toggle(e) {
    const r = e.currentTarget.getBoundingClientRect();
    const width = 230;
    const below = window.innerHeight - r.bottom > 260;
    setPos({
      left: Math.max(8, Math.min(window.innerWidth - width - 8, r.right - width)),
      ...(below ? { top: r.bottom + 6, bottom: "auto" } : { top: "auto", bottom: window.innerHeight - r.top + 6 }),
      width,
    });
    setOpen(o => !o);
  }
  return (
    <span className="menu" ref={ref}>
      <button type="button" className="btn btn-sm btn-ghost" aria-haspopup="menu" aria-expanded={open} aria-label={ariaLabel || label} onClick={toggle}>
        {icon}{!compact && ` ${label}`}
      </button>
      {open && pos && (
        <div className="menu-list" role="menu" style={{ position: "fixed", right: "auto", ...pos }}
          onClick={e => { const b = e.target.closest("button"); if (b && (!keepOpen || b.dataset.close)) setOpen(false); }}>
          {children}
        </div>
      )}
    </span>
  );
}
