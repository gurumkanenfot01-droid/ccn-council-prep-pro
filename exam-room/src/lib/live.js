import { useEffect, useState } from "react";
import { supabase } from "./supabase.js";

// Live view: when an admin taps "Watch live", the student's page sends its
// camera (and microphone) straight to the admin's browser over WebRTC. Video
// only flows while someone is watching, nothing is stored, and Supabase
// Realtime only carries the few small messages that set the call up.
//
// The channel is named after the session token, which only the student's
// page and admins can see.
//
// Optional TURN server for networks where a direct connection fails:
// VITE_TURN_URLS (comma-separated), VITE_TURN_USERNAME, VITE_TURN_CREDENTIAL.
const ICE_SERVERS = [
  { urls: ["stun:stun.l.google.com:19302", "stun:stun1.l.google.com:19302"] },
  ...(import.meta.env.VITE_TURN_URLS
    ? [{
        urls: import.meta.env.VITE_TURN_URLS.split(",").map(u => u.trim()),
        username: import.meta.env.VITE_TURN_USERNAME,
        credential: import.meta.env.VITE_TURN_CREDENTIAL,
      }]
    : []),
];

const channelName = token => `exam-live-${token}`;

export const liveSupported = () => typeof window !== "undefined" && !!window.RTCPeerConnection && !!supabase;

// ICE candidates can arrive before the other side's description is set.
function candidateQueue(pc) {
  const pending = [];
  return {
    add(candidate) {
      if (pc.remoteDescription) pc.addIceCandidate(candidate).catch(() => {});
      else pending.push(candidate);
    },
    flush() { pending.splice(0).forEach(c => pc.addIceCandidate(c).catch(() => {})); },
  };
}

// Picture fallback: when a direct video link can't be made (common on mobile
// data), the student's page sends small JPEG frames over the Realtime channel
// instead — about 2 a second, ~10 KB each, only while an admin keeps asking.
const FRAME_MS = 500;
const FRAME_WIDTH = 240;
const FRAME_KEEPALIVE_MS = 5000;

// Student side: answer "watch" requests with the current camera/mic tracks,
// or "frames" requests with pictures. Returns how many admins are watching.
export function useLiveShare({ token, getTracks, getVideo, enabled = true }) {
  const [watchers, setWatchers] = useState(0);

  useEffect(() => {
    if (!enabled || !token || !liveSupported()) return undefined;
    const peers = new Map(); // viewer id -> { pc, queue }
    const framers = new Map(); // viewer id -> { timer, last }
    const ch = supabase.channel(channelName(token), { config: { broadcast: { self: false } } });
    const send = (event, payload) => ch.send({ type: "broadcast", event, payload }).catch(() => {});
    const count = () => setWatchers(peers.size + framers.size);
    const close = id => {
      const p = peers.get(id);
      if (p) { p.pc.close(); peers.delete(id); }
      const f = framers.get(id);
      if (f) { clearInterval(f.timer); framers.delete(id); }
      count();
    };

    const canvas = document.createElement("canvas");
    ch.on("broadcast", { event: "frames" }, ({ payload }) => {
      const id = payload && payload.viewer;
      if (!id) return;
      const known = framers.get(id);
      if (known) { known.last = Date.now(); return; } // keep-alive
      const video = getVideo && getVideo();
      if (!video) { send("unavailable", { viewer: id }); return; }
      const f = { last: Date.now(), timer: null };
      f.timer = setInterval(() => {
        if (Date.now() - f.last > FRAME_KEEPALIVE_MS * 3) { close(id); return; } // admin went away
        const v = getVideo && getVideo();
        if (!v || v.readyState < 2 || !v.videoWidth) return;
        canvas.width = FRAME_WIDTH;
        canvas.height = Math.round(FRAME_WIDTH * v.videoHeight / v.videoWidth);
        try {
          canvas.getContext("2d").drawImage(v, 0, 0, canvas.width, canvas.height);
          send("frame", { viewer: id, img: canvas.toDataURL("image/jpeg", 0.5) });
        } catch (e) { /* skip this frame */ }
      }, FRAME_MS);
      framers.set(id, f);
      count();
    });

    ch.on("broadcast", { event: "watch" }, async ({ payload }) => {
      const id = payload && payload.viewer;
      if (!id) return;
      close(id);
      const tracks = getTracks().filter(t => t && t.readyState === "live");
      if (!tracks.length) { send("unavailable", { viewer: id }); return; }
      const pc = new RTCPeerConnection({ iceServers: ICE_SERVERS });
      const queue = candidateQueue(pc);
      peers.set(id, { pc, queue });
      count();
      const stream = new MediaStream(tracks);
      tracks.forEach(t => pc.addTransceiver(t, {
        direction: "sendonly",
        streams: [stream],
        // Small picture, low frame rate: light on a weak network.
        ...(t.kind === "video" ? { sendEncodings: [{ maxBitrate: 250000, scaleResolutionDownBy: 2, maxFramerate: 12 }] } : {}),
      }));
      pc.onicecandidate = e => { if (e.candidate) send("ice", { viewer: id, from: "student", candidate: e.candidate.toJSON() }); };
      // A viewer that vanished (tab closed, network gone) is dropped after a few seconds.
      let gone = null;
      pc.onconnectionstatechange = () => {
        const st = pc.connectionState;
        if (st === "failed" || st === "closed") close(id);
        else if (st === "disconnected") gone = gone || setTimeout(() => close(id), 6000);
        else if (st === "connected") { clearTimeout(gone); gone = null; }
      };
      try {
        await pc.setLocalDescription(await pc.createOffer());
        send("offer", { viewer: id, sdp: pc.localDescription.toJSON() });
      } catch (e) { close(id); }
    });
    ch.on("broadcast", { event: "answer" }, async ({ payload }) => {
      const p = peers.get(payload && payload.viewer);
      if (!p) return;
      try { await p.pc.setRemoteDescription(payload.sdp); p.queue.flush(); } catch (e) { close(payload.viewer); }
    });
    ch.on("broadcast", { event: "ice" }, ({ payload }) => {
      if (!payload || payload.from !== "admin") return;
      const p = peers.get(payload.viewer);
      if (p) p.queue.add(payload.candidate);
    });
    ch.on("broadcast", { event: "stop" }, ({ payload }) => close(payload && payload.viewer));
    // Tell any admin already waiting that this page is back (e.g. after a reload).
    ch.subscribe(status => { if (status === "SUBSCRIBED") send("ready", {}); });

    return () => {
      peers.forEach(p => p.pc.close());
      peers.clear();
      framers.forEach(f => clearInterval(f.timer));
      framers.clear();
      setWatchers(0);
      supabase.removeChannel(ch);
    };
  }, [token, enabled]); // eslint-disable-line react-hooks/exhaustive-deps

  return watchers;
}

