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
        amount: '1999',
        date: DateTime.now(),
        title: 'Udemy course',
        category: Category.eductation),
    Purchase(
        amount: '345',
        date: DateTime.now(),
        title: 'Netflix subscription',
        category: Category.movie),
    Purchase(
        amount: '24000',
        date: DateTime.now(),
        title: 'Laptop',
        category: Category.work),
    Purchase(
        amount: '100',
        date: DateTime.now(),
        title: 'choclate',
        category: Category.food)
  ];
  Widget build(BuildContext context) {
    return (Scaffold(
      body: ExpenseList(listOfExpenses: registerList),
    ));
  }
}
