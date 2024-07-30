// screen_util.dart
import 'package:flutter/material.dart';

class ScreenSize {
  static double valueResult = 100;

  static double screenWidthControl(double width) {
    if (width > 1920) {
      valueResult = 750;
    } else if (width > 1680 && width <= 1920) {
      valueResult = 650;
    } else if (width > 1370 && width <= 1680) {
      valueResult = 560;
    } else if (width > 1280 && width <= 1370) {
      valueResult = 520;
    } else if (width > 1024 && width <= 1280) {
      valueResult = 400;
    } else if (width > 785 && width <= 1024) {
      valueResult = 300;
    } else if (width > 640 && width <= 785) {
      valueResult = 250;
    } else if (width > 480 && width <= 640) {
      valueResult = 200;
    } else if (width > 360 && width <= 480) {
      valueResult = 0.8;
    } else if (width <= 360) {
      valueResult = width * 0.6;
    } else {
      valueResult = width * 0.8;
    }

    debugPrint('valueResult: $valueResult');
    return valueResult;
  }
}
