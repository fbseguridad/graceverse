const CACHE = "graceverse-v1";

const ASSETS = [
  "/",
  "/palabra.html",
  "/oracion.html",
  "/juegos.html",
  "/historias.html",
  "/connect.html",
  "/apoyar.html",
  "/css/styles.css",
  "/js/app.js",
  "/js/verse.js",
  "/js/prayer.js",
  "/js/quiz.js",
  "/js/stories.js",
  "/js/connect.js",
  "/manifest.json"
];

self.addEventListener("install",event => {
  event.waitUntil(
    caches.open(CACHE)
      .then(cache => cache.addAll(ASSETS))
      .then(() => self.skipWaiting())
  );
});

self.addEventListener("activate",event => {
  event.waitUntil(
    caches.keys()
      .then(keys =>
        Promise.all(
          keys
            .filter(key => key !== CACHE)
            .map(key => caches.delete(key))
        )
      )
      .then(() => self.clients.claim())
  );
});

self.addEventListener("fetch",event => {

  if(event.request.method !== "GET") return;

  event.respondWith(
    fetch(event.request)
      .then(response => {

        const copy = response.clone();

        caches.open(CACHE)
          .then(cache => cache.put(event.request,copy))
          .catch(() => {});

        return response;
      })
      .catch(() => caches.match(event.request))
  );

});
