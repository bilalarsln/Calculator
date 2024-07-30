import 'package:first_app/components/main_button.dart';
import 'package:first_app/screens/calculator.dart';
import 'package:first_app/screens/loginScreen.dart';
import 'package:first_app/screens/register_screen.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  void navigateTo(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 63, 57, 56),
        title: const Text(
          "DriverApp",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                MainButton(
                    isRow: true,
                    btnText: "Login",
                    btnColor: Color.fromARGB(255, 255, 104, 17),
                    icon: Icons.send,
                    btnBorderColor: Colors.black,
                    btnBorderRadius: 2,
                    btnHeight: 140,
                    btnWidth: 140,
                    btnPaddingHorizontal: 5,
                    btnMarginHorizontal: 2,
                    btnMarginVertical: 6,
                    btnPaddingVertical: 3,
                    onPressed: () {
                      navigateTo(context, LoginScreen());
                    },
                    btnTextColor: Colors.white),
                MainButton(
                    isRow: false,
                    btnText: "Calculater",
                    btnColor: Color.fromARGB(255, 255, 104, 17),
                    icon: Icons.calculate,
                    btnBorderColor: Colors.black,
                    btnBorderRadius: 2,
                    btnHeight: 140,
                    btnWidth: 140,
                    btnPaddingHorizontal: 5,
                    btnMarginHorizontal: 2,
                    btnMarginVertical: 6,
                    btnPaddingVertical: 3,
                    onPressed: () {
                      navigateTo(context, Uygulamam());
                    },
                    btnTextColor: Colors.white),
              ],
            ),
            const Text(
              'No, we need bold strokes. We need this plan.',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
