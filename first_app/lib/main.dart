import 'package:flutter/material.dart';
import 'package:first_app/centertext.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 230, 70, 123),
        title: const Center(
          child: Text(
            'Home',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: const CenterText(Colors.black, Colors.deepPurple),
    ),
  ));
}
