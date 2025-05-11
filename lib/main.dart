import 'package:flutter/material.dart';
import 'screens/welcome.dart';
import 'screens/login.dart';
import 'screens/dashboard.dart';
import 'screens/appointment.dart';  // Import appointment screen
import 'screens/signup.dart';  // Import signup screen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Relaxify',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomePage(),
        '/login': (context) => LoginPage(),
        '/dashboard': (context) => DashboardPage(),
        '/appointment': (context) => AppointmentPage(),  // Add route for appointment page
        '/signup': (context) => SignUpPage(),  // Add route for signup page
      },
    );
  }
}
