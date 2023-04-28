import 'package:flutter/material.dart';
import 'package:portfolio_example/WidgetFour/widget_four_body.dart';
import 'package:portfolio_example/WidgetFour/widget_four_header.dart';

import '../responsive_util.dart';
import '../style.dart';

class WidgetFour extends StatelessWidget {
  const WidgetFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardBackgroundColor,
      shape: cardShape,
      child: Padding(
        padding: cardPaddingHigh,
        child: Column(
          children: const [
            WidgetFourHeader(),
            SizedBox(
              height: 20,
            ),
            WidgetFourBody(),
          ],
        ),
      ),
    );
  }
}
