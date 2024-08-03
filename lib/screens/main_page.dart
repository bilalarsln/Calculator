import 'package:first_app/constant/buttons/buttons.dart';
import 'package:first_app/constant/navigate_to.dart';
import 'package:first_app/screens/exams/unitList.dart';
import 'package:first_app/screens/loginScreen.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

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
        child: Wrap(
          spacing: 10.0, // Butonlar arasındaki yatay boşluk
          runSpacing: 10.0, // Satırlar arasındaki dikey boşluk
          children: [
            MidButton(
                btnText: "Testler",
                btnBorderRadius: 30,
                icon: Icons.admin_panel_settings,
                onPressed: () {
                  navigateTo(context, Unitlist());
                }),
            MidButton(
                btnText: "Kaynaklar",
                btnBorderRadius: 30,
                icon: Icons.admin_panel_settings,
                onPressed: () {
                  navigateTo(context, Unitlist());
                }),
            MidButton(
                btnText: "Duyurular",
                btnBorderRadius: 30,
                icon: Icons.admin_panel_settings,
                onPressed: () {
                  navigateTo(context, Unitlist());
                }),
            MidButton(
                btnText: "Önemli Bilgiler",
                btnBorderRadius: 30,
                icon: Icons.admin_panel_settings,
                onPressed: () {
                  navigateTo(context, Unitlist());
                }),
            MidButton(
                btnText: "İletişim",
                btnBorderRadius: 30,
                icon: Icons.admin_panel_settings,
                onPressed: () {
                  navigateTo(context, Unitlist());
                }),
            MidButton(
                btnText: "Giriş Yap",
                btnBorderRadius: 30,
                icon: Icons.admin_panel_settings,
                onPressed: () {
                  navigateTo(context, LoginScreen());
                }),
          ],
        ),
      ),
    );
  }
}
