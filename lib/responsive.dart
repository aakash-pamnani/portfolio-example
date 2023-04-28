import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive(
      {super.key,
      required this.mobile,
      required this.tablet,
      required this.desktop});

  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth > 1200) {
        return desktop;
      } else if (constrains.maxWidth > 800 && constrains.maxWidth < 1200) {
        return tablet;
      } else {
        return mobile;
      }
    });
  }
}
