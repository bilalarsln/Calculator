import 'package:flutter/material.dart';

class ScreenSize {
  static double valueTextSize = 100;
  static double textSizeControl(double width) {
    if (width > 1920) {
      valueTextSize = 60;
    } else if (width > 1680 && width <= 1920) {
      valueTextSize = 48;
    } else if (width > 1370 && width <= 1680) {
      valueTextSize = 40;
    } else if (width > 1280 && width <= 1370) {
      valueTextSize = 34;
    } else if (width > 1024 && width <= 1280) {
      valueTextSize = 24;
    } else if (width > 785 && width <= 1024) {
      valueTextSize = 20;
    } else if (width > 640 && width <= 785) {
      valueTextSize = 16;
    } else if (width > 480 && width <= 640) {
      valueTextSize = 14;
    } else if (width > 360 && width <= 480) {
      valueTextSize = 12;
    } else if (width <= 360) {
      valueTextSize = 10;
    } else {
      valueTextSize = 10;
    }

    debugPrint('valueText: $valueTextSize');
    return valueTextSize;
  }
}
