import 'package:first_app/constant/buttons/buttons.dart';

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
                    btnHeight: 80,
                    btnBorderRadius: 30,
                    icon: Icons.admin_panel_settings,
                    onPressed: () {
                      navigateTo(context, LoginScreen());
                    }),
              ],
            ),
            Row(
              children: [
                LargeButton(
                    btnText: "Large",
                    btnHeight: 80,
                    btnBorderRadius: 30,
                    icon: Icons.admin_panel_settings,
                    onPressed: () {
                      navigateTo(context, LoginScreen());
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
