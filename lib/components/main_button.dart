import 'package:first_app/constant/app_text_style.dart';
import 'package:first_app/constant/screen_size.dart';
import 'package:first_app/constant/width.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String btnText;
  final Color btnColor;
  final Color btnBorderColor;
  final double btnBorderRadius;
  final Color btnTextColor;
  final IconData? icon;
  final double withScaleFactor;
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
    required this.withScaleFactor,
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
    double screenWidth = Width(context);
    double valueResult =
        ScreenSize.screenWidthControl(screenWidth)['valueResult']!;
    double valueTextSize =
        ScreenSize.screenWidthControl(screenWidth)['valueTextSize']!;

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
                  style: AppTextStyle.buttonText(valueTextSize, btnTextColor),
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
                  style: AppTextStyle.buttonText(valueTextSize, btnTextColor),
                ),
              ],
            );
    }

    return Container(
      width: valueResult * withScaleFactor,
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
}
