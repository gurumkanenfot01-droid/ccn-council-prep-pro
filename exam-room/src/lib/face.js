// On-device face analysis with face-api.js (hosted by this site under
// /face-models). Used for: counting faces, head direction, and the 128-number
// face descriptor that the database compares with the registered student.

let faceapi = null;
let loading = null;

export function loadFaceModels() {
  if (!loading) {
    loading = (async () => {
      const fa = await import("@vladmandic/face-api");
      try { await fa.tf.setBackend("webgl"); } catch (e) { /* tf picks the CPU backend */ }
      await fa.tf.ready();
      const base = `${window.location.origin}/face-models`;
      await Promise.all([
        fa.nets.tinyFaceDetector.loadFromUri(base),
        fa.nets.faceLandmark68Net.loadFromUri(base),
        fa.nets.faceRecognitionNet.loadFromUri(base),
      ]);
      faceapi = fa;
      return fa;
    })().catch(e => { loading = null; throw e; });
  }
  return loading;
}

function detectorOptions() {
  return new faceapi.TinyFaceDetectorOptions({ inputSize: 320, scoreThreshold: 0.5 });
}

function videoReady(video) {
  return video && video.readyState >= 2 && video.videoWidth > 0;
}

// Head turn: how far the nose tip sits from the middle of the outer eye
// corners, in eye-widths. About 0 facing the screen; ±0.3 or more = turned.
export function yawOf(landmarks) {
  const p = landmarks.positions;
  const left = p[36], right = p[45], nose = p[30];
  const width = Math.abs(right.x - left.x) || 1;
  return (nose.x - (left.x + right.x) / 2) / width;
}

// Poor or coloured light (a red bulb, a dim room): a brightened, high-contrast
// black-and-white copy of the frame. Each pixel uses its brightest colour
// channel, so red or blue light still shows the face, then the picture is
// stretched so its bright parts become bright.
let boostCanvas = null;
function boostedFrame(video) {
  const w = 320;
  const h = Math.round((video.videoHeight / video.videoWidth) * w) || 240;
  boostCanvas = boostCanvas || document.createElement("canvas");
  boostCanvas.width = w; boostCanvas.height = h;
  const ctx = boostCanvas.getContext("2d", { willReadFrequently: true });
  ctx.drawImage(video, 0, 0, w, h);
  const img = ctx.getImageData(0, 0, w, h);
  const px = img.data;
  const hist = new Uint32Array(256);
  for (let i = 0; i < px.length; i += 4) {
    const v = Math.max(px[i], px[i + 1], px[i + 2]);
    px[i] = v; hist[v]++;
  }
  // Brightness at the 2nd and 98th percentiles → stretch to 0–255.
  const n = px.length / 4;
  let lo = 0, hi = 255, acc = 0;
  for (let v = 0; v < 256; v++) { acc += hist[v]; if (acc >= n * 0.02) { lo = v; break; } }
  acc = 0;
  for (let v = 255; v >= 0; v--) { acc += hist[v]; if (acc >= n * 0.02) { hi = v; break; } }
  const span = Math.max(24, hi - lo);
  for (let i = 0; i < px.length; i += 4) {
    const v = Math.max(0, Math.min(255, ((px[i] - lo) * 255) / span));
    px[i] = px[i + 1] = px[i + 2] = v;
  }
  ctx.putImageData(img, 0, 0);
  return boostCanvas;
}

// Every face in view with its head direction. [] if none.
// If the normal picture shows no face (poor or coloured light), the boosted
// copy is checked too, so students in a dim or red-lit room are still seen.
export async function scanFaces(video) {
  if (!faceapi || !videoReady(video)) return null;
  let found = await faceapi.detectAllFaces(video, detectorOptions()).withFaceLandmarks();
  if (found.length === 0) {
    try {
      found = await faceapi.detectAllFaces(boostedFrame(video), new faceapi.TinyFaceDetectorOptions({ inputSize: 320, scoreThreshold: 0.4 })).withFaceLandmarks();
    } catch (e) { found = []; }
  }
  return found.map(f => ({ score: f.detection.score, box: f.detection.box, yaw: yawOf(f.landmarks) }));
}

// How bright the picture is, 0–255 (each pixel's brightest colour channel,
// so a red or blue bulb still counts as light).
let meterCanvas = null;
export function frameBrightness(video) {
  if (!videoReady(video)) return 255;
  meterCanvas = meterCanvas || document.createElement("canvas");
  meterCanvas.width = 32; meterCanvas.height = 24;
  const ctx = meterCanvas.getContext("2d", { willReadFrequently: true });
  ctx.drawImage(video, 0, 0, 32, 24);
  const px = ctx.getImageData(0, 0, 32, 24).data;
  let sum = 0;
  for (let i = 0; i < px.length; i += 4) sum += Math.max(px[i], px[i + 1], px[i + 2]);
  return sum / (px.length / 4);
}

