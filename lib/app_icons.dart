import 'package:flutter/material.dart';

class AppIcons extends StatelessWidget {
  final IconData iconName;
  final double iconSize;
  final Color colour;

  AppIcons({this.iconName, this.iconSize, this.colour});

  @override
  Widget build(BuildContext context) {
    return Icon(
      iconName,
      color: colour,
      size: iconSize,
    );
  }
}
