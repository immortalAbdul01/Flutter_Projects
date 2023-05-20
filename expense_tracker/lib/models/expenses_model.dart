import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Category { food, travel, health, movie, work, eductation }

class Purchase {
  Purchase(
      {required this.amount,
      required this.date,
      required this.title,
      required this.category})
      : id = uuid.v4();

  final String title;
  final String id;
  final String amount;
  final DateTime date;
  final Category category;
}
