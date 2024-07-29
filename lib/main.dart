import 'package:first_app/screens/main_page.dart';
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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: MainPage(),
        ),
      ),
    );

    // Uygulamam()
  }
}
