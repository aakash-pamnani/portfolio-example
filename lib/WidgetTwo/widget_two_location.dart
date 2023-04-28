import 'package:flutter/material.dart';
import 'package:portfolio_example/data_repository.dart';

import '../style.dart';

class WidgetTwoLocation extends StatelessWidget {
  const WidgetTwoLocation({super.key});

  @override
  Widget build(BuildContext context) {
    DataRepository dataRepository = DataRepository.instance;
    return Card(
      color: cardBackgroundColor,
      shape: cardShape,
      child: Padding(
        padding: cardPadding,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    "Based In :",
                    style: cardSubtitleStyle,
                  ),
                ),
                Flexible(
                  child: FittedBox(
                    child: Text(
                      dataRepository.data["location"],
                      style: cardTitleStyle,
                    ),
                  ),
                )
              ],
            ),
            Expanded(
              child: Container(
                color: cardBackgroundColor,
                // height: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
