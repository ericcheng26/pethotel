import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/artists/artists.dart'; //TODO
import '../features/home/home.dart';
import '../features/playlists/playlists.dart'; //TODO
import '../features/playlists/view/view.dart'; //TODO
import 'providers/artists.dart'; //TODO
import 'providers/playlists.dart'; //TODO
import 'views/views.dart';

const _pageKey = ValueKey('_pageKey');
const _scaffoldKey = ValueKey('_scaffoldKey');

final artistsProvider = ArtistsProvider();
final playlistsProvider = PlaylistsProvider();

const List<NavigationDestination> destinations = [
  NavigationDestination(
    label: 'Home',
    icon: Icon(Icons.home), // Modify this line
    route: '/',
  ),
  NavigationDestination(
    label: 'RoomType',
    icon: Icon(Icons.playlist_add_check), // Modify this line
    route: '/room_type',
  ),
];

class NavigationDestination {
  const NavigationDestination({
    required this.route,
    required this.label,
    required this.icon,
    this.child,
  });

  final String route;
  final String label;
  final Icon icon;
  final Widget? child;
}

final appRouter = GoRouter(
  navigatorBuilder: (context, state, child) => PlayPauseListener(child: child),
  routes: [
    // HomeScreen
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => const MaterialPage<void>(
        key: _pageKey,
        child: RootLayout(
          key: _scaffoldKey,
          currentIndex: 0,
          child: HomeScreen(),
        ),
      ),
    ),

    // room_typeHomeScreen
    GoRoute(
      path: '/room_type',
      pageBuilder: (context, state) => const MaterialPage<void>(
        key: _pageKey,
        child: RootLayout(
          key: _scaffoldKey,
          currentIndex: 1,
          child: PlaylistHomeScreen(),
        ),
      ),
      routes: [
        GoRoute(
          path: ':pid',
          pageBuilder: (context, state) => MaterialPage<void>(
            key: state.pageKey,
            child: RootLayout(
              key: _scaffoldKey,
              currentIndex: 1,
              child: PlaylistScreen(
                playlist: playlistsProvider.getPlaylist(state.params['pid']!)!,
              ),
            ),
          ),
        ),
      ],
    ),

    for (final route in destinations.skip(2))
      GoRoute(
        path: route.route,
        pageBuilder: (context, state) => MaterialPage<void>(
          key: _pageKey,
          child: RootLayout(
            key: _scaffoldKey,
            currentIndex: destinations.indexOf(route),
            child: const SizedBox(),
          ),
        ),
      ),
  ],
);
