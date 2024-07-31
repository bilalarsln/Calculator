import 'package:first_app/components/main_button.dart';
import 'package:flutter/material.dart';

class SmallButton extends StatelessWidget {
  final String btnText;
  final IconData? icon;
  final double btnHeight;
  final Function() onPressed;
  final double btnBorderRadius;

  const SmallButton({
    super.key,
    required this.btnText,
    this.icon,
    required this.btnHeight,
    required this.onPressed,
    required this.btnBorderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return MainButton(
        btnText: btnText,
        btnColor: Colors.amber,
        btnBorderColor: Colors.greenAccent,
        btnBorderRadius: btnBorderRadius,
        icon: icon,
        withScaleFactor: 0.3,
        btnTextColor: Colors.black,
        btnHeight: btnHeight,
        btnMarginVertical: 2,
        btnMarginHorizontal: 2,
        btnPaddingVertical: 2,
        btnPaddingHorizontal: 2,
        isRow: false,
        onPressed: onPressed);
  }
}

class MidButton extends StatelessWidget {
  final String btnText;
  final IconData? icon;
  final double btnHeight;
  final Function() onPressed;
  final double btnBorderRadius;

  const MidButton({
    super.key,
    required this.btnText,
    this.icon,
    required this.btnHeight,
    required this.onPressed,
    required this.btnBorderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return MainButton(
        btnText: btnText,
        btnColor: Colors.amber,
        btnBorderColor: Colors.greenAccent,
        btnBorderRadius: btnBorderRadius,
        icon: icon,
        withScaleFactor: 0.7,
        btnTextColor: Colors.black,
        btnHeight: btnHeight,
        btnMarginVertical: 2,
        btnMarginHorizontal: 2,
        btnPaddingVertical: 2,
        btnPaddingHorizontal: 2,
        isRow: false,
        onPressed: onPressed);
  }
}

class LargeButton extends StatelessWidget {
  final String btnText;
  final IconData? icon;
  final double btnHeight;
  final Function() onPressed;
  final double btnBorderRadius;

  const LargeButton({
    super.key,
    required this.btnText,
    this.icon,
    required this.btnHeight,
    required this.onPressed,
    required this.btnBorderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return MainButton(
        btnText: btnText,
        btnColor: Colors.amber,
        btnBorderColor: Colors.greenAccent,
        btnBorderRadius: btnBorderRadius,
        icon: icon,
        withScaleFactor: 1.4,
        btnTextColor: Colors.black,
        btnHeight: btnHeight,
        btnMarginVertical: 2,
        btnMarginHorizontal: 2,
        btnPaddingVertical: 2,
        btnPaddingHorizontal: 2,
        isRow: false,
        onPressed: onPressed);
  }
}
