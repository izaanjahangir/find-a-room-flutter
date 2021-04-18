import "package:flutter/material.dart";
import 'package:izaan_want_a_room/config/theme_colors.dart';

class CustomElevatedButton extends StatelessWidget {
  final String label;
  final Function onTap;
  final Color textColor;
  final bool disabled;
  final double height;
  final Color backgroundColor;

  CustomElevatedButton(
      {this.label = "",
      this.onTap,
      this.textColor = ThemeColors.white,
      this.disabled = false,
      this.backgroundColor = ThemeColors.darkBlue,
      this.height = 55});

  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
      absorbing: disabled,
      child: Opacity(
        opacity: disabled ? 0.4 : 1,
        child: Material(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(5),
          child: InkWell(
            splashColor: ThemeColors.splashWhite,
            onTap: onTap,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Text(
                label,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: textColor),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
