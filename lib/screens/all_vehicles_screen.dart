import 'package:flutter/material.dart';
import 'add_vehicle_screen.dart';

class AllVehiclesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final vehicles = AddVehicleScreen.vehicles;

    return Scaffold(
      appBar: AppBar(title: Text('All Vehicles')),
      body: ListView.builder(
        itemCount: vehicles.length,
        itemBuilder: (_, index) {
          final v = vehicles[index];
          return ListTile(
            title: Text('${v['name']} (${v['number']})'),
            subtitle: Text('Type: ${v['type']} | KMs: ${v['kms']}'),
          );
        },
      ),
    );
  }
}

