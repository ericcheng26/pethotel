import 'package:adaptive_components/adaptive_components.dart';
import 'package:flutter/material.dart';

import '../../../shared/classes/classes.dart';
import '../../../shared/extensions.dart';
import '../../../shared/providers/providers.dart';
import '../../../shared/views/views.dart';
import 'view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final PlaylistsProvider playlistProvider = PlaylistsProvider();
    final List<Playlist> playlists = playlistProvider.playlists;
    return LayoutBuilder(
      builder: (context, constraints) {
        // Add conditional mobile layout
        if (constraints.isMobile) {
          return DefaultTabController(
            length: 2,
            child: Scaffold(
              appBar: AppBar(
                centerTitle: false,
                title: const Text('Petinental Hotel'),
                actions: const [ShoppingBag(), BrightnessToggle()],
                bottom: const TabBar(
                  isScrollable: true,
                  tabs: [
                    Tab(text: 'Home'),
                    Tab(text: 'Recently Booked'),
                  ],
                ),
              ),
              body: LayoutBuilder(
                builder: (context, constraints) => TabBarView(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          CarouselViewr(playlists: playlists),
                        ],
                      ),
                    ),
                    HomeRecent(
                      playlists: playlists,
                      axis: Axis.vertical,
                    ),
                  ],
                ),
              ),
            ),
          );
        }

        return Scaffold(
          body: SingleChildScrollView(
            child: Column(children: [
              AdaptiveColumn(
                children: [
                  AdaptiveContainer(
                    columnSpan: 12,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(
                          20, 25, 20, 10), // Modify this line
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              'Petinental Hotel',
                              style: context.displaySmall,
                            ),
                          ),
                          const ShoppingBag(),
                          const SizedBox(width: 20),
                          const BrightnessToggle(),
                        ],
                      ),
                    ),
                  ),
                  AdaptiveContainer(
                      columnSpan: 12,
                      child: CarouselViewr(playlists: playlists)),
                  AdaptiveContainer(
                    columnSpan: 12,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 10,
                          ), // Modify this line
                          child: Text(
                            'Recently Booked',
                            style: context.headlineSmall,
                          ),
                        ),
                        HomeRecent(
                          playlists: playlists,
                        ),
                      ],
                    ),
                  ),
                  /*
                  AdaptiveContainer(
                    columnSpan: 12,
                    child: Padding(
                      padding: const EdgeInsets.all(15), // Modify this line
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            flex: 10,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8, bottom: 8), // Modify this line
                                  child: Text(
                                    'Classic Room',
                                    style: context.titleLarge,
                                  ),
                                ),
                                LayoutBuilder(
                                  builder: (context, constraints) =>
                                      PlaylistSongs(
                                    playlist: topSongs,
                                    constraints: constraints,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Add spacer between tables
                          const SizedBox(width: 25),
                          Flexible(
                            flex: 10,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8, bottom: 8), // Modify this line
                                  child: Text(
                                    'New Style',
                                    style: context.titleLarge,
                                  ),
                                ),
                                LayoutBuilder(
                                  builder: (context, constraints) =>
                                      PlaylistSongs(
                                    playlist: newReleases,
                                    constraints: constraints,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),*/
                ],
              ),
              AdaptiveContainer(child: const PageFooter())
            ]),
          ),
        );
      },
    );
  }
}
