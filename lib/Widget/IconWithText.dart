// ignore_for_file: prefer_typing_uninitialized_variables, unnecessary_import, must_be_immutable, unused_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:loginsignup/Widget/BoldText.dart';

class IconWithText extends StatelessWidget {
  IconWithText({
    super.key,
    this.colorText = Colors.black,
    required this.icon,
    this.colorIcon = Colors.black,
    this.sizeIcon = 10,
    this.sizeText = 10,
    required this.text,
  });

  String text;
  final icon;
  Color? colorText;
  Color? colorIcon;
  double sizeText;
  double sizeIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(icon, color: colorIcon, size: sizeIcon),
        SizedBox(width: 10),
        Opacity(
          opacity: 0.5,
          child: BoldText(size: sizeText, text: text, color: colorText),
        ),
      ],
    );
  }
}
