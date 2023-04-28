import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color get primaryColor => Colors.purple;

Color get primaryTextColor => Colors.white;

Color? get cardBackgroundColor => Colors.grey[900];

Color? get cardBackgroundColorLight => Colors.grey[700];

EdgeInsets get cardPadding => const EdgeInsets.all(12.0);

EdgeInsets get cardPaddingHigh => const EdgeInsets.all(24.0);

EdgeInsets get cardMargin => const EdgeInsets.all(8.0);

ShapeBorder get cardShape => RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    );

TextStyle get cardSubtitleStyle => GoogleFonts.notoSans(
      fontSize: 16,
      color: Colors.grey[500],
    );
TextStyle get cardTitleStyleLight => GoogleFonts.notoSans(
      fontSize: 20,
      color: cardBackgroundColorLight,
    );

TextStyle get cardTitleStyle => GoogleFonts.notoSans(
      color: primaryTextColor,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    );
