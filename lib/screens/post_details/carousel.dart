import 'package:carousel_slider/carousel_slider.dart';
import "package:flutter/material.dart";

class Carousel extends StatelessWidget {
  final Function onPageChanged;

  Carousel({@required this.onPageChanged});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return CarouselSlider(
      options: CarouselOptions(
          viewportFraction: 1,
          height: size.height * 0.35,
          onPageChanged: onPageChanged),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Image(
              width: double.infinity,
              fit: BoxFit.cover,
              image: AssetImage("assets/images/room.jpeg"),
            );
          },
        );
      }).toList(),
    );
  }
}
