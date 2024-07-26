import 'package:first_app/components/text_field_container.dart';
import 'package:flutter/material.dart';

class RoundedInputFields extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChange;
  const RoundedInputFields(
      {super.key,
      required this.hintText,
      required this.icon,
      required this.onChange});

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      inputBox: TextField(
        onChanged: onChange,
        decoration: InputDecoration(
          hintText: hintText,
          icon: Icon(
            icon,
            color: Colors.amber,
          ),
          fillColor: const Color.fromARGB(255, 0, 0, 0),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
