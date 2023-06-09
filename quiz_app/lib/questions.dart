import 'package:flutter/material.dart';
import 'package:quiz_app/answers_button.dart';
import 'package:quiz_app/data/questions_data.dart';
import 'package:google_fonts/google_fonts.dart';

class Questions extends StatefulWidget {
  Questions({super.key, required this.handleAnswers});
  final void Function(String seletectedAnswer) handleAnswers;

  @override
  State<Questions> createState() {
    return _Questions();
  }
}

class _Questions extends State<Questions> {
  var currentQuestionIndex = 0;
  void answerQuestion(String ans) {
    widget.handleAnswers(ans);
    setState(() {
      if (currentQuestionIndex < 6) {
        currentQuestionIndex++;
      }
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(50),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.network(
                questions[currentQuestionIndex].image,
                width: 300,
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                currentQuestion.text,
                style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              ...currentQuestion.getShuffledList().map((e) {
                return AnswerButton(
                    clickAnswer: () {
                      answerQuestion(e);
                    },
                    answerText: e);
              })
            ]),
      ),
    );
  }
}
