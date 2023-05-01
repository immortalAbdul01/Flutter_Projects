import 'package:flutter/material.dart';
import 'package:first_app/styleText.dart';
import 'package:first_app/imageRoller.dart';

const start = Alignment.bottomRight;
const end = Alignment.center;

class CenterText extends StatelessWidget {
  const CenterText(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient:
              LinearGradient(colors: [color1, color2], begin: start, end: end)),
      child: const Center(child: ImageRoller()),
    );
  }
}
