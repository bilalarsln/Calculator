import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget inputBox;
  const TextFieldContainer({super.key, required this.inputBox});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      width: size.width * 0.6,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: inputBox,
    );
  }
}
