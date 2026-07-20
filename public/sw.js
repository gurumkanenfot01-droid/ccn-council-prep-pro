const CACHE_NAME = "ccn-prep-shell-v3";
const APP_SHELL = ["/", "/manifest.json", "/icons/icon-192.png", "/icons/icon-512.png"];

self.addEventListener("install", (event) => {
  event.waitUntil(
    caches.open(CACHE_NAME).then((cache) => cache.addAll(APP_SHELL))
  );
  self.skipWaiting();
});

self.addEventListener("activate", (event) => {
  event.waitUntil(
    caches.keys().then((keys) =>
      Promise.all(
        keys.filter((key) => key !== CACHE_NAME).map((key) => caches.delete(key))
      )
    )
  );
  self.clients.claim();
});

self.addEventListener("fetch", (event) => {
  if (event.request.method !== "GET") return;

  // Never cache Supabase requests (auth/session state and live data) —
  // always go to the network so users never see stale data or a stale
  // logged-in/out state.
  if (event.request.url.includes(".supabase.co")) return;

  // Network-first: always try to fetch the freshest version so a new deploy
  // is visible immediately, falling back to the cached copy only when the
  // network request fails (offline). Cache-first previously meant a device
  // that had ever loaded the app would keep serving that exact old version
  // indefinitely, silently updating the cache in the background but never
  // actually showing the update.
  event.respondWith(
    fetch(event.request)
      .then((response) => {
        if (response.ok) {
          const clone = response.clone();
          caches.open(CACHE_NAME).then((cache) => cache.put(event.request, clone));
        }
        return response;
      })
      .catch(() => caches.match(event.request))
  );
});
