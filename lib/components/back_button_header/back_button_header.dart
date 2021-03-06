import "package:flutter/material.dart";
import 'package:izaan_want_a_room/config/theme_colors.dart';
import 'package:touchable_opacity/touchable_opacity.dart';

class BackButtonHeader extends StatelessWidget {
  final String label;

  BackButtonHeader({this.label});

  @override
  Widget build(BuildContext context) {
    void goBack() {
      Navigator.of(context).pop();
    }

    return Container(
      height: 40,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: TouchableOpacity(
              onTap: goBack,
              child: Icon(
                Icons.arrow_back_ios,
                size: 25,
                color: ThemeColors.lightBlue,
              ),
            ),
          ),
          if (label != null)
            Align(
              alignment: Alignment.center,
              child: Text(
                label,
                style: TextStyle(color: ThemeColors.black, fontSize: 18),
              ),
            )
        ],
      ),
    );
  }
}
