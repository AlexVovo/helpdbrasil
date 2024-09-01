'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "/": "index.html",
  "main.dart.js": "main.dart.js",
  "index.html": "index.html",
  "manifest.json": "manifest.json",
  // Adicione mais arquivos conforme necessário
};

self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(CACHE_NAME).then((cache) => {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener("activate", (event) => {
  return event.waitUntil(
    caches.keys().then((cacheNames) => {
      return Promise.all(
        cacheNames.map((cacheName) => {
          if (cacheName !== CACHE_NAME) {
            return caches.delete(cacheName);
          }
        })
      );
    })
  );
});

self.addEventListener("fetch", (event) => {
  const key = event.request.url.substring(self.location.origin.length + 1);
  if (RESOURCES[key]) {
    event.respondWith(
      caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          return response || fetch(event.request).then((response) => {
            cache.put(event.request, response.clone());
            return response;
          });
        });
      })
    );
  }
});
    
