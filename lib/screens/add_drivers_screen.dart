import 'package:flutter/material.dart';

class AddDriverScreen extends StatelessWidget {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final mobileController = TextEditingController();

  static List<Map<String, String>> drivers = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Driver')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(controller: nameController, decoration: InputDecoration(labelText: 'Driver Name')),
            TextField(controller: emailController, decoration: InputDecoration(labelText: 'Email')),
            TextField(controller: mobileController, decoration: InputDecoration(labelText: 'Mobile Number')),
            ElevatedButton(
              onPressed: () {
                drivers.add({
                  'name': nameController.text,
                  'email': emailController.text,
                  'mobile': mobileController.text,
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
