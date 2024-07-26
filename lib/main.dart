import 'package:first_app/screens/loginScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DriverApp());
}

class DriverApp extends StatefulWidget {
  const DriverApp({super.key});

  @override
  State<DriverApp> createState() => _DriverAppState();
}

class _DriverAppState extends State<DriverApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: const Center(
          child: LoginScreen(),
        ),
      ),
    );

    // Uygulamam()
  }
}
