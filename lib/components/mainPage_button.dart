import 'package:flutter/material.dart';

class MainpageButton extends StatelessWidget {
  final String btnText;
  final Color btnColor;
  final Color btnTextColor;
  final IconData icon;
  final Function() onPressed;

  const MainpageButton(
      {super.key,
      required this.btnText,
      required this.btnColor,
      required this.onPressed,
      required this.btnTextColor,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.3,
      height: size.width * 0.3,
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(2),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: btnColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: btnTextColor),
            const SizedBox(
              height: 10,
            ),
            Text(
              btnText,
              style: TextStyle(color: btnTextColor),
            ),
          ],
        ),
      ),
    );
  }
}
