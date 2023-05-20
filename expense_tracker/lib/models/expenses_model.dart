import 'package:uuid/uuid.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();
const uuid = Uuid();

enum Category { food, travel, health, movie, work, eductation }

const CategoryIcons = {
  Category.food: Icons.brunch_dining,
  Category.travel: Icons.flight,
  Category.health: Icons.healing,
  Category.movie: Icons.movie,
  Category.work: Icons.work,
  Category.eductation: Icons.book
};

class Purchase {
  Purchase(
      {required this.amount,
      required this.date,
      required this.title,
      required this.category})
      : id = uuid.v4();

  final String title;
  final String id;
  final double amount;
  final DateTime date;
  final Category category;

  String get formattedDate {
    return formatter.format(date);
  }
}
