// The CCN Exam Room Android app (android-app/) opens this site in a secure
// window (no screenshots or screen recording) and adds "CCNExamApp" to the
// user agent so the site can tell.
export const IN_APP = typeof navigator !== "undefined" && /CCNExamApp/.test(navigator.userAgent);

export const APP_DOWNLOAD_URL = "https://github.com/gurumkanenfot01-droid/ccn-council-prep-pro/releases/download/android-app/ccn-exam-room.apk";
// The Windows app (desktop-app/): the window is left out of screenshots, recordings and screen sharing.
export const DESKTOP_DOWNLOAD_URL = "https://github.com/gurumkanenfot01-droid/ccn-council-prep-pro/releases/download/desktop-app/ccn-exam-room-setup.exe";

// An Android phone using a normal browser (also catches Chrome's "Desktop site",
// which hides "Android" but still reports a touch screen on Linux).
export function isAndroidBrowser() {
  if (IN_APP || typeof navigator === "undefined") return false;
  const ua = navigator.userAgent || "";
  if (/Android/i.test(ua)) return true;
  return /Linux/.test(navigator.platform || "") && !/CrOS/.test(ua) && navigator.maxTouchPoints > 0;
}

// A Windows computer using a normal browser.
export function isWindowsBrowser() {
  if (IN_APP || typeof navigator === "undefined") return false;
  return /Windows NT/.test(navigator.userAgent || "");
}
