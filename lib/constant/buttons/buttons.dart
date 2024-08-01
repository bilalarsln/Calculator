import 'package:first_app/components/main_button.dart';
import 'package:flutter/material.dart';

class SmallButton extends StatelessWidget {
  final String btnText;
  final IconData? icon;

  final Function() onPressed;
  final double btnBorderRadius;

  const SmallButton({
    super.key,
    required this.btnText,
    this.icon,
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
        heightScaleFactor: 0.1,
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

  final Function() onPressed;
  final double btnBorderRadius;

  const MidButton({
    super.key,
    required this.btnText,
    this.icon,
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
        withScaleFactor: 4,
        btnTextColor: Colors.black,
        heightScaleFactor: 1,
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
  final Function() onPressed;
  final double btnBorderRadius;

  const LargeButton({
    super.key,
    required this.btnText,
    this.icon,
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
        heightScaleFactor: 0.1,
        btnMarginVertical: 2,
        btnMarginHorizontal: 2,
        btnPaddingVertical: 2,
        btnPaddingHorizontal: 2,
        isRow: false,
        onPressed: onPressed);
  }
}

class QuizChoiceButton extends StatelessWidget {
  final String btnText;
  final Function()? onPressed;

  const QuizChoiceButton({
    super.key,
    required this.btnText,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MainButton(
      btnText: btnText,
      btnColor: const Color.fromARGB(255, 160, 160, 160),
      btnBorderColor: const Color.fromARGB(255, 76, 76, 76),
      btnBorderRadius: 30,
      withScaleFactor: 8,
      btnTextColor: const Color.fromARGB(255, 255, 255, 255),
      heightScaleFactor: 1,
      btnMarginVertical: 5,
      btnMarginHorizontal: 2,
      btnPaddingVertical: 2,
      btnPaddingHorizontal: 2,
      isRow: false,
      onPressed: () {},
    );
  }
}
