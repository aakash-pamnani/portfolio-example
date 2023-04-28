import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data_repository.dart';
import '../responsive_util.dart';
import '../style.dart';

class WidgetOneCommonCard extends StatelessWidget {
  const WidgetOneCommonCard(
      {super.key,
      required this.backgroundColor,
      required this.title,
      required this.subtitle,
      required this.titleColor});
  final Color backgroundColor;
  final String title;
  final String subtitle;
  final Color titleColor;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: backgroundColor,
        margin: cardMargin,
        shape: cardShape,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                flex: 2,
                child: FittedBox(
                  child: Text(
                    title,
                    style: GoogleFonts.notoSans(
                      fontSize: MediaQuery.of(context).size.width * 0.05,
                      fontWeight: FontWeight.bold,
                      color: titleColor,
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: FittedBox(
                  child: Text(
                    subtitle,
                    style: GoogleFonts.notoSans(
                      fontSize: MediaQuery.of(context).size.width *
                          (ResponsiveUtil.isMobile(context) ? 0.02 : 0.009),
                      fontWeight: FontWeight.bold,
                      color: titleColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
