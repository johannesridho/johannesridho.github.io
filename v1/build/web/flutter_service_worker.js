'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "520ffe5e83a65cb9b52c45bfc75625f0",
"favicon.ico": "7b024e53e5399bfeb2ff32a5b4c4c804",
"index.html": "44891f87a994a1fc133700ad307e046f",
"/": "44891f87a994a1fc133700ad307e046f",
"CNAME": "f62b8ba3baa306b3600eb8b7951bd252",
"main.dart.js": "d36615efd8582b388f6c4447f13ef0ed",
"flutter.js": "6fef97aeca90b426343ba6c5c9dc5d4a",
"icons/Icon-192.png": "b8ddab073eadd7707bd12f6ce1ee5fc6",
"icons/Icon-512.png": "2953b2046963e9ecaa9088d40a70e0ac",
"manifest.json": "d40da3b2916931fff9cdda8857ee60e2",
"assets/images/photo.webp": "52bbb9fb89e9c9260d924923c0a06aae",
"assets/images/achievements/bni-hackfest-malang.jpg": "9ae5c173d092ec21721e99a334260d7a",
"assets/images/achievements/f8-2019.jpg": "2a1d49896ef9083344607d906f337f8c",
"assets/images/achievements/startgaming.jpg": "89830bad8d3faa78b226b9505acf4562",
"assets/images/achievements/united-by-hcl.jpg": "fab51d245b8ffa84d50990fa11ba78ba",
"assets/images/achievements/dh-hackathon-2021.jpg": "3cd433a361010f535a7ad66439cc8fbc",
"assets/images/achievements/aws-hackdays-2019.jpg": "dd334213e4e32269669fb739a0178e79",
"assets/images/projects/gasing-evo-ultimate.png": "62ae8a1188741f909fff316dcaa35084",
"assets/images/projects/campaign.png": "1396921b57c1eeb52963d585f334592c",
"assets/images/projects/gasing-battle.png": "e82de2d4d5d077393aad0b7581c7bbb7",
"assets/images/projects/gasing-evo-menu.png": "90eabd177122d8df82e7a9da083dcaab",
"assets/images/projects/comet.png": "3ab96a8e3aaa57eaaac7d0196f4b10eb",
"assets/images/projects/novus.png": "66a343e61255c7b20b46fa52c304850d",
"assets/images/projects/qololo.png": "c8ca9bdf54c5730cbf8e6e08eaf8fc38",
"assets/images/experiences/kaspay.png": "0982ae60128a3e7803815b3dd308c693",
"assets/images/experiences/fp.jpg": "8a639c11bd56bbb7b73463911fd33594",
"assets/images/experiences/call-levels.jpg": "caa9ece004c731bfa79abbb4aace74ab",
"assets/images/project_thumbnails/ceki.webp": "84ccf7107a0d8af537cb7374789fe4d0",
"assets/images/project_thumbnails/patrons.webp": "ceba2d8bf86304aadfcd558b449af29a",
"assets/images/project_thumbnails/pandoraverse.webp": "ae99d10ef4ec838ff5326f09b1e684f5",
"assets/images/project_thumbnails/gasing-evo.webp": "f13b83faf7fcb9704784dc63d99ca6a9",
"assets/images/project_thumbnails/aident.webp": "825e0101192b39e75bcedd37d60f05fc",
"assets/images/project_thumbnails/gasing-battle.webp": "75f6a76d1b649fa05a45168a219d8e5f",
"assets/images/project_thumbnails/qololo.webp": "46ca602ef52872c19e9b9a3733dce7b0",
"assets/images/project_thumbnails/novus.webp": "fda260f07b508ef778223702ccc7759b",
"assets/images/project_thumbnails/eyve.webp": "b0f883a3eb807ffb50aa82310936c463",
"assets/images/project_thumbnails/campaign.webp": "87870d8dfd7bc8b7d064b290e71d0108",
"assets/images/project_thumbnails/clovero.webp": "d79c9cb79c89c9ca3d4c32f266d5becb",
"assets/images/project_thumbnails/comet.webp": "c4759a2facd0508b9a44289cfdb8b65c",
"assets/images/background.webp": "83e28c3d2ea7b99a01dc3f34af43ca32",
"assets/AssetManifest.json": "3573151e0283db84421d35e5a6f4778d",
"assets/NOTICES": "62fb5191a5880937b395e79788a02d5c",
"assets/FontManifest.json": "d751713988987e9331980363e24189ce",
"assets/icons/github.svg": "521081542cbbaf778c2fee9a0b199a3b",
"assets/icons/email.svg": "b89d8b6c2bc92fa9f4d5902807ed4e47",
"assets/icons/linkedin.svg": "d9275f99a5109c6baa6a46cef6b99dbb",
"assets/icons/leetcode.svg": "8c91eb9383cfa4eb328bca4b8504f17e",
"assets/icons/lichess.svg": "abd4632c9d040baa6938059c5a2eee97",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"assets/AssetManifest.bin": "16b2299dd2d4fe153e0d670dfde4c91a",
"canvaskit/skwasm.js": "1df4d741f441fa1a4d10530ced463ef8",
"canvaskit/skwasm.wasm": "6711032e17bf49924b2b001cef0d3ea3",
"canvaskit/chromium/canvaskit.js": "8c8392ce4a4364cbb240aa09b5652e05",
"canvaskit/chromium/canvaskit.wasm": "fc18c3010856029414b70cae1afc5cd9",
"canvaskit/canvaskit.js": "76f7d822f42397160c5dfc69cbc9b2de",
"canvaskit/profiling/canvaskit.js": "c21852696bc1cc82e8894d851c01921a",
"canvaskit/profiling/canvaskit.wasm": "371bc4e204443b0d5e774d64a046eb99",
"canvaskit/canvaskit.wasm": "f48eaf57cada79163ec6dec7929486ea",
"canvaskit/skwasm.worker.js": "19659053a277272607529ef87acf9d8a"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
