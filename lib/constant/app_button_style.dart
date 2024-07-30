import 'package:first_app/components/main_button.dart';
import 'package:flutter/material.dart';

class AppButtonStyle {
  double screenWidthControl(width) {
    if (width > 1920) {
      return 750;
    } else if (width > 1680 && width <= 1920) {
      return 650;
    } else if (width > 1370 && width <= 1680) {
      return 560;
    } else if (width > 1280 && width <= 1370) {
      return 520;
    } else if (width > 1024 && width <= 1280) {
      return 400;
    } else if (width > 785 && width <= 1024) {
      return 700;
    } else if (width <= 785) {
      return width * 0.9;
    } else {
      return width * 0.9;
    }
  }

  static const MIDDLE_BUTTON_TEXT = TextStyle(
    fontSize: 16,
    letterSpacing: 5,
    color: Colors.white,
    fontWeight: FontWeight.w500,
  );
}
