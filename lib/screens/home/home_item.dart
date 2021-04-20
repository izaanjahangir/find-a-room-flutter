import "package:flutter/material.dart";
import 'package:izaan_want_a_room/config/theme_colors.dart';

class HomeItem extends StatelessWidget {
  final Function onTap;

  HomeItem({@required this.onTap});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: PhysicalModel(
        color: ThemeColors.black,
        elevation: 4,
        child: Material(
          color: ThemeColors.white,
          child: InkWell(
            onTap: () {
              onTap();
            },
            child: Container(
              height: size.width * 0.2,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/room.jpeg"),
                    height: size.width * 0.2,
                    width: size.width * 0.35,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Malir, karachi",
                              maxLines: 2,
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              "Distance: 30KM",
                              style: TextStyle(
                                  fontSize: 12, color: ThemeColors.darkBlue),
                            ),
                          ],
                        ),
                        Text(
                          "\$200 / month",
                          style: TextStyle(
                              fontSize: 16,
                              color: ThemeColors.darkBlue,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
