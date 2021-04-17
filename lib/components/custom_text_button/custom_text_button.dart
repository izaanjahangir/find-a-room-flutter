import "package:flutter/material.dart";
import 'package:izaan_want_a_room/config/theme_colors.dart';
import 'package:touchable_opacity/touchable_opacity.dart';

class CustomTextButton extends StatelessWidget {
  final Function onTap;
  final String text;
  final double fontSize;

  CustomTextButton({this.onTap, this.text, this.fontSize = 20});

  @override
  Widget build(BuildContext context) {
    return TouchableOpacity(
        onTap: onTap,
        child: Text(
          text,
          style: TextStyle(
              fontSize: fontSize,
              color: ThemeColors.lightBlue,
              decoration: TextDecoration.underline),
        ));
  }
}
