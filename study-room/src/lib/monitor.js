import { useCallback, useEffect, useRef, useState } from "react";

// Camera + microphone focus monitor.
//
// Everything runs on the student's own device: the video and sound are only
// analysed in the browser and are never recorded, stored or uploaded. What the
// session keeps is a short list of warnings ("Face not visible at 03:12").
//
// Checks:
//   - face visible / another person / looking away (MediaPipe face detector,
//     loaded on demand and hosted by this site under /mediapipe and /models)
//   - camera covered or too dark (average brightness, works without the model)
//   - noise or talking (microphone level compared with the room's own baseline)
//   - leaving the practice screen (tab or app switch)

export const EVENT_LABELS = {
  noFace: "Face not visible",
  multipleFaces: "Another person in view",
  lookingAway: "Looking away from the screen",
  dark: "Camera covered or too dark",
  noise: "Noise or talking detected",
  tabAway: "Left the practice screen",
  cameraLost: "Camera turned off",
  micLost: "Microphone turned off",
};

// How long a condition must last before it counts as a warning (ms).
const HOLD_MS = { noFace: 3000, multipleFaces: 2000, lookingAway: 3000, dark: 2000, noise: 1200 };

const FACE_INTERVAL_MS = 400;
const AUDIO_INTERVAL_MS = 100;
const BRIGHTNESS_INTERVAL_MS = 1000;
const NOISE_MARGIN_DB = 14;   // this much louder than the room's normal level
const NOISE_FLOOR_DB = -50;   // ignore anything quieter than this
const DARK_LUMA = 22;         // 0–255 average brightness
const YAW_LIMIT = 0.45;       // nose offset from the eye midpoint, in eye-widths

function mediaError(err) {
  const name = err && err.name;
  if (name === "NotAllowedError" || name === "SecurityError" || name === "PermissionDeniedError") return "denied";
  if (name === "NotFoundError" || name === "OverconstrainedError" || name === "DevicesNotFoundError") return "unavailable";
  return "error";
}

