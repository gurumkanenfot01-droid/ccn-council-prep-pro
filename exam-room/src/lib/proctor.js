import { useCallback, useEffect, useRef, useState } from "react";
import { loadFaceModels, scanFaces, readDescriptor, snapshot } from "./face.js";
import { loadPhoneDetector, phoneInView } from "./phone.js";

// ---------------------------------------------------------------------------
// Camera + microphone
// ---------------------------------------------------------------------------

function mediaError(err) {
  const name = err && err.name;
  if (name === "NotAllowedError" || name === "SecurityError" || name === "PermissionDeniedError") return "denied";
  if (name === "NotFoundError" || name === "OverconstrainedError" || name === "DevicesNotFoundError") return "unavailable";
  return "error";
}

// One camera/mic session for the whole visit. `video` is a hidden on-page
// element that the checks read from; previews are separate <video>s.
export function useCamera() {
  const [camera, setCamera] = useState("off"); // off | starting | on | denied | unavailable | error
  const [mic, setMic] = useState("off");
  const [stream, setStream] = useState(null);
  const [version, setVersion] = useState(0); // bumps on every (re)start so checks re-attach
  const ref = useRef({ streams: [], video: null, audioCtx: null, analyser: null, onEnded: null });

  const stop = useCallback(() => {
    const s = ref.current;
    s.streams.forEach(st => st.getTracks().forEach(t => { t.onended = null; t.onmute = null; t.onunmute = null; t.stop(); }));
    s.streams = [];
    if (s.audioCtx) { s.audioCtx.close().catch(() => {}); s.audioCtx = null; s.analyser = null; }
    if (s.video) { s.video.srcObject = null; s.video.remove(); s.video = null; }
    setStream(null); setCamera("off"); setMic("off");
  }, []);

  // Turns the camera off but keeps the microphone (switched to microphone-only
  // during the exam). Not reported as "camera off".
  const stopVideo = useCallback(() => {
    const s = ref.current;
    s.streams.forEach(st => st.getVideoTracks().forEach(t => { t.onended = null; t.stop(); }));
    if (s.video) { s.video.srcObject = null; s.video.remove(); s.video = null; }
    setStream(null); setCamera("skipped");
  }, []);

  // Ended (stopped/unplugged/permission revoked) or muted (phone privacy
  // switch, another app took the camera) both count as OFF.
  const watchTrack = (t, setState, type) => {
    const s = ref.current;
    t.onended = () => { setState("off"); s.onEnded && s.onEnded(type); };
    t.onmute = () => setState("off");
    t.onunmute = () => { if (t.readyState === "live") setState("on"); };
  };

  // start({ video: false }) turns on the microphone only (no camera at all).
  const start = useCallback(async ({ video: wantVideo = true } = {}) => {
    const s = ref.current;
    if (s.streams.length) return;
    if (!navigator.mediaDevices || !navigator.mediaDevices.getUserMedia) { setCamera(wantVideo ? "unavailable" : "skipped"); setMic("unavailable"); return; }
    if (!wantVideo) {
      setCamera("skipped"); setMic("starting");
      const audioOnly = { echoCancellation: false, noiseSuppression: false, autoGainControl: false };
      try {
        const a = await navigator.mediaDevices.getUserMedia({ audio: audioOnly });
        s.streams.push(a);
        const AC = window.AudioContext || window.webkitAudioContext;
        if (AC) {
          const ctx = new AC();
          try { await ctx.resume(); } catch (e) { /* resumes on next tap */ }
          const analyser = ctx.createAnalyser();
          analyser.fftSize = 2048;
          ctx.createMediaStreamSource(a).connect(analyser);
          s.audioCtx = ctx; s.analyser = analyser;
        }
        const t = a.getAudioTracks()[0];
        if (t) watchTrack(t, setMic, "mic_off");
        setMic("on"); setVersion(n => n + 1);
      } catch (e) { setMic(mediaError(e)); }
      return;
    }
    setCamera("starting"); setMic("starting");
    const videoC = { facingMode: "user", width: { ideal: 640 }, height: { ideal: 480 } };
    const audioC = { echoCancellation: false, noiseSuppression: false, autoGainControl: false };
    let v = null;
    let a = null;
    try {
      const both = await navigator.mediaDevices.getUserMedia({ video: videoC, audio: audioC });
      s.streams.push(both);
      v = new MediaStream(both.getVideoTracks());
      a = new MediaStream(both.getAudioTracks());
    } catch (e) {
      try { v = await navigator.mediaDevices.getUserMedia({ video: videoC }); s.streams.push(v); } catch (e2) { setCamera(mediaError(e2)); }
      try { a = await navigator.mediaDevices.getUserMedia({ audio: audioC }); s.streams.push(a); } catch (e3) { setMic(mediaError(e3)); }
    }
    if (v) {
      const video = document.createElement("video");
      video.muted = true; video.playsInline = true; video.autoplay = true;
      video.setAttribute("playsinline", "");
      video.style.cssText = "position:fixed;left:0;top:0;width:2px;height:2px;opacity:0;pointer-events:none;";
      document.body.appendChild(video);
      video.srcObject = v;
      try { await video.play(); } catch (e) { /* muted autoplay normally works */ }
      s.video = video;
      const t = v.getVideoTracks()[0];
      if (t) watchTrack(t, setCamera, "camera_off");
      setStream(v); setCamera("on");
    }
    if (a) {
      const AC = window.AudioContext || window.webkitAudioContext;
      if (AC) {
        const ctx = new AC();
        try { await ctx.resume(); } catch (e) { /* resumes on next tap */ }
        const analyser = ctx.createAnalyser();
        analyser.fftSize = 2048;
        ctx.createMediaStreamSource(a).connect(analyser);
        s.audioCtx = ctx; s.analyser = analyser;
      }
      const t = a.getAudioTracks()[0];
      if (t) watchTrack(t, setMic, "mic_off");
      setMic("on");
    }
    setVersion(n => n + 1);
  }, []);

  // Turn the camera/microphone back on after the student (or the phone's
  // privacy switch) turned it off.
  const restart = useCallback(async ({ video = true } = {}) => {
    stop();
    await start({ video });
  }, [stop, start]);

  useEffect(() => stop, [stop]);

  return {
    camera, mic, stream, version, start, stop, stopVideo, restart,
    getVideo: () => ref.current.video,
    getAnalyser: () => ref.current.analyser,
    getAudioState: () => (ref.current.audioCtx ? ref.current.audioCtx.state : "none"),
    getTracks: () => ref.current.streams.flatMap(st => st.getTracks()),
    setOnEnded: fn => { ref.current.onEnded = fn; },
  };
}

