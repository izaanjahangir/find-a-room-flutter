import "package:flutter/material.dart";
import 'package:izaan_want_a_room/utils/helpers.dart';

class Home extends StatelessWidget {
  static const String screenName = "/home";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          Helpers.dismissKeyboardOnTap(context);
        },
        child: Scaffold(
            body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(child: Text("Home")),
                    ],
                  ),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
