import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions_data.dart';
import 'package:quiz_app/questions.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/results.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start';
  void switchScreen() {
    setState(() {
      activeScreen = 'questions';
    });
  }

  void restartTheQuiz() {
    setState(() {
      activeScreen = 'start';
    });
  }

  void chooseAnswer(String ans) {
    selectedAnswers.add(ans);
    setState(() {
      if (selectedAnswers.length == questions.length) {
        selectedAnswers = [];
        activeScreen = 'result';
      }
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'questions') {
      screenWidget = Questions(
        handleAnswers: chooseAnswer,
      );
    }
    if (activeScreen == 'result') {
      screenWidget = Result(
        restartTheQuiz,
        choosenAnswers: selectedAnswers,
      );
    }
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: const Center(
          child: Text(
            'Home',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.deepPurpleAccent, Colors.deepPurple])),
        child: screenWidget,
      ),
    ));
  }
}
