import 'package:expense_tracker/expenses_list.dart';
import 'package:expense_tracker/models/expenses_model.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});
  @override
  State<Expenses> createState() {
    return _Expenses();
  }
}

class _Expenses extends State<Expenses> {
  @override
  final List<Purchase> registerList = [
    Purchase(
        amount: 199.90,
        date: DateTime.now(),
        title: 'Udemy course',
        category: Category.eductation),
    Purchase(
        amount: 345.0,
        date: DateTime.now(),
        title: 'Netflix subscription',
        category: Category.movie),
    Purchase(
        amount: 2400.0,
        date: DateTime.now(),
        title: 'Laptop',
        category: Category.work),
    Purchase(
        amount: 10.0,
        date: DateTime.now(),
        title: 'choclate',
        category: Category.food)
  ];
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: Column(
        children: [
          const Text('List of items here and there '),
          Expanded(child: ExpenseList(listOfExpenses: registerList))
        ],
      ),
    ));
  }
}
