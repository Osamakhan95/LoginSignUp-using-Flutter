// ignore_for_file: empty_constructor_bodies, must_be_immutable, file_names

import "package:flutter/material.dart";

class LightText extends StatelessWidget {
  double size;
  final String font;
  final String text;
  Color color;
  TextOverflow textOverflow;
  LightText({
    super.key,
    this.textOverflow = TextOverflow.ellipsis,
    this.font = "font30",
    this.size = 20,
    this.color = Colors.black,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: textOverflow,
      text,
      style: TextStyle(fontSize: size, color: color, fontFamily: font),
    );
  }
}
