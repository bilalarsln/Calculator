import 'package:first_app/constant/app_text_style.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String btnText;
  final Color btnColor;
  // final VoidCallbackAction loginBtnPress;
  const RoundedButton({
    super.key,
    required this.btnText,
    required this.btnColor,
    required Null Function() onPressed,
    // required this.loginBtnPress
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              backgroundColor: btnColor),
          child: Text(
            btnText,
            style: AppTextStyle.MIDDLE_BUTTON_TEXT,
          ),
        ),
      ),
    );
  }
}
