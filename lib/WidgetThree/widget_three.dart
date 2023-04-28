import 'package:flutter/material.dart';
import 'package:portfolio_example/WidgetThree/widget_three_body.dart';
import 'package:portfolio_example/WidgetThree/widget_three_header.dart';
import 'package:portfolio_example/style.dart';

import '../responsive_util.dart';

class WidgetThree extends StatelessWidget {
  const WidgetThree({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        // maxWidth: ResponsiveUtil.isMobile(context) ? 500 : 1000,
        maxHeight: ResponsiveUtil.isDesktop(context)
            ? double.infinity
            : ResponsiveUtil.isTablet(context)
                ? 300
                : 200,
      ),
      child: Card(
        color: cardBackgroundColor,
        shape: cardShape,
        child: Padding(
          padding: cardPaddingHigh,
          child: Column(
            children: const [
              WidgetThreeHeader(),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: WidgetThreeBody(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
