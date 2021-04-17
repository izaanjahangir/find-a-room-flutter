import "package:flutter/material.dart";
import 'package:izaan_want_a_room/config/theme_colors.dart';
import 'package:touchable_opacity/touchable_opacity.dart';

class BackButtonHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void goBack() {
      Navigator.of(context).pop();
    }

    return Container(
      child: Row(
        children: [
          TouchableOpacity(
            onTap: goBack,
            child: Icon(
              Icons.arrow_back_ios,
              size: 30,
              color: ThemeColors.lightBlue,
            ),
          )
        ],
      ),
    );
  }
}
