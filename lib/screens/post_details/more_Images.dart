import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MoreImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ...[1, 2, 3, 4, 5].map((i) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  child: Image(
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/room.jpeg"),
                  ),
                ),
              );
            }).toList()
          ],
        ),
      ),
    );
  }
}
