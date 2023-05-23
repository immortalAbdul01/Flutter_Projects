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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              expens.title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              children: [
                Text(
                  ' ${expens.amount.toStringAsFixed(2)} \Rs',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontSize: 16),
                ),
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
