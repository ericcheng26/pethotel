import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myartist/src/shared/extensions.dart';

import '../../../shared/classes/classes.dart';
import '../../../shared/providers/providers.dart';
import '../../../shared/views/views.dart';

class PlaylistHomeScreen extends StatefulWidget {
  const PlaylistHomeScreen({super.key});

  @override
  State<PlaylistHomeScreen> createState() => _PlaylistHomeScreenState();
}

class _PlaylistHomeScreenState extends State<PlaylistHomeScreen> {
  @override
  Widget build(BuildContext context) {
    PlaylistsProvider playlistProvider = PlaylistsProvider();
    List<Playlist> playlists = playlistProvider.playlists;
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          primary: false,
          body: CustomScrollView(
            shrinkWrap: true,
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Medical record',
                            style: context.displaySmall,
                          ),
                        ),
                      ],
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(40),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: (constraints.maxWidth ~/ 175).toInt(),
                        childAspectRatio: 0.70,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                      ),
                      itemCount: playlists.length,
                      itemBuilder: (context, index) {
                        final playlist = playlists[index];
                        return GestureDetector(
                          child: ImageTile(
                            image: playlist.cover.image,
                            title: playlist.title,
                            subtitle: playlist.description,
                          ),
                          onTap: () => GoRouter.of(context)
                              .go('/medical_record/${playlist.id}'),
                        );
                      },
                    ),
                  ],
                ),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    PageFooter(),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
