import 'package:get/get.dart';

class SizeConfig {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  double getHeight(double inputHeight) {
    return (inputHeight * screenHeight) / 812.0;
  }

  double getWidth(double inputWidth) {
    return (inputWidth * screenWidth) / 375.0;
  }

  double getProportionalScreenWidth(double width) {
    return (width * 375.0) / SizeConfig.screenWidth;
  }

  double getProportionalScreenHeight(double height) {
    return (height * 812.0) / SizeConfig.screenHeight;
  }
}
