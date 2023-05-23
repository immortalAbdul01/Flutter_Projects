import 'package:expense_tracker/expenses_list.dart';
import 'package:expense_tracker/models/expenses_model.dart';
import 'package:expense_tracker/widgets/new_expense.dart';
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

  void _addExpense(Purchase purchase) {
    setState(() {
      registerList.add(purchase);
    });
  }

  void _removeExpense(Purchase purchase) {
    final indexOfExpense = registerList.indexOf(purchase);
    setState(() {
      registerList.remove(purchase);
    });
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: const Text('deleted the expense'),
      duration: const Duration(seconds: 5),
      action: SnackBarAction(
          label: 'undo',
          onPressed: () {
            setState(() {
              registerList.insert(indexOfExpense, purchase);
            });
          }),
    ));
  }

  void showOverlay() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: ((context) => NewExpense(
              onAddExpense: _addExpense,
            )));
  }

  @override
  Widget build(BuildContext context) {
    Widget mainContent = const Center(child: Text('Nothing is here'));
    if (registerList.isNotEmpty) {
      mainContent = ExpenseList(
        listOfExpenses: registerList,
        onRemoveExpense: _removeExpense,
      );
    }

    return (Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(onPressed: showOverlay, icon: const Icon(Icons.add))
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(
            'List of items here and there ',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(child: mainContent)
        ],
      ),
    ));
  }
}
