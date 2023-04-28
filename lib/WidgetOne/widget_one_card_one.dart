import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_example/data_repository.dart';

import '../style.dart';

class WidgetOneCardOne extends StatelessWidget {
  const WidgetOneCardOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    DataRepository dataRepository = DataRepository.instance;
    return Card(
      color: cardBackgroundColor,
      shape: cardShape,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            Positioned(
              right: 0,
              bottom: 0,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                child: Padding(
                  padding: cardPadding,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        dataRepository.data["cardButton1"],
                        style: cardTitleStyle,
                      ),
                      Transform.rotate(
                        angle: -pi / 6,
                        child: Image.asset(
                          "assets/hand.png",
                          width: 30,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            FittedBox(
              child: Text(
                dataRepository.data["card1"],
                style: GoogleFonts.notoSans(
                  fontSize: MediaQuery.of(context).size.width,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
