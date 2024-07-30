import 'package:flutter/material.dart';

class AppTextStyle {
  static TextStyle miniBoldDescriptionText(double width) {
    return TextStyle(
      fontSize: 0.06 * width,
      color: Colors.black,
      letterSpacing: 3,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle middleButtonText(double width) {
    return TextStyle(
      fontSize: 16 * width,
      letterSpacing: 5,
      color: Colors.white,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle miniDescriptionText(double width) {
    return TextStyle(
      fontSize: 0.06 * width,
      color: Colors.black,
      letterSpacing: 3,
    );
  }

  static TextStyle miniDefaultDescriptionText(double width) {
    return TextStyle(
      fontSize: 0.06 * width,
      color: Colors.black,
    );
  }

  static TextStyle miniDescriptionBold(double width) {
    return TextStyle(
      fontSize: 0.06 * width,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    );
  }
}
