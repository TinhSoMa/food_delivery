import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Dimension {
  static double screenHeight = 0;
  static double screenWidth = 0;

  static void init(BuildContext context) {
    final size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;
  }

  // Chiều cao
  static double get height10 => screenHeight / 84.4;
  static double get height20 => screenHeight / 42.2;
  static double get height30 => screenHeight / 28.1;

  // Chiều rộng
  static double get width10 => screenWidth / 41.1;
  static double get width20 => screenWidth / 20.55;
  static double get width30 => screenWidth / 13.7;

  // Font size
  static double get font16 => screenHeight / 52.75;
  static double get font20 => screenHeight / 42.2;

  // Radius
  static double get radius10 => screenHeight / 84.4;
  static double get radius20 => screenHeight / 42.2;

  // Icon size
  static double get iconSize24 => screenHeight / 35.17;
}