import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Opacity(
          opacity: 0.7,
          child: Image.network(
            'https://assets.www.warnerbros.com/drupal-root/public/friends_title_treatment.png',
            width: 300,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          'Quiz on F.r.i.e.n.d.s',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        const SizedBox(
          height: 20,
        ),
        OutlinedButton.icon(
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            onPressed: startQuiz,
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              'Start Quiz',
              style: TextStyle(color: Colors.white),
            )),
      ]),
    );
  }
}
