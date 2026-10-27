import { useEffect, useState } from "react";

// Each build writes its own id into the page (__BUILD_ID__) and into
// /version.json. Open pages check version.json now and then; when the id
// changes a newer version is live and the page should be reloaded.
const CHECK_MS = 60000;
let reloading = false;

// True while the page is reloading itself for an update, so the exam page
// doesn't report "left the exam screen" as the old page goes away.
export const isReloading = () => reloading;

export function reloadNow() {
  reloading = true;
  window.location.reload();
}

export function useUpdateAvailable() {
  const [ready, setReady] = useState(false);
  useEffect(() => {
    if (import.meta.env.DEV) return undefined;
    let alive = true;
    const check = async () => {
      try {
        const res = await fetch(`/version.json?t=${Date.now()}`, { cache: "no-store" });
        if (!res.ok) return;
        const { id } = await res.json();
        if (alive && id && id !== __BUILD_ID__) setReady(true);
      } catch (e) { /* offline — try again later */ }
    };
    check();
    const t = setInterval(check, CHECK_MS);
    const onVisible = () => { if (document.visibilityState === "visible") check(); };
    document.addEventListener("visibilitychange", onVisible);
    return () => { alive = false; clearInterval(t); document.removeEventListener("visibilitychange", onVisible); };
  }, []);
  return ready;
}
