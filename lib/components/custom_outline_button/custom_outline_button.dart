import "package:flutter/material.dart";
import 'package:izaan_want_a_room/config/theme_colors.dart';

class CustomOutlineButton extends StatelessWidget {
  final String label;
  final Function onPressed;
  final Color backgroundColor;
  final Color textColor;

  CustomOutlineButton(
      {this.label = "",
      this.onPressed,
      this.backgroundColor = Colors.transparent,
      this.textColor = ThemeColors.white});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: backgroundColor,
          minimumSize: Size(double.infinity, 55),
          side: BorderSide(
            width: 1,
            color: ThemeColors.white,
            style: BorderStyle.solid,
          ),
        ),
        child: Text(
          label,
          style: TextStyle(fontSize: 18, color: textColor),
        ));
  }
}