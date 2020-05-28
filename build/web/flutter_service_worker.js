'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "f42502c43c8c800c29975a7ddd552907",
"assets/assets/fonts/font_pixel.ttf": "5fcd6c657ffa8a6791632c705f0944ea",
"assets/assets/images/contact_button.png": "8beb96230455262025de9b7dac9dac6b",
"assets/assets/images/itens/bag_coins.png": "90a2600788a360f063910c55b2b4f3bf",
"assets/assets/images/itens/barrel.png": "dc4d5a9e456b6f1c6ec6fdcc66af7727",
"assets/assets/images/itens/bookshelf.png": "ce2fc17cb8251da9966a3e91bb0b2272",
"assets/assets/images/itens/flag_red.png": "6aca7b9e01f86f1b1a45e262e65821b8",
"assets/assets/images/itens/green_gem.png": "6022273f94b961100129b33ea04b64a9",
"assets/assets/images/itens/guard.png": "8509f9ddeb51544bf0b06c7562869c91",
"assets/assets/images/itens/orange_gem.png": "2f3f1c7f16060fa011b6d7ac99e9025b",
"assets/assets/images/itens/purple_gem.png": "e8ada15c2b2106cefc205e32a46516ec",
"assets/assets/images/itens/table.png": "5e22fb237c60943f46ba18d5e176c10c",
"assets/assets/images/itens/table_2.png": "e35bcde5b477983c943c0ce8657d87bb",
"assets/assets/images/itens/torch_spritesheet.png": "858f57abd642f0303de50d719532f198",
"assets/assets/images/itens/white_gem.png": "349ef92669498f0a0b9e347b82a48aa9",
"assets/assets/images/itens/yellow_gem.png": "cced4fb2f5eae21892f796f616736de1",
"assets/assets/images/joystick_background.png": "2eef7b32e484d81f07eeb405b39c83a4",
"assets/assets/images/joystick_knob.png": "c088b1ce385c20537c22dc2d4d39245a",
"assets/assets/images/npc/king_idle.png": "cef75ff03334e3b8ef1891bc880662da",
"assets/assets/images/npc/princess_idle.png": "d642fbfef4cfcc308b916db09b39e45c",
"assets/assets/images/npc/prince_idle.png": "5a50924698477fc1d63724ec23bf9290",
"assets/assets/images/npc/queen_idle.png": "ca2a48da077cd43cc59e4ca4abba62df",
"assets/assets/images/npc/sensei.png": "fad078f0177438c1ced6ff980e7b6010",
"assets/assets/images/npc/sensei_face.png": "ed0b969dddeff102f680a24c3a5e977e",
"assets/assets/images/player/player1.png": "f56de6620ed31c6969666295021ecb1a",
"assets/assets/images/player/player2.png": "51ee70459f24abc0ae8dd698fdb9ac9e",
"assets/assets/images/player/player3.png": "de60d8eaa312f57c634910e3245c8219",
"assets/assets/images/player/player4.png": "e38563f24ec7b0b5ab25ea51196f6c1e",
"assets/assets/images/player/player5.png": "8658cf016a644b96d4841249766ae9a3",
"assets/assets/images/projects/apex-plus.png": "5aab08963c37b7754063b334a7a819dd",
"assets/assets/images/projects/business-monsters.png": "51734926d887fac0b3e64e28d117dad0",
"assets/assets/images/projects/findseguros.png": "72817e96e7876f27c2e28e6fd7374b96",
"assets/assets/images/projects/hackamoon.png": "8462686e8031484157e0913192e4f525",
"assets/assets/images/projects/localmarket.png": "5ea62cfa47f700fe038d3653b49abcc8",
"assets/assets/images/projects/petoshopo.png": "2e9153b93294c0b7b0ea82881f1660ae",
"assets/assets/images/projects_button.png": "1ea8be1fb0353658cdb69b5bf4611cfd",
"assets/assets/images/surprised.png": "8b1897ae92f3a077e0aadaef2626d65a",
"assets/assets/images/tile/floor.png": "2401ed96c25173571af4c648adfdee13",
"assets/assets/images/tile/left_carpet.png": "78e607075e3c6cb22d43dc362cc2bfc4",
"assets/assets/images/tile/left_end_floor.png": "3bc5efc423e3612df864c7bc088c263e",
"assets/assets/images/tile/left_inner_floor.png": "5635f4446385ab4708a4ad46727fa450",
"assets/assets/images/tile/left_path_stairs.png": "77c514242d1f22758e27e57ba99907bb",
"assets/assets/images/tile/left_special_floor.png": "f4399371b6abb133fc605aec29e67a5d",
"assets/assets/images/tile/left_stairs.png": "0033b4f82d6333387c62b0e08e89289c",
"assets/assets/images/tile/mid_carpet.png": "08bce518b025662ce8b8825e0515fd7e",
"assets/assets/images/tile/mid_end_floor.png": "c2d53ae3045dbf15267b7ee7563a1199",
"assets/assets/images/tile/mid_inner_floor.png": "122e12c7dfee00cff44562b7500ed7cb",
"assets/assets/images/tile/mid_path_stairs.png": "83005c5047e44926feccdff35dc7fa53",
"assets/assets/images/tile/mid_stairs.png": "35987290124301d66aa5dc1982f2a446",
"assets/assets/images/tile/old_wall.png": "5a3a9e92c2829ee165ad3d0f9702a060",
"assets/assets/images/tile/right_carpet.png": "b4b1a8f7236d9fac2806c50ec2ced12d",
"assets/assets/images/tile/right_end_floor.png": "eb57a0dc3c6e85c5fd22934e5fa51b1a",
"assets/assets/images/tile/right_inner_floor.png": "a86ffb1e09fc4b21ff98bd00efac6ad0",
"assets/assets/images/tile/right_path_stairs.png": "a727e650e33db30911377da50d555328",
"assets/assets/images/tile/right_special_floor.png": "cabd76945fcbd54768e8dc67f52f41db",
"assets/assets/images/tile/right_stairs.png": "190b5e0de38d275c9ade619fede595cc",
"assets/assets/images/tile/top_carpet.png": "50d879114802094943ffdfc1771b931f",
"assets/assets/images/tile/top_left_carpet.png": "efb9987833ca98d4ec22f5f0933e45ce",
"assets/assets/images/tile/top_right_carpet.png": "aa9880fef0f0874509a8c1cabc96b0be",
"assets/assets/images/tile/wall_mid.png": "7a6ce85ad0ebd6694dd57e9fdca7535b",
"assets/assets/images/tile/wall_top_inner_left.png": "484e3c33e8559ff61f560e5f32791c5a",
"assets/assets/images/tile/wall_top_inner_right.png": "b26bd1cad50d0201d41ab18200976cfc",
"assets/assets/images/tile/wall_top_left.png": "095fac9929d1fbda31f3193007cd5464",
"assets/assets/images/tile/wall_top_mid.png": "7379fdd814fb0101fb3bb2aefeafe20f",
"assets/assets/images/tile/wall_top_right.png": "ceeccec9c2a4faa5706eab90e7a421d2",
"assets/assets/translations/en.json": "2b18250416d6110762bf83efb92f2136",
"assets/assets/translations/pt.json": "eaa471a82a5aa19c4b4defa8cd679995",
"assets/FontManifest.json": "973ad6b87c2f5856669ee3779e2aa4d4",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/LICENSE": "0c13cfb137e18d6504ef4a86a2d8d994",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/packages/easy_localization/i18n/ar-DZ.json": "acc0a8eebb2fcee312764600f7cc41ec",
"assets/packages/easy_localization/i18n/ar.json": "acc0a8eebb2fcee312764600f7cc41ec",
"assets/packages/easy_localization/i18n/en-US.json": "5bd908341879a431441c8208ae30e4fd",
"assets/packages/easy_localization/i18n/en.json": "5bd908341879a431441c8208ae30e4fd",
"assets/packages/rflutter_alert/assets/images/2.0x/close.png": "abaa692ee4fa94f76ad099a7a437bd4f",
"assets/packages/rflutter_alert/assets/images/2.0x/icon_error.png": "2da9704815c606109493d8af19999a65",
"assets/packages/rflutter_alert/assets/images/2.0x/icon_info.png": "612ea65413e042e3df408a8548cefe71",
"assets/packages/rflutter_alert/assets/images/2.0x/icon_success.png": "7d6abdd1b85e78df76b2837996749a43",
"assets/packages/rflutter_alert/assets/images/2.0x/icon_warning.png": "e4606e6910d7c48132912eb818e3a55f",
"assets/packages/rflutter_alert/assets/images/3.0x/close.png": "98d2de9ca72dc92b1c9a2835a7464a8c",
"assets/packages/rflutter_alert/assets/images/3.0x/icon_error.png": "15ca57e31f94cadd75d8e2b2098239bd",
"assets/packages/rflutter_alert/assets/images/3.0x/icon_info.png": "e68e8527c1eb78949351a6582469fe55",
"assets/packages/rflutter_alert/assets/images/3.0x/icon_success.png": "1c04416085cc343b99d1544a723c7e62",
"assets/packages/rflutter_alert/assets/images/3.0x/icon_warning.png": "e5f369189faa13e7586459afbe4ffab9",
"assets/packages/rflutter_alert/assets/images/close.png": "13c168d8841fcaba94ee91e8adc3617f",
"assets/packages/rflutter_alert/assets/images/icon_error.png": "f2b71a724964b51ac26239413e73f787",
"assets/packages/rflutter_alert/assets/images/icon_info.png": "3f71f68cae4d420cecbf996f37b0763c",
"assets/packages/rflutter_alert/assets/images/icon_success.png": "8bb472ce3c765f567aa3f28915c1a8f4",
"assets/packages/rflutter_alert/assets/images/icon_warning.png": "ccfc1396d29de3ac730da38a8ab20098",
"favicon.png": "9317ace927ec46385586fdd78708b2fd",
"icons/Icon-192.png": "0ab66d15192bdbaa8158e427c788254a",
"icons/Icon-512.png": "37f578072386752630d371e05a75e279",
"index.html": "b4769510732f04864d1eae4baa547180",
"/": "b4769510732f04864d1eae4baa547180",
"main.dart.js": "3b62a0f47474c10bf92055003e3bfaaf",
"manifest.json": "5a2c0526f1fe73e6f211bc7a9d15c210"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
