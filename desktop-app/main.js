// CCN Exam Room for Windows laptops: the exam website in a secure full-screen window.
// - Content protection: Windows leaves this window out of screenshots, screen
//   recordings and screen sharing (Snipping Tool, Print Screen, OBS, Zoom, Meet…).
// - No menus or developer tools; other websites open in the normal browser.
// - Camera and microphone are passed through to the website's proctoring.
// The website recognises the app by "CCNExamApp" in the user agent.
const { app, BrowserWindow, session, shell, powerSaveBlocker, dialog } = require("electron");

const HOME = process.env.CCN_EXAM_URL || "https://ccn-exam-room.vercel.app/";
const ORIGIN = new URL(HOME).origin;

if (!app.requestSingleInstanceLock()) app.quit();

let win = null;

function ours(url) {
  try { return new URL(url).origin === ORIGIN; } catch (e) { return false; }
}

function createWindow() {
  win = new BrowserWindow({
    width: 1280,
    height: 800,
    fullscreen: true,
    autoHideMenuBar: true,
    backgroundColor: "#ffffff",
    title: "CCN Exam Room",
    webPreferences: {
      contextIsolation: true,
      nodeIntegration: false,
      sandbox: true,
      devTools: false,
      spellcheck: false,
      backgroundThrottling: false,
    },
  });
  win.setMenu(null);
  win.setContentProtection(true);

  const wc = win.webContents;
  wc.setUserAgent(`${wc.getUserAgent().replace(/ Electron\/\S+/, "")} CCNExamApp/1 Desktop`);

  // Other websites open in the normal browser, never inside the exam window.
  wc.setWindowOpenHandler(({ url }) => {
    if (/^https?:/.test(url)) shell.openExternal(url);
    return { action: "deny" };
  });
  wc.on("will-navigate", (e, url) => {
    if (!ours(url)) { e.preventDefault(); if (/^https?:/.test(url)) shell.openExternal(url); }
  });

  // No reload / zoom / dev-tools shortcuts except a plain reload.
  wc.on("before-input-event", (e, input) => {
    const k = (input.key || "").toLowerCase();
    if (input.control && input.shift && ["i", "j", "c"].includes(k)) e.preventDefault();
    if (k === "f12") e.preventDefault();
  });

  wc.on("did-fail-load", (e, code, desc, url, isMainFrame) => {
    if (!isMainFrame || code === -3) return; // -3 = navigation replaced by another
    wc.loadURL("data:text/html;charset=utf-8," + encodeURIComponent(
      `<html><body style="font-family:Segoe UI,sans-serif;text-align:center;padding:80px 20px;color:#0B3C5D">
       <h2>No internet connection</h2><p>Check your Wi-Fi or data, then click the button.</p>
       <button style="font-size:18px;padding:12px 28px;border:0;border-radius:10px;background:#0B3C5D;color:#fff;cursor:pointer"
         onclick="location.href='${HOME}'">Try again</button></body></html>`));
  });

  // Leaving the exam: ask first.
  win.on("close", e => {
    const choice = dialog.showMessageBoxSync(win, {
      type: "question", buttons: ["Stay", "Close the app"], defaultId: 0, cancelId: 0,
      title: "CCN Exam Room", message: "Close CCN Exam Room?",
      detail: "If you are in an exam, your time keeps running and leaving is recorded.",
    });
    if (choice === 0) e.preventDefault();
  });
  win.on("closed", () => { win = null; });

  wc.loadURL(HOME);
}

app.on("second-instance", () => {
  if (win) { if (win.isMinimized()) win.restore(); win.focus(); }
});

app.whenReady().then(() => {
  const ses = session.defaultSession;
  ses.setPermissionRequestHandler((wc, permission, callback, details) => {
    const ok = ours(details.requestingUrl || wc.getURL()) &&
      ["media", "fullscreen", "notifications", "clipboard-sanitized-write"].includes(permission);
    callback(ok);
  });
  ses.setPermissionCheckHandler((wc, permission, requestingOrigin) =>
    requestingOrigin === ORIGIN && ["media", "fullscreen", "notifications", "clipboard-sanitized-write"].includes(permission));
  powerSaveBlocker.start("prevent-display-sleep");
  createWindow();
});

app.on("window-all-closed", () => app.quit());
