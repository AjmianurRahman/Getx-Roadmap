import 'package:flutter/material.dart';

class Text300 extends StatelessWidget {
  final String text;
  final double fontSize;

  const Text300({super.key, required this.text, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.w300));
  }
}
