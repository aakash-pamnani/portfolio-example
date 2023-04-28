import 'package:flutter/material.dart';

import 'package:portfolio_example/style.dart';

class WidgetTwoImage extends StatelessWidget {
  const WidgetTwoImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: primaryColor,
      shape: cardShape,
      child: Image.asset("assets/man.png"),
    );
  }
}
