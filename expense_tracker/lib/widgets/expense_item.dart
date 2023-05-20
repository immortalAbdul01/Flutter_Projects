import 'package:expense_tracker/models/expenses_model.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expens, {super.key});

  final Purchase expens;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          children: [
            Text(expens.title),
            const SizedBox(
              height: 24,
            ),
            Row(
              children: [
                Text(expens.amount.toStringAsFixed(2)),
                const Spacer(),
                Row(
                  children: [
                    Icon(CategoryIcons[expens.category]),
                    const SizedBox(width: 12),
                    Text(expens.formattedDate),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
