import "package:flutter/material.dart";
import 'package:izaan_want_a_room/config/theme_colors.dart';

class CarouselIndicator extends StatelessWidget {
  final bool active;

  CarouselIndicator({this.active = false});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        width: 10,
        height: 10,
        color:
            active ? ThemeColors.lightBlue : ThemeColors.lightBlueTransparent,
      ),
    );
  }
}
