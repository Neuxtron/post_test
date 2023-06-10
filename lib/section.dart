import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:post_test/game.dart';

class Section extends StatelessWidget {
  final List<String> preview;
  final List<String> logo;
  const Section({super.key, required this.preview, required this.logo});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: preview.map((i) {
        return Builder(
          builder: (context) {
            return Game(
              preview: i,
              logo: logo[preview.indexOf(i)],
            );
          },
        );
      }).toList(),
      options: CarouselOptions(
        enableInfiniteScroll: false,
        viewportFraction: 0.65,
      ),
    );
  }
}
