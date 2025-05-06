import 'package:flutter/material.dart';
import 'add_vehicle_screen.dart';

class AddExpenseScreen extends StatefulWidget {
  static List<Map<String, String>> expenses = [];

  @override
  _AddExpenseScreenState createState() => _AddExpenseScreenState();
}

class _AddExpenseScreenState extends State<AddExpenseScreen> {
  String? selectedVehicle;
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final vehicleList = AddVehicleScreen.vehicles;

    return Scaffold(
      appBar: AppBar(title: Text('Add Expense')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            DropdownButtonFormField<String>(
              items: vehicleList.map((v) {
                return DropdownMenuItem(
                  value: v['number'],
                  child: Text('${v['name']} (${v['number']})'),
                );
              }).toList(),
              onChanged: (val) => selectedVehicle = val,
              decoration: InputDecoration(labelText: 'Select Vehicle'),
            ),
            TextField(controller: amountController, decoration: InputDecoration(labelText: 'Amount')),
            ElevatedButton(
              onPressed: () {
                AddExpenseScreen.expenses.add({
                  'vehicle': selectedVehicle ?? '',
                  'amount': amountController.text,
                });
                Navigator.pop(context);
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
