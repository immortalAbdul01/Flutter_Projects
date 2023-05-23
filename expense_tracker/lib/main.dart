import 'package:expense_tracker/expense.dart';
import 'package:flutter/material.dart';

var KcolorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 66, 3, 77));
var KDarkcolorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 5, 99, 125));
void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
          useMaterial3: true,
          colorScheme: KDarkcolorScheme,
          cardTheme: const CardTheme().copyWith(
              color: KDarkcolorScheme.secondaryContainer,
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8)),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  backgroundColor: KDarkcolorScheme.primaryContainer,
                  foregroundColor: KDarkcolorScheme.onPrimaryContainer))),
      theme: ThemeData().copyWith(
          useMaterial3: true,
          colorScheme: KcolorScheme,
          appBarTheme: const AppBarTheme().copyWith(
              backgroundColor: KcolorScheme.onPrimaryContainer,
              foregroundColor: KcolorScheme.primaryContainer),
          cardTheme: const CardTheme().copyWith(
              color: KcolorScheme.secondaryContainer,
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8)),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
            backgroundColor: KcolorScheme.primaryContainer,
          )),
          textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                  color: KcolorScheme.onSecondaryContainer))),
      home: const Expenses(),
    ),
  );
}
