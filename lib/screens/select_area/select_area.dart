import "package:flutter/material.dart";
import 'package:izaan_want_a_room/components/back_button_header/back_button_header.dart';

class SelectArea extends StatelessWidget {
  static const String screenName = "/select-area";

  @override
  Widget build(BuildContext context) {
    final padding = const EdgeInsets.symmetric(horizontal: 20);

    return SafeArea(
      child: Scaffold(
          body: Container(
        margin: const EdgeInsets.only(top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: padding,
              child: BackButtonHeader(
                label: "Select Area",
              ),
            ),
            Container()
          ],
        ),
      )),
    );
  }
}
