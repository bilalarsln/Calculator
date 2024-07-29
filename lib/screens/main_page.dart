import 'package:first_app/components/mainPage_button.dart';
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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MainpageButton(
                    btnText: "Login",
                    btnColor: Color.fromARGB(255, 255, 104, 17),
                    icon: Icons.send,
                    onPressed: () {
                      navigateTo(context, LoginScreen());
                    },
                    btnTextColor: Colors.white),
                MainpageButton(
                    btnText: "Calculater",
                    btnColor: Color.fromARGB(255, 255, 104, 17),
                    icon: Icons.calculate,
                    onPressed: () {
                      navigateTo(context, Uygulamam());
                    },
                    btnTextColor: Colors.white),
                MainpageButton(
                    btnText: "Register",
                    btnColor: Color.fromARGB(255, 255, 104, 17),
                    icon: Icons.person,
                    onPressed: () {
                      navigateTo(context, RegisterScreen());
                    },
                    btnTextColor: Colors.white),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
