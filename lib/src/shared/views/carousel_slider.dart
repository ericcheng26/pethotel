import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'views.dart';
import '../classes/classes.dart';

class CarouselViewr extends StatefulWidget {
  const CarouselViewr({super.key, required this.playlists});

  final List<Playlist> playlists;

  @override
  State<CarouselViewr> createState() => _CarouselViewrState();
}

class _CarouselViewrState extends State<CarouselViewr> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = playlists
        .map((item) => Container(
              margin: const EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: <Widget>[
                      Image.asset(item.cover.image,
                          fit: BoxFit.cover, width: 2000.0),
                    ],
                  )),
            ))
        .toList();

    return Stack(alignment: AlignmentDirectional.bottomCenter, children: [
      CarouselSlider(
        items: imageSliders,
        carouselController: _controller,
        options: CarouselOptions(
            enlargeCenterPage: true,
            viewportFraction: 1,
            enableInfiniteScroll: true,
            //autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            }),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: playlists.asMap().entries.map((entry) {
          return GestureDetector(
            onTap: () => _controller.animateToPage(entry.key),
            child: Container(
              width: 12.0,
              height: 12.0,
              margin:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: (Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black)
                      .withOpacity(_current == entry.key ? 0.9 : 0.4)),
            ),
          );
        }).toList(),
      ),
    ]);
  }
}
