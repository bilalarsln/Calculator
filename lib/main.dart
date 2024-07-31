import 'package:first_app/screens/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

void main() {
  runApp(
    const DriverApp(),
  );
}

class DriverApp extends StatelessWidget {
  const DriverApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: PersistenBottomNavBarDemo(),
        ),
      ),
      routes: {
        "/minimal": (context) => const LoginScreen(),
      },
    );
  }
}

class PersistenBottomNavBarDemo extends StatelessWidget {
  const PersistenBottomNavBarDemo({super.key});

  List<PersistentTabConfig> _tabs() => [
        PersistentTabConfig(
          screen: const LoginScreen(),
          item: ItemConfig(
            icon: const Icon(Icons.home),
            title: "Home",
          ),
        ),
        PersistentTabConfig(
          screen: const LoginScreen(),
          item: ItemConfig(
            icon: const Icon(Icons.message),
            title: "Messages",
          ),
        ),
        PersistentTabConfig(
          screen: const LoginScreen(),
          item: ItemConfig(
            icon: const Icon(Icons.settings),
            title: "Settings",
          ),
        ),
      ];

  @override
  Widget build(BuildContext context) => PersistentTabView(
        tabs: _tabs(),
        navBarBuilder: (navBarConfig) => Style1BottomNavBar(
          navBarConfig: navBarConfig,
        ),
      );
}
