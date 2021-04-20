import "package:flutter/material.dart";

class CustomTab extends StatelessWidget {
  final String label;
  final bool active;
  final double size = 20;
  final AssetImage icon;
  final AssetImage activeIcon;
  final bool roundIcon;
  final bool iconAsImage;

  CustomTab(
      {this.label = "Default Tab",
      this.icon,
      this.active = false,
      this.roundIcon = false,
      this.iconAsImage = false,
      this.activeIcon});

  @override
  Widget build(BuildContext context) {
    final AssetImage iconToRender = active ? activeIcon : icon;

    return Container(
        child: Column(
      children: [
        roundIcon
            ? ClipOval(
                child: Opacity(
                  opacity: (iconAsImage && !active) ? 0.5 : 1,
                  child: Image(
                    fit: BoxFit.cover,
                    width: size,
                    height: size,
                    image: iconToRender,
                  ),
                ),
              )
            : Opacity(
                opacity: (iconAsImage && !active) ? 0.5 : 1,
                child: Image(
                  fit: BoxFit.cover,
                  width: size,
                  height: size,
                  image: iconToRender,
                ),
              ),
        Text(
          label,
          style: TextStyle(fontSize: 12),
        ),
      ],
    ));
  }
}
