// This browser's own id, kept on the device, so a code can be signed in on one
// device at a time (refreshing or reopening the page is the same device).
const KEY = "exam-login-device";
let memo = null;
export function loginDeviceId() {
  if (memo) return memo;
  try {
    memo = localStorage.getItem(KEY);
    if (!memo) { memo = crypto.randomUUID(); localStorage.setItem(KEY, memo); }
  } catch (e) {
    memo = (crypto.randomUUID && crypto.randomUUID()) || String(Math.random()).slice(2) + Date.now();
  }
  return memo;
}
