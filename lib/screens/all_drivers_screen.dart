import 'package:flutter/material.dart';
import 'add_drivers_screen.dart';

class AllDriversScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final drivers = AddDriverScreen.drivers;

    return Scaffold(
      appBar: AppBar(title: Text('All Drivers')),
      body: ListView.builder(
        itemCount: drivers.length,
        itemBuilder: (_, index) {
          final d = drivers[index];
          return ListTile(
            title: Text(d['name']!),
            subtitle: Text('Email: ${d['email']}, Mobile: ${d['mobile']}'),
          );
        },
      ),
    );
  }
}
