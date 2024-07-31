// screen_size_util.dart
import 'package:flutter/material.dart';
import 'package:first_app/constant/screen_size.dart';

double Width(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  double screen = size.width;
  double screenWidth = ScreenSize.screenWidthControl(screen)['valueResult']!;
  return screenWidth;
}
