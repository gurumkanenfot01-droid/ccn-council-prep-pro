// Same loadJSON(key, fallback) / saveJSON(key, value) call shape as the CCN app's
// dataStore, but everything lives on this device (localStorage), so the class
// works with no account and fully offline. Every access is wrapped because
// storage can be blocked (private mode, full disk).

const PREFIX = "aitc-";

export function loadJSON(key, fallback) {
  try {
    const raw = window.localStorage.getItem(PREFIX + key);
    return raw == null ? fallback : JSON.parse(raw);
  } catch {
    return fallback;
  }
}

export function saveJSON(key, value) {
  try {
    if (value === null || value === undefined) window.localStorage.removeItem(PREFIX + key);
    else window.localStorage.setItem(PREFIX + key, JSON.stringify(value));
  } catch { /* storage full or blocked: keep working in memory */ }
}

export function clearAll() {
  try {
    Object.keys(window.localStorage).filter(k => k.startsWith(PREFIX)).forEach(k => window.localStorage.removeItem(k));
  } catch { /* ignore */ }
}