// Brightens a dark picture while keeping its colours (all channels get the
// same gain), so the face reads like one taken in better light.
function brighten(ctx, w, h) {
  const img = ctx.getImageData(0, 0, w, h);
  const px = img.data;
  const hist = new Uint32Array(256);
  for (let i = 0; i < px.length; i += 4) hist[Math.max(px[i], px[i + 1], px[i + 2])]++;
  let hi = 255, acc = 0;
  for (let v = 255; v >= 0; v--) { acc += hist[v]; if (acc >= (px.length / 4) * 0.02) { hi = v; break; } }
  const gain = Math.min(4, 230 / Math.max(hi, 1));
  if (gain <= 1.15) return false;
  for (let i = 0; i < px.length; i += 4) {
    px[i] = Math.min(255, px[i] * gain); px[i + 1] = Math.min(255, px[i + 1] * gain); px[i + 2] = Math.min(255, px[i + 2] * gain);
  }
  ctx.putImageData(img, 0, 0);
  return true;
}

let brightCanvas = null;
function brightFrame(video) {
  const w = Math.min(640, video.videoWidth);
  const h = Math.round((video.videoHeight / video.videoWidth) * w) || 480;
  brightCanvas = brightCanvas || document.createElement("canvas");
  brightCanvas.width = w; brightCanvas.height = h;
  const ctx = brightCanvas.getContext("2d", { willReadFrequently: true });
  ctx.drawImage(video, 0, 0, w, h);
  brighten(ctx, w, h);
  return brightCanvas;
}

// The face descriptor of the single face in view.
// Returns { descriptor } or { error: "no_face" | "multiple_faces" }.
// night (Council Exams only): if the normal picture shows no face, a gentler
// detector and then a brightened copy of the picture are tried.
export async function readDescriptor(video, { night = false } = {}) {
  if (!faceapi || !videoReady(video)) return { error: "no_face" };
  let found = await faceapi.detectAllFaces(video, detectorOptions()).withFaceLandmarks().withFaceDescriptors();
  if (!night) {
    if (found.length === 0) return { error: "no_face" };
    if (found.length > 1) return { error: "multiple_faces" };
    return { descriptor: Array.from(found[0].descriptor), yaw: yawOf(found[0].landmarks) };
  }
  const gentle = new faceapi.TinyFaceDetectorOptions({ inputSize: 416, scoreThreshold: 0.3 });
  if (found.length === 0) found = await faceapi.detectAllFaces(video, gentle).withFaceLandmarks().withFaceDescriptors();
  if (found.length === 0) {
    try { found = await faceapi.detectAllFaces(brightFrame(video), gentle).withFaceLandmarks().withFaceDescriptors(); } catch (e) { found = []; }
  }
  if (found.length === 0) return { error: "no_face" };
  if (found.length > 1) return { error: "multiple_faces" };
  return { descriptor: Array.from(found[0].descriptor), yaw: yawOf(found[0].landmarks) };
}

// Average of several readings: steadier than a single frame.
export function averageDescriptors(list) {
  const out = new Array(128).fill(0);
  list.forEach(d => d.forEach((v, i) => { out[i] += v / list.length; }));
  return out;
}

export function descriptorDistance(a, b) {
  let sum = 0;
  for (let i = 0; i < a.length; i++) sum += (a[i] - b[i]) ** 2;
  return Math.sqrt(sum);
}

// Small JPEG for evidence (about 10 KB).
let snapCanvas = null;
export function snapshot(video, width = 240, { night = false } = {}) {
  if (!videoReady(video)) return null;
  snapCanvas = snapCanvas || document.createElement("canvas");
  const height = Math.round((video.videoHeight / video.videoWidth) * width);
  snapCanvas.width = width;
  snapCanvas.height = height;
  const ctx = snapCanvas.getContext("2d", { willReadFrequently: true });
  ctx.drawImage(video, 0, 0, width, height);
  // Council Exams at night: brighten the photo so the administrator can see the face.
  if (night) { try { brighten(ctx, width, height); } catch (e) { /* keep the plain photo */ } }
  try { return snapCanvas.toDataURL("image/jpeg", 0.6); } catch (e) { return null; }
}
