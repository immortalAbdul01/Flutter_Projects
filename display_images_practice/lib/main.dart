import 'package:flutter/material.dart';
import 'package:display_images_practice/image.dart';

const screenName = 'home';
void main() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: const Center(
            child: Text(
              screenName,
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        body: const ImageDisplay(Colors.pink, Colors.yellowAccent)),
  ));
}
