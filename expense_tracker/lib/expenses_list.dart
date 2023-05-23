import 'package:expense_tracker/models/expenses_model.dart';
import 'package:expense_tracker/widgets/expense_item.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList(
      {super.key, required this.listOfExpenses, required this.onRemoveExpense});

  final void Function(Purchase purchase) onRemoveExpense;

  final List<Purchase> listOfExpenses;
  @override
  Widget build(BuildContext context) {
    return (ListView.builder(
      itemCount: listOfExpenses.length,
      itemBuilder: (ctx, idx) => Dismissible(
          background: Container(
              color: Theme.of(context).colorScheme.error.withOpacity(0.50),
              margin: EdgeInsets.symmetric(
                  horizontal: Theme.of(context).cardTheme.margin!.horizontal)),
          key: ValueKey(listOfExpenses[idx]),
          onDismissed: (direction) {
            onRemoveExpense(listOfExpenses[idx]);
          },
          child: ExpenseItem(listOfExpenses[idx])),
    ));
  }
}
