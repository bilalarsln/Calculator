import 'package:first_app/constant/screen_size.dart';
import 'package:first_app/constant/width.dart';
import 'package:flutter/material.dart';

class AppTextStyle {
  static TextStyle miniBoldDescriptionText(double width) {
    return TextStyle(
      fontSize: width,
      color: Colors.black,
      letterSpacing: 3,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle middleButtonText(double width) {
    return TextStyle(
      fontSize: width,
      letterSpacing: 5,
      color: Colors.white,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle miniDescriptionText(double width) {
    return TextStyle(
      fontSize: width,
      color: Colors.black,
      letterSpacing: 3,
    );
  }

  static TextStyle miniDefaultDescriptionText(double width) {
    return TextStyle(
      fontSize: width,
      color: Colors.black,
    );
  }

  static TextStyle miniDescriptionBold(double width) {
    return TextStyle(
      fontSize: width,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle MINI_DESCRIPTION_TEXT(double width) {
    return TextStyle(fontSize: width, color: Colors.black, letterSpacing: 3);
  }
}
