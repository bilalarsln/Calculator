import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String texts;
  final int buttonBgColor;
  final int textColor;
  final double textSize;
  final Function(String) click;

  const CalculatorButton(
      {super.key,
      required this.texts,
      required this.buttonBgColor,
      required this.textColor,
      required this.textSize,
      required this.click});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      margin: const EdgeInsets.all(4),
      child: Column(
        children: [
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Color(buttonBgColor),
              minimumSize: const Size(75, 75),
            ),
            onPressed: () => {
              click(texts),
            },
            child: Text(
              texts,
              style: TextStyle(
                  color: Color(textColor),
                  fontFamily: 'Digital7',
                  fontSize: textSize),
            ),
          )
        ],
      ),
    );
  }
}
