class ScreenSize {
  static double valueResult = 100;
  static double valueTextSize = 100;
  static double valueBtnDimension = 10;

  static Map<String, double> screenWidthControl(double width) {
    if (width > 1920) {
      valueResult = width * 0.8;
      valueTextSize = 25;
      valueBtnDimension = 100;
    } else if (width > 1680 && width <= 1920) {
      valueResult = width * 0.7;
      valueTextSize = 23;
      valueBtnDimension = 90;
    } else if (width > 1370 && width <= 1680) {
      valueResult = width * 0.7;
      valueTextSize = 21;
      valueBtnDimension = 80;
    } else if (width > 1280 && width <= 1370) {
      valueResult = width * 0.7;
      valueTextSize = 19;
      valueBtnDimension = 75;
    } else if (width > 1024 && width <= 1280) {
      valueResult = width * 0.7;
      valueTextSize = 17;
      valueBtnDimension = 75;
    } else if (width > 785 && width <= 1024) {
      valueResult = width * 0.7;
      valueTextSize = 16;
      valueBtnDimension = 70;
    } else if (width > 580 && width <= 785) {
      valueResult = width * 0.7;
      valueTextSize = 14;
      valueBtnDimension = 60;
    } else if (width > 480 && width <= 580) {
      valueResult = width * 0.7;
      valueTextSize = 11;
      valueBtnDimension = 45;
    } else if (width > 390 && width <= 480) {
      valueResult = width * 0.7;
      valueTextSize = 11;
      valueBtnDimension = 45;
    } else if (width <= 390) {
      valueResult = width * 0.7;
      valueTextSize = 11;
      valueBtnDimension = 35;
    }

    return {
      'valueResult': valueResult,
      'valueTextSize': valueTextSize,
      'valueBtnDimension': valueBtnDimension
    };
  }
}
