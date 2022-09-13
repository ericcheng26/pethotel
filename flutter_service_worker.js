'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "canvaskit/canvaskit.js": "2bc454a691c631b07a9307ac4ca47797",
"canvaskit/profiling/canvaskit.js": "38164e5a72bdad0faa4ce740c9b8e564",
"canvaskit/profiling/canvaskit.wasm": "95a45378b69e77af5ed2bc72b2209b94",
"canvaskit/canvaskit.wasm": "bf50631470eb967688cca13ee181af62",
"main.dart.js": "f52ab1c42c19a482577c5d6624394535",
"assets/AssetManifest.json": "0a979446a55dfced0e319123dc15385e",
"assets/assets/images/artists/martin_whale.jpg": "aa2a1769923201d75736150b3a17c246",
"assets/assets/images/artists/martin_chihuahua.jpg": "44632e63cb3b9c039164e8ed6e78c84d",
"assets/assets/images/playlists/The_Times_Square_EDITION.jpg": "8d2084d9bc68d39f95d103e7e109a881",
"assets/assets/images/playlists/image.jpg": "fc224f5d132e347997a9faa7bfe41f79",
"assets/assets/images/playlists/exp-bedroom.jpg": "e83a72af3d81087cf4182fd87298b8e6",
"assets/assets/images/playlists/amilla_maldives_resort.jpg": "3e86be1f558412855abd867f99657062",
"assets/assets/images/playlists/TimesSquare_LobbyBar_Terrace.jpg": "f2129bc1d6f2af8ec2f229631f2e1af6",
"assets/assets/images/playlists/Pendry20West_Exterior_Horizontal.jpeg": "e72ac29d9f63e3d7a3907602a4083189",
"assets/assets/images/playlists/banquo_spa_hotel.jpg": "d4f4cd5bc40d83b3162ac7f9553ec578",
"assets/assets/images/playlists/Aman_New_York.jpg": "e8d959fd94b5b30e6ed05ebf6b8768be",
"assets/assets/images/playlists/Iniala_Beach_House.jpeg": "7e2936d0fca2625ce01aefb160dea0c9",
"assets/assets/images/playlists/best-dog-boarding-barkley.jpg": "8af148c1325f7bb07b1f6099414d409d",
"assets/assets/images/playlists/Iniala_Beach_House_2.jpeg": "3ce15c6150035713d5315d1fc87075fa",
"assets/assets/images/playlists/b5d30d46f5512c331eb4048d1b343edf.jpg": "f9dc462cadabdefc5aeb37b8b2a66c01",
"assets/assets/images/playlists/encuentro_guadalupe.jpg": "0b43ab5ff007e4395e84b01bbda3bd1c",
"assets/assets/images/albums/artist4-album1.jpg": "892497aa9c5ff3b69704fb550cb55382",
"assets/assets/images/albums/artist6-album1.jpg": "facd77f516e55d7228b957b847a36183",
"assets/assets/images/albums/artist4-album3.jpg": "9ce4743258737789bb6b16d7700f364a",
"assets/assets/images/albums/artist2-album2.jpg": "58f5ca0d0b3d55aa245398d42aa2a6a4",
"assets/assets/images/albums/artist4-album2.jpg": "452591d89aab864cdcfe4046ab1f640a",
"assets/assets/images/albums/artist6-album3.jpg": "48de276497ff499db33fe0cdff50546a",
"assets/assets/images/albums/artist3-album1.jpg": "aa75283b933825fdd182324663d07199",
"assets/assets/images/albums/artist1-album3.jpg": "1f9bba3eb6278d6e2124d39245197abd",
"assets/assets/images/albums/artist5-album1.jpg": "3481d728309cf6c2d12cb268d217acef",
"assets/assets/images/albums/artist1-album1.jpg": "e3c638f3224befe15ef586ac6e4eab62",
"assets/assets/images/albums/artist1-album2.jpg": "0c6ae0ed4da4322ccc70c28badad24ba",
"assets/assets/images/albums/artist6-album2.jpg": "f0a90dc14f77f39827c0c96584e06a8e",
"assets/assets/images/albums/artist5-album2.jpg": "8df8c3e53049b64fd5e102300115ae96",
"assets/assets/images/record.jpeg": "556686c5027a6e9d77d2bfe7627067d7",
"assets/assets/images/news/recording_studio.jpg": "bd9d567b08da6a755b99bf549c4e6176",
"assets/assets/images/news/concert.jpeg": "9835c73420b012928c9df7462cb42c06",
"assets/assets/images/news/concert_heart.jpg": "cd982ab501396249dcf152e0dafa0625",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/shaders/ink_sparkle.frag": "9f41d629ec96faa7200375d9ea662d92",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/images/artists/martin_whale.jpg": "aa2a1769923201d75736150b3a17c246",
"assets/images/artists/martin_chihuahua.jpg": "44632e63cb3b9c039164e8ed6e78c84d",
"assets/images/playlists/The_Times_Square_EDITION.jpg": "8d2084d9bc68d39f95d103e7e109a881",
"assets/images/playlists/image.jpg": "fc224f5d132e347997a9faa7bfe41f79",
"assets/images/playlists/exp-bedroom.jpg": "e83a72af3d81087cf4182fd87298b8e6",
"assets/images/playlists/amilla_maldives_resort.jpg": "3e86be1f558412855abd867f99657062",
"assets/images/playlists/TimesSquare_LobbyBar_Terrace.jpg": "f2129bc1d6f2af8ec2f229631f2e1af6",
"assets/images/playlists/Pendry20West_Exterior_Horizontal.jpeg": "e72ac29d9f63e3d7a3907602a4083189",
"assets/images/playlists/banquo_spa_hotel.jpg": "d4f4cd5bc40d83b3162ac7f9553ec578",
"assets/images/playlists/Aman_New_York.jpg": "e8d959fd94b5b30e6ed05ebf6b8768be",
"assets/images/playlists/Iniala_Beach_House.jpeg": "7e2936d0fca2625ce01aefb160dea0c9",
"assets/images/playlists/best-dog-boarding-barkley.jpg": "8af148c1325f7bb07b1f6099414d409d",
"assets/images/playlists/Iniala_Beach_House_2.jpeg": "3ce15c6150035713d5315d1fc87075fa",
"assets/images/playlists/b5d30d46f5512c331eb4048d1b343edf.jpg": "f9dc462cadabdefc5aeb37b8b2a66c01",
"assets/images/playlists/encuentro_guadalupe.jpg": "0b43ab5ff007e4395e84b01bbda3bd1c",
"assets/images/albums/artist4-album1.jpg": "892497aa9c5ff3b69704fb550cb55382",
"assets/images/albums/artist6-album1.jpg": "facd77f516e55d7228b957b847a36183",
"assets/images/albums/artist4-album3.jpg": "9ce4743258737789bb6b16d7700f364a",
"assets/images/albums/artist2-album2.jpg": "58f5ca0d0b3d55aa245398d42aa2a6a4",
"assets/images/albums/artist4-album2.jpg": "452591d89aab864cdcfe4046ab1f640a",
"assets/images/albums/artist6-album3.jpg": "48de276497ff499db33fe0cdff50546a",
"assets/images/albums/artist3-album1.jpg": "aa75283b933825fdd182324663d07199",
"assets/images/albums/artist1-album3.jpg": "1f9bba3eb6278d6e2124d39245197abd",
"assets/images/albums/artist5-album1.jpg": "3481d728309cf6c2d12cb268d217acef",
"assets/images/albums/artist1-album1.jpg": "e3c638f3224befe15ef586ac6e4eab62",
"assets/images/albums/artist1-album2.jpg": "0c6ae0ed4da4322ccc70c28badad24ba",
"assets/images/albums/artist6-album2.jpg": "f0a90dc14f77f39827c0c96584e06a8e",
"assets/images/albums/artist5-album2.jpg": "8df8c3e53049b64fd5e102300115ae96",
"assets/images/record.jpeg": "556686c5027a6e9d77d2bfe7627067d7",
"assets/images/news/recording_studio.jpg": "bd9d567b08da6a755b99bf549c4e6176",
"assets/images/news/concert.jpeg": "9835c73420b012928c9df7462cb42c06",
"assets/images/news/concert_heart.jpg": "cd982ab501396249dcf152e0dafa0625",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/NOTICES": "cad9d17fc1f9dcd6a40c9978a96ac589",
"assets/favicon.png": "48ad5d0b620c31235e5fa38f0ba29d01",
"assets/background_icon.png": "77a9b5646c6377caa68029d705fd5d55",
"flutter.js": "f85e6fb278b0fd20c349186fb46ae36d",
"index.html": "2e56493ea942b792e4245c5f7e0e26b1",
"/": "2e56493ea942b792e4245c5f7e0e26b1",
"favicon.png": "48ad5d0b620c31235e5fa38f0ba29d01",
"version.json": "ba8958967e730c9d204ae977d4728116",
"CNAME": "3e40f9283cbb1ee2f70075b20ae09ed0",
"manifest.json": "5ef8cb1477c8d78f7f909b5c26895096",
"icons/Icon-maskable-192.png": "68a8cf54b8bf823e73a481739f0480a1",
"icons/Icon-maskable-512.png": "7cad28e85a689a722f79de717a9a4a79",
"icons/Icon-192.png": "68a8cf54b8bf823e73a481739f0480a1",
"icons/Icon-512.png": "7cad28e85a689a722f79de717a9a4a79"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
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
