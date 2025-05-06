import 'package:flutter/material.dart';
import 'add_expense_screen.dart';

class AllExpensesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final expenses = AddExpenseScreen.expenses;

    return Scaffold(
      appBar: AppBar(title: Text('All Expenses')),
      body: ListView.builder(
        itemCount: expenses.length,
        itemBuilder: (_, index) {
          final e = expenses[index];
          return ListTile(
            title: Text('Vehicle: ${e['vehicle']}'),
            subtitle: Text('Amount: ₹${e['amount']}'),
          );
        },
      ),
    );
  }
}
