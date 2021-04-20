import "package:flutter/material.dart";
import 'package:izaan_want_a_room/components/carousel_indicator/carousel_indicator.dart';

class Indicators extends StatelessWidget {
  final int activeIndex;

  Indicators({this.activeIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...[1, 2, 3, 4, 5]
            .asMap()
            .entries
            .map((e) => Container(
                margin: const EdgeInsets.symmetric(horizontal: 2),
                child: CarouselIndicator(active: e.key == activeIndex)))
            .toList()
      ],
    );
  }
}
