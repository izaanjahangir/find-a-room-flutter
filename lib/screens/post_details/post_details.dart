import 'dart:ui';

import 'package:carousel_slider/carousel_options.dart';
import "package:flutter/material.dart";
import 'package:izaan_want_a_room/config/theme_colors.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:izaan_want_a_room/config/theme_colors.dart';
import 'package:izaan_want_a_room/screens/post_details/carousel.dart';
import 'package:izaan_want_a_room/screens/post_details/indicators.dart';
import 'package:touchable_opacity/touchable_opacity.dart';

class PostDetails extends StatefulWidget {
  static const String screenName = "/post-details";

  @override
  _PostDetailsState createState() => _PostDetailsState();
}

class _PostDetailsState extends State<PostDetails> {
  int currentCarouselIndex = 0;

  dynamic handleCarouselPageChanged(
      int newIndex, CarouselPageChangedReason reason) {
    setState(() {
      currentCarouselIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
          body: Container(
              margin: const EdgeInsets.only(top: 10),
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Carousel(onPageChanged: handleCarouselPageChanged),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            child: Container(
                              width: size.width,
                              color: Color.fromRGBO(0, 0, 0, 0.5),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Text(
                                "\$ 1000 / month",
                                style: TextStyle(
                                    fontSize: 20, color: ThemeColors.white),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 10,
                            left: 10,
                            child: TouchableOpacity(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: ClipOval(
                                child: Container(
                                  width: 25,
                                  height: 25,
                                  color: Color.fromRGBO(255, 255, 255, 0.3),
                                  child: Icon(
                                    Icons.close,
                                    size: 20,
                                    color: ThemeColors.white,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Container(
                          margin: const EdgeInsets.only(top: 10),
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Indicators(activeIndex: currentCarouselIndex))
                    ],
                  ),
                ),
              ))),
    );
  }
}
