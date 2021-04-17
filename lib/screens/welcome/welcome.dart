import "package:flutter/material.dart";
import "package:izaan_want_a_room/components/background_map/background_map.dart";
import "package:izaan_want_a_room/components/custom_outline_button/custom_outline_button.dart";
import 'package:izaan_want_a_room/config/theme_colors.dart';

class Welcome extends StatelessWidget {
  static const String screenName = "/welcome";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            BackgroundMap(),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Text(
                      "Finding a Roommate has never been so easy! You are only few steps away from your perfect home.",
                      style: TextStyle(fontSize: 22, color: ThemeColors.white),
                    ),
                  ),
                  CustomOutlineButton(
                    onPressed: () {},
                    backgroundColor: ThemeColors.white,
                    textColor: ThemeColors.darkBlue,
                    label: "I am Looking for a Room",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomOutlineButton(
                    onPressed: () {},
                    label: "I am Flat Owner",
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
