class ScreenSize {
  static double valueResult = 100;
  static double valueTextSize = 100;

  static Map<String, double> screenWidthControl(double width) {
    if (width > 1920) {
      valueResult = width * 0.7;
      valueTextSize = 20;
    } else if (width > 1680 && width <= 1920) {
      valueResult = width * 0.7;
      valueTextSize = 18;
    } else if (width > 1370 && width <= 1680) {
      valueResult = width * 0.7;
      valueTextSize = 16;
    } else if (width > 1280 && width <= 1370) {
      valueResult = width * 0.7;
      valueTextSize = 14;
    } else if (width > 1024 && width <= 1280) {
      valueResult = width * 0.7;
      valueTextSize = 12;
    } else if (width > 785 && width <= 1024) {
      valueResult = width * 0.7;
      valueTextSize = 11;
    } else if (width > 640 && width <= 785) {
      valueResult = width * 0.7;
      valueTextSize = 12;
    } else if (width > 480 && width <= 640) {
      valueResult = width * 0.7;
      valueTextSize = 11;
    } else if (width > 360 && width <= 480) {
      valueResult = width * 0.7;
      valueTextSize = 11;
    } else if (width <= 360) {
      valueResult = width * 0.7;
      valueTextSize = 11;
    } else {
      valueResult = width * 0.7;
      valueTextSize = 11;
    }

    return {
      'valueResult': valueResult,
      'valueTextSize': valueTextSize,
    };
  }
}
