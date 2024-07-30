import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String btnText;
  final Color btnColor;
  final Color btnBorderColor;
  final double btnBorderRadius;
  final Color btnTextColor;
  final IconData? icon;
  final double btnWidth;
  final double btnHeight;
  final double btnMarginVertical;
  final double btnMarginHorizontal;
  final double btnPaddingVertical;
  final double btnPaddingHorizontal;
  final bool isRow;
  final Function() onPressed;

  const MainButton({
    super.key,
    required this.btnText,
    required this.btnColor,
    required this.btnBorderColor,
    required this.btnBorderRadius,
    required this.btnTextColor,
    this.icon,
    required this.btnWidth,
    required this.btnHeight,
    required this.btnMarginVertical,
    required this.btnMarginHorizontal,
    required this.btnPaddingVertical,
    required this.btnPaddingHorizontal,
    required this.isRow,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    Widget place() {
      return isRow
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (icon != null) Icon(icon, color: btnTextColor),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  btnText,
                  style: TextStyle(color: btnTextColor),
                ),
              ],
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (icon != null) Icon(icon, color: btnTextColor),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  btnText,
                  style: TextStyle(color: btnTextColor),
                ),
              ],
            );
    }

    return Container(
      width: btnWidth,
      height: btnHeight,
      margin: EdgeInsets.symmetric(
        vertical: btnMarginVertical,
        horizontal: btnMarginHorizontal,
      ),
      padding: EdgeInsets.symmetric(
        vertical: btnPaddingVertical,
        horizontal: btnPaddingHorizontal,
      ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: btnColor,
          side: BorderSide(color: btnBorderColor),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(btnBorderRadius),
          ),
        ),
        child: place(),
      ),
    );
  }

  static int width = 580;
  static double valueResult = 100;

  double screenWidthControl(int width) {
    if (width > 1920) {
      return 750;
    } else if (width > 1680 && width <= 1920) {
      return valueResult = 650;
    } else if (width > 1370 && width <= 1680) {
      return 560;
    } else if (width > 1280 && width <= 1370) {
      return 520;
    } else if (width > 1024 && width <= 1280) {
      return 400;
    } else if (width > 785 && width <= 1024) {
      return 300;
    } else if (width <= 785) {
      return width * 0.8;
    } else {
      return width * 0.8;
    }
  }

  // static final BTN_LARGE = ButtonStyle(
  //   btnWidth : valueResult * 1.2;
  // );
}
