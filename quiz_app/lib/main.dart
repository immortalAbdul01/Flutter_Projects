import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

void main() {
  void onPressed() {}
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.deepPurpleAccent, Colors.deepPurple])),
          child: const StartScreen()),
    ),
  ));
}
