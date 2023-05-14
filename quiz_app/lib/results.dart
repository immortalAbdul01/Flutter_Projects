import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions_data.dart';

class Result extends StatelessWidget {
  const Result(this.restartQuiz, {super.key, required this.choosenAnswers});
  final void Function() restartQuiz;
  final List<String> choosenAnswers;

  List<Map<String, Object>> summaryQnA() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < choosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_ans': questions[i].ans[0],
        'choosen_ans': choosenAnswers[i]
      });
    }
    return summary;
  }

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('helo',
                style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 30,
            ),
            const Text('Anwers for your question'),
            TextButton(
                onPressed: restartQuiz, child: const Text('Restart the quiz'))
          ],
        ),
      ),
    );
  }
}
