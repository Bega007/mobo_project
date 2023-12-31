import 'package:flutter/material.dart';

class MyHelperFunctions {
  // isDark mode?
  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  // remove dublicates
  static List<Product> removeDublicates<Product>(List<Product> list) {
    return list.toSet().toList();
  }

  static Size screenSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
}
