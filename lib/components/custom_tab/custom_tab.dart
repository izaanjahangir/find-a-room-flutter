import "package:flutter/material.dart";

class CustomTab extends StatelessWidget {
  final String label;
  final IconData icon;

  CustomTab({this.label = "Default Tab", this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Icon(icon),
        Text(label),
      ],
    ));
  }
}
