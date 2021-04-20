import "package:flutter/material.dart";
import 'package:izaan_want_a_room/screens/home/home_item.dart';
import 'package:izaan_want_a_room/screens/post_details/post_details.dart';

class Home extends StatefulWidget {
  static const String screenName = "/home";

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    void navigateToDetails() {
      Navigator.of(context).pushNamed(PostDetails.screenName);
    }

    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeItem(
              onTap: navigateToDetails,
            ),
          ],
        ),
      ),
    );
  }
}
