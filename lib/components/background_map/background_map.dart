import "package:flutter/material.dart";
import "package:izaan_want_a_room/config/theme_colors.dart";

class BackgroundMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/map-background.png"))),
          height: double.infinity,
          width: double.infinity,
        ),
        Opacity(
          opacity: 0.8,
          child: Container(
            height: double.infinity,
            width: double.infinity,
            color: ThemeColors.darkBlue,
          ),
        )
      ],
    );
  }
}
