import 'package:flutter/material.dart';

class StylishText extends StatelessWidget {
  const StylishText(this.text, {super.key});
  final String text;
  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
          color: Colors.yellow, fontSize: 43, fontWeight: FontWeight.bold),
    );
  }
}
