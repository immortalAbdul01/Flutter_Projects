import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions_data.dart';
import 'package:quiz_app/questions_summary.dart';

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
    final noOfTotalQuestion = questions.length;
    final summaryData = summaryQnA();
    final noOfCorrectAns = summaryData.where((element) {
      return element['correct_ans'] == element['choosen_ans'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
                'You have answered $noOfCorrectAns correct answers out of $noOfTotalQuestion questions',
                style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 20,
            ),
            Summarrydata(summaryData),
            TextButton.icon(
                onPressed: restartQuiz,
                icon: const Icon(IconData(0xe514, fontFamily: 'MaterialIcons')),
                label: const Text(
                  'Restart the quiz',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
