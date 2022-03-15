import 'package:flutter/cupertino.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);

    screenHeight = _mediaQueryData.size.width;
    screenWidth = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }

  double getProportionalScreenWidth(double width) {
    return (width * 375.0) / SizeConfig.screenWidth;
  }

  double getProportionalScreenHeight(double height) {
    return (height * 812.0) / SizeConfig.screenHeight;
  }
}