// ---------------------------------------------------------------------------
// Exam proctoring loops
// ---------------------------------------------------------------------------

// Strictness levels, chosen per exam by the admin.
//   hold     — how long a condition must last before it counts as a warning (ms)
//   yaw      — head turn that counts as "looking away" (Infinity = never counted)
//   voice    — speech-band level above the quiet room that counts as talking (dB)
//   loud     — any sound this far above the quiet room (dB)
//   floor    — ignore anything quieter than this (dBFS)
// Relaxed lets students murmur, read under their breath and turn their head;
// only clearly loud talking/noise, leaving the camera, another person or a
// phone count.
export const PROCTOR_LEVELS = {
  relaxed: {
    hold: { no_face: 10000, multiple_faces: 3000, looking_away: Infinity, dark: 5000, noise: 3000, phone: 2000 },
    yaw: Infinity, voice: 22, loud: 24, floor: -40,
  },
  normal: {
    hold: { no_face: 7000, multiple_faces: 2500, looking_away: 10000, dark: 4000, noise: 2000, phone: 1500 },
    yaw: 0.45, voice: 15, loud: 17, floor: -50,
  },
  strict: {
    hold: { no_face: 5000, multiple_faces: 2000, looking_away: 6000, dark: 3000, noise: 1200, phone: 1500 },
    yaw: 0.33, voice: 8, loud: 10, floor: -62,
  },
};

