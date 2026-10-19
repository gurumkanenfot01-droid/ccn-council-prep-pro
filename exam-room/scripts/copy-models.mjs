// Copies the on-device AI files out of node_modules into public/, so the site
// hosts them itself (no outside CDN on exam day). Runs before every dev/build;
// the copied files are git-ignored.
//   public/mediapipe    — MediaPipe runtime, used to spot a phone in view
//   public/face-models  — face-api.js models: face finder, landmarks, identity
import { copyFileSync, mkdirSync } from "node:fs";
import { dirname, join } from "node:path";
import { fileURLToPath } from "node:url";

const root = join(dirname(fileURLToPath(import.meta.url)), "..");
function copy(fromDir, toDir, files) {
  mkdirSync(join(root, toDir), { recursive: true });
  for (const f of files) copyFileSync(join(root, fromDir, f), join(root, toDir, f));
}
copy("node_modules/@mediapipe/tasks-vision/wasm", "public/mediapipe", [
  "vision_wasm_internal.js", "vision_wasm_internal.wasm",
  "vision_wasm_nosimd_internal.js", "vision_wasm_nosimd_internal.wasm",
]);
copy("node_modules/@vladmandic/face-api/model", "public/face-models", [
  "tiny_face_detector_model-weights_manifest.json", "tiny_face_detector_model.bin",
  "face_landmark_68_model-weights_manifest.json", "face_landmark_68_model.bin",
  "face_recognition_model-weights_manifest.json", "face_recognition_model.bin",
]);
console.log("Copied MediaPipe runtime and face models into public/");
