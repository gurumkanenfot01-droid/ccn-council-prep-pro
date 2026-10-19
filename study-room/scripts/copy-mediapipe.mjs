// Copies MediaPipe's face-detection runtime (WebAssembly) out of node_modules
// into public/, so the site hosts it itself instead of loading it from a CDN.
// Runs before every dev/build; the copied files are git-ignored.
import { copyFileSync, mkdirSync } from "node:fs";
import { dirname, join } from "node:path";
import { fileURLToPath } from "node:url";

const root = join(dirname(fileURLToPath(import.meta.url)), "..");
const from = join(root, "node_modules/@mediapipe/tasks-vision/wasm");
const to = join(root, "public/mediapipe");
mkdirSync(to, { recursive: true });
for (const f of [
  "vision_wasm_internal.js",
  "vision_wasm_internal.wasm",
  "vision_wasm_nosimd_internal.js",
  "vision_wasm_nosimd_internal.wasm",
]) {
  copyFileSync(join(from, f), join(to, f));
}
console.log("Copied MediaPipe runtime to public/mediapipe");
