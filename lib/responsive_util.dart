import 'package:flutter/material.dart';

class ResponsiveUtil{
  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width > 1200;
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width > 800 &&
        MediaQuery.of(context).size.width <= 1200;
  }

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width <= 800;
  }
}