import 'dart:math';
import 'package:collection/collection.dart';
import 'package:english_words/english_words.dart';

import '../classes/classes.dart';
import '../extensions.dart';
import 'providers.dart';

class PlaylistsProvider {
  List<Playlist> get playlists => _randomPlaylists;
  Playlist get newReleases => randomPlaylist(numSongs: 10);
  Playlist get topSongs => randomPlaylist(numSongs: 10);

  static List<MyArtistImage> images() {
    return [
      const MyArtistImage(
          image: 'assets/images/playlists/Iniala_Beach_House.jpeg',
          sourceLink:
              'https://cdn.worldota.net/t/1024x768/content/6a/30/6a306d8b31ab4d8809c59291ecea8a7f697f3e91.jpeg',
          sourceName: 'Karsten Winegeart'),
      const MyArtistImage(
          image: 'assets/images/playlists/Iniala_Beach_House_2.jpeg',
          sourceLink:
              'https://cdn.worldota.net/t/1024x768/content/78/da/78da3310e19db0d9f10ee82fd535343c00c680d9.jpeg',
          sourceName: 'Carlos Alfonso'),
      const MyArtistImage(
          image: 'assets/images/playlists/Aman_New_York.jpg',
          sourceLink:
              'https://media.vogue.com.tw/photos/627e0abe883f56f2b19980b0/master/w_1280,c_limit/hotel-view-10_Office_27889.jpg',
          sourceName: 'Alexandra Fuller'),
      const MyArtistImage(
          image: 'assets/images/playlists/The_Times_Square_EDITION.jpg',
          sourceLink:
              'https://www.bloomberg.com/news/articles/2019-03-29/new-york-hotel-openings-from-cheaper-high-design-to-ultra-luxury',
          sourceName: 'Karsten Winegeart'),
      const MyArtistImage(
          image: 'assets/images/playlists/Blade-Runner-Bradbury-Building-3.jpg',
          sourceLink: 'http://movie-locations.com/movies/b/Blade-Runner.php',
          sourceName: 'Jared Rice'),
      const MyArtistImage(
          image: 'assets/images/playlists/TimesSquare_LobbyBar_Terrace.jpg',
          sourceLink:
              'https://media.cntraveler.com/photos/5cf13b08b17a815ae8dd3632/master/w_1600,c_limit/EDITION_TimesSquare_LobbyBar_Terrace.jpg',
          sourceName: 'Nathan Dumlao'),
      const MyArtistImage(
          image: 'assets/images/playlists/amilla_maldives_resort.jpg',
          sourceLink:
              'https://luxurycolumnist.com/wp-content/uploads/2021/07/Amilla-Glamping-pod.jpg',
          sourceName: 'Jordan Whitfield'),
      const MyArtistImage(
          image: 'assets/images/playlists/encuentro_guadalupe.jpg',
          sourceLink:
              'https://images.unsplash.com/photo-1445019980597-93fa8acb246c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1748&q=80',
          sourceName: 'Humble Lamb'),
      const MyArtistImage(
          image: 'assets/images/playlists/banquo_spa_hotel.jpg',
          sourceLink:
              'https://www.chillpainai.com/src/wewakeup/img_hotels/2759/1443863189-393833_13121114150017877775_resize.jpg',
          sourceName: 'dimitri.photography'),
    ];
  }

  Playlist? getPlaylist(String id) {
    return playlists.firstWhereOrNull((playlist) => playlist.id == id);
  }

  static Playlist randomPlaylist({int numSongs = 15}) {
    return Playlist(
      id: randomId(),
      title: generateRandomString(max(2, Random().nextInt(4))),
      description: generateRandomString(Random().nextInt(25)),
      songs: List.generate(numSongs, (index) => randomSong()),
      cover: images()[Random().nextInt(images().length - 1)],
    );
  }

  static Playlist randomLengthPlaylist({int maxSongs = 15}) {
    final int songCount = Random().nextInt(maxSongs) + 1;

    return PlaylistsProvider.randomPlaylist(numSongs: songCount);
  }

  static Song randomSong() {
    return Song(
      generateRandomString(2),
      ArtistsProvider.shared.randomArtist,
      generateRandomSongLength(),
      images()[Random().nextInt(images().length)],
    );
  }

  static final List<Playlist> _randomPlaylists =
      List.generate(10, (index) => randomLengthPlaylist());
}

String randomId() {
  return Random().nextInt(1000000).toString();
}

String generateRandomString(int wordCount) {
  final randomWords = generateWordPairs().take((wordCount).floor());
  return randomWords.join(' ');
}

Duration generateRandomSongLength() {
  Random rand = Random();

  int minute = rand.nextInt(5);

  int second = rand.nextInt(60);

  String secondStr = second.toString();

  if (second < 10) {
    secondStr = secondStr.padLeft(2, '0');
  }

  return '$minute : $secondStr'.toDuration();
}
