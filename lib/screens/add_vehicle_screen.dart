import 'package:flutter/material.dart';

class AddVehicleScreen extends StatelessWidget {
  final nameController = TextEditingController();
  final typeController = TextEditingController();
  final kmsController = TextEditingController();
  final numberController = TextEditingController();

  static List<Map<String, String>> vehicles = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Vehicle')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(controller: nameController, decoration: InputDecoration(labelText: 'Vehicle Name')),
            TextField(controller: typeController, decoration: InputDecoration(labelText: 'Vehicle Type')),
            TextField(controller: kmsController, decoration: InputDecoration(labelText: 'Current KMs')),
            TextField(controller: numberController, decoration: InputDecoration(labelText: 'Vehicle Number')),
            ElevatedButton(
              onPressed: () {
                vehicles.add({
                  'name': nameController.text,
                  'type': typeController.text,
                  'kms': kmsController.text,
                  'number': numberController.text,
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
