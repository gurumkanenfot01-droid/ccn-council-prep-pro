// Network helpers for students on weak mobile data.

// True on a slow or data-saving connection (Android Chrome reports this;
// other browsers don't, and are treated as normal).
export function slowNetwork() {
  const c = typeof navigator !== "undefined" && (navigator.connection || navigator.mozConnection || navigator.webkitConnection);
  if (!c) return false;
  return !!c.saveData || ["slow-2g", "2g"].includes(c.effectiveType) || (typeof c.downlink === "number" && c.downlink > 0 && c.downlink < 0.6);
}

// Before an automatic refresh: download the new version's page and files
// first. If that fails (no signal), don't refresh yet — a refresh with no
// network would leave the student on a browser error page.
export async function newVersionReady() {
  if (typeof navigator !== "undefined" && navigator.onLine === false) return false;
  try {
    const res = await fetch(`/?v=${Date.now()}`, { cache: "no-store" });
    if (!res.ok) return false;
    const html = await res.text();
    const files = [...html.matchAll(/(?:src|href)="(\/assets\/[^"]+)"/g)].map(m => m[1]);
    await Promise.all(files.map(f => fetch(f).then(r => { if (!r.ok) throw new Error(f); return r.blob(); })));
    return true;
  } catch (e) {
    return false;
  }
}
