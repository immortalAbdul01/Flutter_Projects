import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.clickAnswer, required this.answerText});

  final String answerText;
  final void Function() clickAnswer;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: clickAnswer,
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          backgroundColor: Colors.yellow,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(43))),
      child: Text(
        answerText,
        style: GoogleFonts.lato(
            color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}
