import 'package:flutter/material.dart';
import 'package:portfolio_example/WidgetTwo/widget_two_image.dart';
import 'package:portfolio_example/WidgetTwo/widget_two_header.dart';
import 'package:portfolio_example/WidgetTwo/widget_two_location.dart';
import 'package:portfolio_example/WidgetTwo/widget_two_name.dart';
import 'package:portfolio_example/WidgetTwo/widget_two_social.dart';
import 'package:portfolio_example/responsive_util.dart';

class WidgetTwo extends StatelessWidget {
  const WidgetTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        // maxWidth: ResponsiveUtil.isMobile(context) ? 500 : 1000,
        maxHeight: ResponsiveUtil.isDesktop(context)
            ? double.infinity
            : ResponsiveUtil.isTablet(context)
                ? 500
                : 800,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const WidgetTwoHeader(),
          Flexible(
            child: Flex(
              direction: ResponsiveUtil.isMobile(context)
                  ? Axis.vertical
                  : Axis.horizontal,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Expanded(child: WidgetTwoImage()),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Flexible(child: WidgetTwoName()),
                      Expanded(flex: 3, child: WidgetTwoLocation()),
                      Flexible(child: WidgettwoSocial()),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