export function useMonitor() {
  const [camera, setCamera] = useState("off");      // off | starting | on | denied | unavailable | error
  const [mic, setMic] = useState("off");            // off | starting | on | denied | unavailable | error
  const [faceModel, setFaceModel] = useState("idle"); // idle | loading | ready | unavailable
  const [face, setFace] = useState("unknown");      // ok | none | multiple | away | dark | unknown
  const [level, setLevel] = useState(0);            // 0..1, for the sound meter
  const [noisy, setNoisy] = useState(false);
  const [videoStream, setVideoStream] = useState(null);
  const [events, setEvents] = useState([]);         // { type, label, at } — at = seconds into the session
  const [latest, setLatest] = useState(null);       // most recent warning, for the on-screen toast

  // Mutable runtime state shared by the timers (not rendered directly).
  const r = useRef({
    streams: [], timers: [], audioCtx: null, detector: null, video: null, canvas: null,
    watching: false, startedAt: 0, conds: {}, awayStartedAt: null, awayMs: 0, eventCount: 0,
    baseline: null, baselineSamples: [], faceState: "unknown", dark: false,
  });

  const emit = useCallback(type => {
    const s = r.current;
    if (!s.watching) return;
    const at = Math.round((Date.now() - s.startedAt) / 1000);
    const ev = { type, label: EVENT_LABELS[type], at };
    s.eventCount += 1;
    setEvents(prev => [...prev, ev]);
    setLatest({ ...ev, n: s.eventCount });
  }, []);

  // A condition becomes a warning once it has lasted HOLD_MS, then re-arms
  // only after it clears, so one long absence is one warning, not hundreds.
  const track = useCallback((type, active) => {
    const s = r.current;
    const c = s.conds[type] || (s.conds[type] = { since: null, fired: false });
    if (!active) { c.since = null; c.fired = false; return; }
    const now = performance.now();
    if (c.since == null) c.since = now;
    if (!c.fired && now - c.since >= HOLD_MS[type]) { c.fired = true; emit(type); }
  }, [emit]);

  const stop = useCallback(() => {
    const s = r.current;
    s.timers.forEach(clearInterval);
    s.timers = [];
    s.streams.forEach(st => st.getTracks().forEach(tr => { tr.onended = null; tr.stop(); }));
    s.streams = [];
    if (s.audioCtx) { s.audioCtx.close().catch(() => {}); s.audioCtx = null; }
    if (s.detector) { try { s.detector.close(); } catch (e) { /* already closed */ } s.detector = null; }
    if (s.video) { s.video.srcObject = null; s.video.remove(); s.video = null; }
    s.watching = false;
    s.baseline = null;
    s.baselineSamples = [];
    setVideoStream(null);
    setCamera("off"); setMic("off"); setFace("unknown"); setLevel(0); setNoisy(false);
    setFaceModel(m => (m === "unavailable" ? m : "idle"));
  }, []);

  const startAudio = useCallback(async stream => {
    const s = r.current;
    const AC = window.AudioContext || window.webkitAudioContext;
    if (!AC) return;
    const ctx = new AC();
    s.audioCtx = ctx;
    try { await ctx.resume(); } catch (e) { /* resumes on next user tap */ }
    const analyser = ctx.createAnalyser();
    analyser.fftSize = 2048;
    ctx.createMediaStreamSource(stream).connect(analyser);
    const buf = new Uint8Array(analyser.fftSize);

    s.timers.push(setInterval(() => {
      analyser.getByteTimeDomainData(buf);
      let sum = 0;
      for (let i = 0; i < buf.length; i++) { const v = (buf[i] - 128) / 128; sum += v * v; }
      const db = 20 * Math.log10(Math.max(Math.sqrt(sum / buf.length), 1e-5));
      setLevel(Math.min(1, Math.max(0, (db + 60) / 50)));

      // Learn the room's normal level over the first ~2 seconds, then keep
      // adapting slowly to steady background sound (fan, generator hum).
      if (s.baseline == null) {
        s.baselineSamples.push(db);
        if (s.baselineSamples.length >= 2000 / AUDIO_INTERVAL_MS) {
          const sorted = s.baselineSamples.slice().sort((a, b) => a - b);
          s.baseline = sorted[Math.floor(sorted.length / 2)];
        }
        return;
      }
      const loud = db > Math.max(s.baseline + NOISE_MARGIN_DB, NOISE_FLOOR_DB);
      if (!loud && db < s.baseline + 6) s.baseline = s.baseline * 0.995 + db * 0.005;
      setNoisy(loud);
      track("noise", loud);
    }, AUDIO_INTERVAL_MS));
  }, [track]);

  const updateFaceState = useCallback(next => {
    const s = r.current;
    if (s.faceState !== next) { s.faceState = next; setFace(next); }
  }, []);

  const startVision = useCallback(async stream => {
    const s = r.current;
    // A hidden on-page video that the checks read from; the visible previews
    // are separate <video> elements on the same stream.
    const video = document.createElement("video");
    video.muted = true;
    video.playsInline = true;
    video.setAttribute("playsinline", "");
    video.autoplay = true;
    video.style.cssText = "position:fixed;left:0;top:0;width:2px;height:2px;opacity:0;pointer-events:none;";
    document.body.appendChild(video);
    video.srcObject = stream;
    s.video = video;
    try { await video.play(); } catch (e) { /* autoplay of a muted stream normally succeeds */ }

    // Brightness: catches a covered camera even when the face model can't load.
    s.canvas = s.canvas || document.createElement("canvas");
    s.canvas.width = 32; s.canvas.height = 24;
    const cctx = s.canvas.getContext("2d", { willReadFrequently: true });
    s.timers.push(setInterval(() => {
      if (!s.video || s.video.readyState < 2) return;
      try {
        cctx.drawImage(s.video, 0, 0, 32, 24);
        const px = cctx.getImageData(0, 0, 32, 24).data;
        let sum = 0;
        for (let i = 0; i < px.length; i += 4) sum += 0.299 * px[i] + 0.587 * px[i + 1] + 0.114 * px[i + 2];
        s.dark = sum / (px.length / 4) < DARK_LUMA;
      } catch (e) {
        s.dark = false;
      }
      track("dark", s.dark);
      if (s.dark) updateFaceState("dark");
      else if (!s.detector && s.faceState === "dark") updateFaceState("unknown");
    }, BRIGHTNESS_INTERVAL_MS));

    setFaceModel("loading");
    try {
      const { FilesetResolver, FaceDetector } = await import("@mediapipe/tasks-vision");
      const fileset = await FilesetResolver.forVisionTasks(`${window.location.origin}/mediapipe`);
      const detector = await FaceDetector.createFromOptions(fileset, {
        baseOptions: { modelAssetPath: `${window.location.origin}/models/blaze_face_short_range.tflite`, delegate: "CPU" },
        runningMode: "VIDEO",
        minDetectionConfidence: 0.5,
      });
      if (!s.video) { detector.close(); return; } // stopped while loading
      s.detector = detector;
      setFaceModel("ready");
    } catch (e) {
      setFaceModel("unavailable");
      return;
    }

    let lastTs = 0;
    s.timers.push(setInterval(() => {
      const v = s.video;
      if (!s.detector || !v || v.readyState < 2 || !v.videoWidth) return;
      let ts = performance.now();
      if (ts <= lastTs) ts = lastTs + 1;
      lastTs = ts;
      let detections = [];
      try { detections = s.detector.detectForVideo(v, ts).detections || []; } catch (e) { return; }
      const faces = detections.filter(d => (d.categories?.[0]?.score ?? 1) >= 0.6);

      let away = false;
      if (faces.length === 1) {
        // Keypoints: right eye, left eye, nose tip, mouth, right ear, left ear.
        const k = faces[0].keypoints || [];
        if (k.length >= 3) {
          const eyeMid = (k[0].x + k[1].x) / 2;
          const eyeDist = Math.abs(k[1].x - k[0].x) || 1e-3;
          away = Math.abs((k[2].x - eyeMid) / eyeDist) > YAW_LIMIT;
        }
      }
      const none = faces.length === 0 && !s.dark;
      track("noFace", none);
      track("multipleFaces", faces.length > 1);
      track("lookingAway", away);
      updateFaceState(s.dark ? "dark" : none ? "none" : faces.length > 1 ? "multiple" : away ? "away" : "ok");
    }, FACE_INTERVAL_MS));
  }, [track, updateFaceState]);

  // Ask for camera and microphone. Must be called from a tap (iOS needs that
  // to start the microphone's audio processing).
  const start = useCallback(async () => {
    const s = r.current;
    if (s.streams.length) return;
    if (!navigator.mediaDevices || !navigator.mediaDevices.getUserMedia) {
      setCamera("unavailable"); setMic("unavailable");
      return;
    }
    setCamera("starting"); setMic("starting");
    const videoC = { facingMode: "user", width: { ideal: 640 }, height: { ideal: 480 } };
    // Raw sound: the browser's noise suppression would hide exactly the room
    // noise we want to notice.
    const audioC = { echoCancellation: false, noiseSuppression: false, autoGainControl: false };

    let videoStreamLocal = null;
    let audioStream = null;
    try {
      const both = await navigator.mediaDevices.getUserMedia({ video: videoC, audio: audioC });
      videoStreamLocal = new MediaStream(both.getVideoTracks());
      audioStream = new MediaStream(both.getAudioTracks());
      s.streams.push(both);
    } catch (e) {
      // Ask separately so a missing/blocked mic doesn't also block the camera.
      try { videoStreamLocal = await navigator.mediaDevices.getUserMedia({ video: videoC }); s.streams.push(videoStreamLocal); }
      catch (e2) { setCamera(mediaError(e2)); }
      try { audioStream = await navigator.mediaDevices.getUserMedia({ audio: audioC }); s.streams.push(audioStream); }
      catch (e3) { setMic(mediaError(e3)); }
    }

    if (videoStreamLocal) {
      const track0 = videoStreamLocal.getVideoTracks()[0];
      if (track0) track0.onended = () => { setCamera("off"); emit("cameraLost"); };
      setVideoStream(videoStreamLocal);
      setCamera("on");
      startVision(videoStreamLocal);
    }
    if (audioStream) {
      const track1 = audioStream.getAudioTracks()[0];
      if (track1) track1.onended = () => { setMic("off"); emit("micLost"); };
      setMic("on");
      await startAudio(audioStream);
    }
  }, [emit, startAudio, startVision]);

  // Start counting warnings (the practice session has begun).
  const beginWatching = useCallback(() => {
    const s = r.current;
    s.conds = {};
    s.awayMs = 0;
    s.awayStartedAt = null;
    s.startedAt = Date.now();
    s.watching = true;
    setEvents([]);
    setLatest(null);
  }, []);

  // Stop counting; returns the total time spent away from the practice screen.
  const endWatching = useCallback(() => {
    const s = r.current;
    if (s.awayStartedAt) { s.awayMs += Date.now() - s.awayStartedAt; s.awayStartedAt = null; }
    s.watching = false;
    return { awaySeconds: Math.round(s.awayMs / 1000) };
  }, []);

  // Leaving the tab/app during a session.
  useEffect(() => {
    function onVisibility() {
      const s = r.current;
      if (!s.watching) return;
      if (document.visibilityState === "hidden") {
        if (!s.awayStartedAt) { s.awayStartedAt = Date.now(); emit("tabAway"); }
      } else if (s.awayStartedAt) {
        s.awayMs += Date.now() - s.awayStartedAt;
        s.awayStartedAt = null;
      }
    }
    document.addEventListener("visibilitychange", onVisibility);
    return () => document.removeEventListener("visibilitychange", onVisibility);
  }, [emit]);

  // Always release the camera and microphone when leaving the page.
  useEffect(() => stop, [stop]);

  return {
    camera, mic, faceModel, face, level, noisy, videoStream, events, latest,
    start, stop, beginWatching, endWatching,
  };
}
