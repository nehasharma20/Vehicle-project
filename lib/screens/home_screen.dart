import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:project/screens/auth/login_screen.dart';
import 'package:project/screens/auth/signup_screen.dart';

class HomeScreen extends StatelessWidget {
  //const HomeScreen({super.key});
  const HomeScreen({Key? key}) : super(key: key);

  Widget buildButton(BuildContext context, String label, String route) {
    return ElevatedButton(
      onPressed: () => Navigator.pushNamed(context, route),
      child: Text(label),
      style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 50)),
    );
  }

  

  @override
  Widget build(BuildContext context) {
    // final user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              Navigator.pushReplacementNamed(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen())
                    as String,
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            buildButton(context, 'Add Vehicle', '/addVehicle'),
            buildButton(context, 'Add Driver', '/addDriver'),
            buildButton(context, 'All Vehicles', '/allVehicles'),
            buildButton(context, 'All Drivers', '/allDrivers'),
            buildButton(context, 'Add Expense', '/addExpense'),
            buildButton(context, 'All Expenses', '/allExpenses'),
          ],
        ),
      ),
    );
  }
  
  //  buildButton(BuildContext context, String label, String route) {
  //   return ElevatedButton(
  //     onPressed: () {
  //       Navigator.pushNamed(context,route);
  //       child: Text(label);
  //       style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 50));
  //     );
   
  }

