import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:project/screens/add_drivers_screen.dart';
import 'package:project/screens/add_expense_screen.dart';
import 'package:project/screens/add_vehicle_screen.dart';
import 'package:project/screens/all_drivers_screen.dart';
import 'package:project/screens/all_expenses_screen.dart';
import 'package:project/screens/all_vehicles_screen.dart';
import 'package:project/screens/auth/login_screen.dart';
import 'package:project/screens/auth/signup_screen.dart';
import 'package:project/screens/home_screen.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
  //Here Above is the runapp
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widgets the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Project Vehicle',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.deepPurple),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/signup': (context) => SignUpScreen(),
        '/home': (context) => HomeScreen(),
        '/addVehicle': (context) => AddVehicleScreen(),
        '/addDriver': (context) => AddDriverScreen(),
        '/allVehicles': (context) => AllVehiclesScreen(),
        '/allDrivers': (context) => AllDriversScreen(),
        '/addExpense': (context) => AddExpenseScreen(),
        '/allExpenses': (context) => AllExpensesScreen(),
      },
    );
  }
}
