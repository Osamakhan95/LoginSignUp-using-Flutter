// ignore_for_file: must_be_immutable, file_names, unused_import

import 'package:flutter/material.dart';
import 'package:loginsignup/Widget/IconWithText.dart';

class MyForm extends StatelessWidget {
  MyForm({
    super.key,
    required this.tittle,
    required this.icon,
    required this.controller,
    this.obscureText = false,
  });

  final String tittle;
  final IconData icon;
  final TextEditingController controller;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        label: IconWithText(
          sizeIcon: 20,
          sizeText: 15,
          icon: icon,
          text: tittle,
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(0)),
      ),
    );
  }
}
