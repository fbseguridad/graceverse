const CACHE = 'graceverse-v1-2';

const ASSETS = [
  '/',
  '/index.html',
  '/palabra.html',
  '/oracion.html',
  '/juegos.html',
  '/historias.html',
  '/connect.html',
  '/apoyar.html',
  '/manifest.json',
  '/css/styles.css',
  '/js/app.js',
  '/js/verse.js',
  '/js/prayer.js',
  '/js/quiz.js',
  '/js/stories.js',
  '/js/connect.js'
];

self.addEventListener('install', event => {
  event.waitUntil(
    caches.open(CACHE).then(cache => cache.addAll(ASSETS))
  );

  self.skipWaiting();
});

self.addEventListener('activate', event => {
  event.waitUntil(
    caches.keys().then(keys =>
      Promise.all(
        keys
          .filter(key => key !== CACHE)
          .map(key => caches.delete(key))
      )
    )
  );

  self.clients.claim();
});

self.addEventListener('fetch', event => {
  if (event.request.method !== 'GET') return;

  event.respondWith(
    fetch(event.request)
      .then(response => {
        const copy = response.clone();

        caches.open(CACHE).then(cache => {
          cache.put(event.request, copy);
        });

        return response;
      })
      .catch(() => caches.match(event.request))
  );
});
