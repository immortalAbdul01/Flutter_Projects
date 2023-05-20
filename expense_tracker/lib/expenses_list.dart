import 'package:expense_tracker/models/expenses_model.dart';
import 'package:expense_tracker/widgets/expense_item.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList({super.key, required this.listOfExpenses});

  final List<Purchase> listOfExpenses;
  @override
  Widget build(BuildContext context) {
    return (ListView.builder(
      itemCount: listOfExpenses.length,
      itemBuilder: (ctx, idx) => ExpenseItem(listOfExpenses[idx]),
    ));
  }
}