// Admin side: ask the student's page for a live stream and play it. If a
// direct video link isn't up within a few seconds (or fails), switch to the
// picture fallback, which works on any network the exam itself works on.
// status: connecting | live | pictures | offline | failed | unavailable
const DIRECT_WAIT_MS = 10000;
const OFFLINE_MS = 25000;

export function useLiveWatch({ token, attempt, videoRef }) {
  const [status, setStatus] = useState("connecting");
  const [hasVideo, setHasVideo] = useState(false);
  const [frame, setFrame] = useState(null);

  useEffect(() => {
    if (!token || !liveSupported()) { setStatus("failed"); return undefined; }
    setStatus("connecting");
    setHasVideo(false);
    setFrame(null);
    const viewer = (window.crypto && crypto.randomUUID) ? crypto.randomUUID() : String(Math.random()).slice(2);
    const picViewer = `${viewer}-p`;
    const ch = supabase.channel(channelName(token), { config: { broadcast: { self: false } } });
    const send = (event, payload) => ch.send({ type: "broadcast", event, payload }).catch(() => {});
    let pc = null;
    let queue = null;
    let live = false;
    let pictures = false;
    let heard = false; // the student's page answered at all
    let keepAlive = null;

    const usePictures = () => {
      if (live || pictures) return;
      pictures = true;
      send("stop", { viewer });
      if (pc) { pc.close(); pc = null; }
      send("frames", { viewer: picViewer });
      keepAlive = setInterval(() => send("frames", { viewer: picViewer }), FRAME_KEEPALIVE_MS);
    };

    ch.on("broadcast", { event: "offer" }, async ({ payload }) => {
      if (!payload || payload.viewer !== viewer || pictures) return;
      heard = true;
      if (pc) pc.close();
      pc = new RTCPeerConnection({ iceServers: ICE_SERVERS });
      queue = candidateQueue(pc);
      const conn = pc;
      conn.ontrack = e => {
        const v = videoRef.current;
        if (v && e.streams[0]) { v.srcObject = e.streams[0]; v.play().catch(() => {}); }
        if (e.track.kind === "video") setHasVideo(true);
      };
      conn.onicecandidate = e => { if (e.candidate) send("ice", { viewer, from: "admin", candidate: e.candidate.toJSON() }); };
      conn.onconnectionstatechange = () => {
        if (conn.connectionState === "connected") { live = true; setStatus("live"); }
        if (conn.connectionState === "failed") { live = false; usePictures(); }
        if (conn.connectionState === "disconnected") setStatus("connecting");
      };
      try {
        await conn.setRemoteDescription(payload.sdp);
        queue.flush();
        await conn.setLocalDescription(await conn.createAnswer());
        send("answer", { viewer, sdp: conn.localDescription.toJSON() });
      } catch (e) { usePictures(); }
    });
    ch.on("broadcast", { event: "ice" }, ({ payload }) => {
      if (!payload || payload.viewer !== viewer || payload.from !== "student" || !queue) return;
      queue.add(payload.candidate);
    });
    ch.on("broadcast", { event: "frame" }, ({ payload }) => {
      if (!payload || payload.viewer !== picViewer || !pictures) return;
      heard = true;
      setFrame(payload.img);
      setStatus("pictures");
    });
    ch.on("broadcast", { event: "unavailable" }, ({ payload }) => {
      if (payload && (payload.viewer === viewer || payload.viewer === picViewer)) { heard = true; setStatus("unavailable"); }
    });
    // The student's page (re)joined: ask again if we're not watching yet.
    ch.on("broadcast", { event: "ready" }, () => {
      if (live) return;
      if (pictures) send("frames", { viewer: picViewer }); else send("watch", { viewer });
    });
    ch.subscribe(st => { if (st === "SUBSCRIBED") send("watch", { viewer }); });

    const direct = setTimeout(usePictures, DIRECT_WAIT_MS);
    const offline = setTimeout(() => { if (!heard) setStatus("offline"); }, OFFLINE_MS);
    const bye = () => { send("stop", { viewer }); send("stop", { viewer: picViewer }); };
    window.addEventListener("pagehide", bye);
    return () => {
      clearTimeout(direct);
      clearTimeout(offline);
      clearInterval(keepAlive);
      window.removeEventListener("pagehide", bye);
      bye();
      if (pc) pc.close();
      const v = videoRef.current;
      if (v) v.srcObject = null;
      supabase.removeChannel(ch);
    };
  }, [token, attempt]); // eslint-disable-line react-hooks/exhaustive-deps

  return { status, hasVideo, frame };
}
