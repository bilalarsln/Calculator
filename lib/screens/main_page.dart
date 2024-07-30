import 'package:first_app/components/main_button.dart';
import 'package:first_app/constant/buttons/small_button.dart';
import 'package:first_app/screens/calculator.dart';
import 'package:first_app/screens/loginScreen.dart';
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
                SmallButton(
                    btnText: "Loginnn",
                    btnHeight: 80,
                    icon: Icons.admin_panel_settings,
                    btnBorderRadius: 15,
                    onPressed: () {
                      navigateTo(context, LoginScreen());
                    }),
                MidButton(
                    btnText: "Mid",
                    btnHeight: 100,
                    btnBorderRadius: 30,
                    icon: Icons.admin_panel_settings,
                    onPressed: () {
                      navigateTo(context, LoginScreen());
                    }),
                // MainButton(
                //     isRow: true,
                //     btnText: "Login",
                //     btnColor: Color.fromARGB(255, 255, 104, 17),
                //     icon: Icons.send,
                //     btnBorderColor: Colors.black,
                //     btnBorderRadius: 2,
                //     btnHeight: 140,
                //     btnPaddingHorizontal: 5,
                //     btnMarginHorizontal: 2,
                //     btnMarginVertical: 6,
                //     btnPaddingVertical: 3,
                //     onPressed: () {
                //       navigateTo(context, LoginScreen());
                //     },
                //     btnTextColor: Colors.white),
                // MainButton(
                //     isRow: false,
                //     btnText: "Calculater",
                //     btnColor: Color.fromARGB(255, 255, 104, 17),
                //     icon: Icons.calculate,
                //     btnBorderColor: Colors.black,
                //     btnBorderRadius: 2,
                //     btnHeight: 140,
                //     btnPaddingHorizontal: 5,
                //     btnMarginHorizontal: 2,
                //     btnMarginVertical: 6,
                //     btnPaddingVertical: 3,
                //     onPressed: () {
                //       navigateTo(context, Uygulamam());
                //     },
                //     btnTextColor: Colors.white),
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