// While the page itself beeps (warning sound) the mic would hear it; skip sound checks briefly.
let audioChecksPausedUntil = 0;
export function pauseSoundChecks(ms) { audioChecksPausedUntil = performance.now() + ms; }
const DARK_LUMA = 22;
const IDENTITY_EVERY_MS = 60000;

export const VIOLATION_LABELS = {
  no_face: "Your face is not visible",
  multiple_faces: "Another person is in view",
  looking_away: "Looking away from the screen",
  phone: "A phone is visible to the camera",
  dark: "Camera covered or too dark",
  noise: "Talking or noise detected",
  tab_away: "Left the exam screen",
  window_blur: "Opened another app, panel or notification",
  fullscreen_exit: "Left full screen",
  screenshot_key: "Screenshot attempt",
  copy_attempt: "Copy, print or right-click attempt",
  camera_off: "Camera was turned off",
  mic_off: "Microphone was turned off",
  face_mismatch: "Face did not match the registered student",
};

// Runs while `active`. Calls report(type, detail, photo) for each violation
// and identity(descriptor, photo) about once a minute.
// video: false = microphone-only mode: no face, phone or camera checks, and no
// face/phone models are downloaded (much lighter on a slow network).
export function useProctor({ cam, active, report, identity, level: strictness = "relaxed", video = true }) {
  const L = PROCTOR_LEVELS[strictness] || PROCTOR_LEVELS.relaxed;
  const [face, setFace] = useState("checking"); // ok | none | multiple | away | dark | checking
  const [phone, setPhone] = useState(false);
  const [noisy, setNoisy] = useState(false);
  const [level, setLevel] = useState(0);
  const [phoneModel, setPhoneModel] = useState("loading");
  const cb = useRef({ report, identity });
  cb.current = { report, identity };

  useEffect(() => {
    if (!active) return undefined;
    let alive = true;
    const timers = [];
    const conds = {};
    const details = {}; // extra text for the admin's timeline, e.g. "Talking (voice detected)"
    let dark = false;

    const fire = (type, detail = "") => {
      const photo = video ? snapshot(cam.getVideo()) : null;
      cb.current.report(type, detail, photo);
    };
    // A condition is reported once it has lasted HOLD ms, then re-arms only
    // after it clears, so one long absence is one warning, not many.
    const track = (type, on) => {
      const c = conds[type] || (conds[type] = { since: null, fired: false });
      if (!on) { c.since = null; c.fired = false; return; }
      const now = performance.now();
      if (c.since == null) c.since = now;
      if (!c.fired && now - c.since >= L.hold[type]) { c.fired = true; fire(type, details[type] || ""); }
    };

    cam.setOnEnded(type => fire(type));

    // Faces: count + head direction.
    let faceBusy = false;
    if (video) loadFaceModels().then(() => {
      if (!alive) return;
      timers.push(setInterval(async () => {
        if (faceBusy) return;
        faceBusy = true;
        try {
          const faces = await scanFaces(cam.getVideo());
          if (!alive || faces == null) return;
          const none = faces.length === 0 && !dark;
          const many = faces.length > 1;
          const away = faces.length === 1 && Math.abs(faces[0].yaw) > L.yaw;
          track("no_face", none);
          track("multiple_faces", many);
          track("looking_away", away);
          setFace(dark ? "dark" : none ? "none" : many ? "multiple" : away ? "away" : "ok");
        } catch (e) { /* skip this frame */ } finally { faceBusy = false; }
      }, 800));

      // Identity check about once a minute (the database does the matching).
      timers.push(setInterval(async () => {
        try {
          const r = await readDescriptor(cam.getVideo());
          if (alive && r.descriptor) cb.current.identity(r.descriptor, snapshot(cam.getVideo()));
        } catch (e) { /* try again next minute */ }
      }, IDENTITY_EVERY_MS));
    }).catch(() => setFace("checking"));

    // Phone in view.
    if (video) loadPhoneDetector().then(detector => {
      if (!alive) return;
      setPhoneModel("ready");
      timers.push(setInterval(() => {
        const seen = phoneInView(detector, cam.getVideo());
        setPhone(seen);
        track("phone", seen);
      }, 1000));
    }).catch(() => setPhoneModel("unavailable"));

    // Camera covered / dark.
    const canvas = document.createElement("canvas");
    canvas.width = 32; canvas.height = 24;
    const ctx = canvas.getContext("2d", { willReadFrequently: true });
    if (video) timers.push(setInterval(() => {
      const v = cam.getVideo();
      if (!v || v.readyState < 2) return;
      try {
        ctx.drawImage(v, 0, 0, 32, 24);
        const px = ctx.getImageData(0, 0, 32, 24).data;
        let sum = 0;
        for (let i = 0; i < px.length; i += 4) sum += 0.299 * px[i] + 0.587 * px[i + 1] + 0.114 * px[i + 2];
        dark = sum / (px.length / 4) < DARK_LUMA;
      } catch (e) { dark = false; }
      track("dark", dark);
      if (dark) setFace("dark");
    }, 1000));

    // Sound: talking (speech band) or a loud noise, for about a second.
    const analyser = cam.getAnalyser();
    if (analyser) {
      const timeBuf = new Uint8Array(analyser.fftSize);
      const freqBuf = new Float32Array(analyser.frequencyBinCount);
      const hzPerBin = analyser.context.sampleRate / analyser.fftSize;
      const lo = Math.max(1, Math.floor(300 / hzPerBin));
      const hi = Math.min(freqBuf.length - 1, Math.ceil(3400 / hzPerBin));
      const learn = { all: [], voice: [] };
      let base = null; // { all, voice } quiet-room levels in dB
      let lastTalkAt = -1e9;
      let lastLoudAt = -1e9;
      timers.push(setInterval(() => {
        analyser.getByteTimeDomainData(timeBuf);
        let sum = 0;
        for (let i = 0; i < timeBuf.length; i++) { const x = (timeBuf[i] - 128) / 128; sum += x * x; }
        const all = 20 * Math.log10(Math.max(Math.sqrt(sum / timeBuf.length), 1e-5));
        analyser.getFloatFrequencyData(freqBuf);
        let p = 0;
        for (let i = lo; i <= hi; i++) p += Math.pow(10, Math.max(freqBuf[i], -140) / 10);
        const voice = 10 * Math.log10(p / (hi - lo + 1) + 1e-14);
        setLevel(Math.min(1, Math.max(0, (all + 60) / 45)));
        if (performance.now() < audioChecksPausedUntil) return;

        // Learn the quiet room over the first ~2 s (the quietest half, so a
        // student talking at the start doesn't raise the bar).
        if (base == null) {
          learn.all.push(all); learn.voice.push(voice);
          if (learn.all.length >= 20) {
            const q = arr => arr.slice().sort((x, y) => x - y)[Math.floor(arr.length * 0.3)];
            base = { all: q(learn.all), voice: q(learn.voice) };
          }
          return;
        }
        const talking = voice > base.voice + L.voice && all > L.floor;
        const loud = all > Math.max(base.all + L.loud, L.floor);
        // Speech has short gaps between syllables and words; keep counting it
        // as one stretch of talking unless it stops for more than ~0.8 s.
        const tNow = performance.now();
        if (talking) lastTalkAt = tNow;
        if (loud) lastLoudAt = tNow;
        const talkingOn = tNow - lastTalkAt < 800;
        const loudOn = tNow - lastLoudAt < 800;
        const noisyNow = talkingOn || loudOn;
        // Follow slow changes in the room (a fan switched on), only while quiet.
        if (!noisyNow) {
          base.all = base.all * 0.99 + all * 0.01;
          base.voice = base.voice * 0.99 + voice * 0.01;
        }
        setNoisy(noisyNow ? (talkingOn ? "talking" : "noise") : false);
        if (noisyNow) details.noise = talkingOn ? "Talking (voice detected)" : "Loud noise";
        track("noise", noisyNow);
      }, 100));
    }

    // Leaving the exam: tab/app switch, opening a panel or notification,
    // leaving full screen, screenshot keys, copy/print/right-click.
    const onVisibility = () => { if (document.visibilityState === "hidden") fire("tab_away"); };
    let blurTimer = null;
    const onBlur = () => { blurTimer = setTimeout(() => fire("window_blur"), 1500); };
    const onFocus = () => { clearTimeout(blurTimer); };
    const onFullscreen = () => {
      if (!document.fullscreenElement && !document.webkitFullscreenElement) fire("fullscreen_exit");
    };
    const onKey = e => {
      const k = (e.key || "").toLowerCase();
      const shot = k === "printscreen" || (e.metaKey && e.shiftKey && ["3", "4", "5", "s"].includes(k)) || (e.key === "s" && e.shiftKey && e.metaKey);
      const copy = (e.ctrlKey || e.metaKey) && ["c", "x", "p", "s", "u"].includes(k);
      if (shot) { e.preventDefault(); fire("screenshot_key"); }
      else if (copy) { e.preventDefault(); fire("copy_attempt", `Pressed ${e.metaKey ? "Cmd" : "Ctrl"}+${k.toUpperCase()}`); }
    };
    const block = e => { e.preventDefault(); fire("copy_attempt", e.type); };
    document.addEventListener("visibilitychange", onVisibility);
    window.addEventListener("blur", onBlur);
    window.addEventListener("focus", onFocus);
    document.addEventListener("fullscreenchange", onFullscreen);
    document.addEventListener("webkitfullscreenchange", onFullscreen);
    window.addEventListener("keyup", onKey);
    window.addEventListener("keydown", onKey);
    document.addEventListener("copy", block);
    document.addEventListener("cut", block);
    document.addEventListener("contextmenu", block);
    window.addEventListener("beforeprint", block);

    return () => {
      alive = false;
      timers.forEach(clearInterval);
      clearTimeout(blurTimer);
      cam.setOnEnded(null);
      document.removeEventListener("visibilitychange", onVisibility);
      window.removeEventListener("blur", onBlur);
      window.removeEventListener("focus", onFocus);
      document.removeEventListener("fullscreenchange", onFullscreen);
      document.removeEventListener("webkitfullscreenchange", onFullscreen);
      window.removeEventListener("keyup", onKey);
      window.removeEventListener("keydown", onKey);
      document.removeEventListener("copy", block);
      document.removeEventListener("cut", block);
      document.removeEventListener("contextmenu", block);
      window.removeEventListener("beforeprint", block);
    };
  }, [active, video, cam.version]); // eslint-disable-line react-hooks/exhaustive-deps

  return { face, phone, noisy, level, phoneModel };
}

// Full screen where the browser allows it (not on iPhone Safari).
export function enterFullscreen() {
  const el = document.documentElement;
  const req = el.requestFullscreen || el.webkitRequestFullscreen;
  if (req) { try { const p = req.call(el); if (p && p.catch) p.catch(() => {}); } catch (e) { /* not allowed */ } }
}
export function exitFullscreen() {
  const exit = document.exitFullscreen || document.webkitExitFullscreen;
  if (exit && (document.fullscreenElement || document.webkitFullscreenElement)) { try { exit.call(document); } catch (e) { /* ignore */ } }
}
