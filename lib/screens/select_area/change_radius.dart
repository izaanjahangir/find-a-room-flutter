import "package:flutter/material.dart";
import 'package:izaan_want_a_room/config/theme_colors.dart';

class ChangeRadius extends StatelessWidget {
  final double radius;
  final Function onChanged;

  ChangeRadius({this.radius, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      color: ThemeColors.whiteTransparent,
      height: 80,
      child: Column(
        children: [
          Text(
            "Increase/Decrease Area",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Slider(
            value: radius,
            min: 1,
            max: 50,
            divisions: 50,
            label: radius.round().toString() + " KM",
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
