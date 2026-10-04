// Offline support. Progress is stored on the device, so the whole class works
// offline once it has been opened.
//  - Pages and lesson data (/content/*.json): network first, so a new day you
//    upload shows up straight away; the saved copy is used when offline.
//  - Everything else (app code, pictures, fonts): cache first, fast. This also
//    covers pictures of days added in the app (Supabase storage, named by content).
//  - Supabase data and sign-in are never cached.
const CACHE_NAME = "ai-trainer-class-v6";
const APP_SHELL = ["/", "/manifest.json", "/icons/icon-192.png", "/icons/icon-512.png", "/icons/icon.svg"];

self.addEventListener("install", (event) => {
  event.waitUntil(caches.open(CACHE_NAME).then((cache) => cache.addAll(APP_SHELL)));
  self.skipWaiting();
});

self.addEventListener("activate", (event) => {
  event.waitUntil(
    caches.keys().then((keys) => Promise.all(keys.filter((key) => key !== CACHE_NAME).map((key) => caches.delete(key))))
  );
  self.clients.claim();
});

function networkFirst(req, cacheKey) {
  return fetch(req)
    .then((res) => {
      if (res.ok) { const copy = res.clone(); caches.open(CACHE_NAME).then((cache) => cache.put(cacheKey || req, copy)); }
      return res;
    })
    .catch(() => caches.match(cacheKey || req, { ignoreSearch: !cacheKey }));
}

self.addEventListener("fetch", (event) => {
  const req = event.request;
  if (req.method !== "GET") return;
  const url = new URL(req.url);

  if (req.mode === "navigate") { event.respondWith(networkFirst(req, "/")); return; }
  if (url.origin === self.location.origin && url.pathname.startsWith("/content/") && url.pathname.endsWith(".json")) {
    event.respondWith(networkFirst(req));
    return;
  }

  const isFont = url.hostname === "fonts.googleapis.com" || url.hostname === "fonts.gstatic.com";
  const isDayPicture = url.pathname.startsWith("/storage/v1/object/public/content/");
  if (url.origin !== self.location.origin && !isFont && !isDayPicture) return;

  event.respondWith(
    caches.match(req).then((cached) => cached || fetch(req).then((res) => {
      if (res.ok || res.type === "opaque") { const copy = res.clone(); caches.open(CACHE_NAME).then((cache) => cache.put(req, copy)); }
      return res;
    }))
  );
});
