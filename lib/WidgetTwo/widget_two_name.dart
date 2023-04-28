import 'package:flutter/material.dart';
import 'package:portfolio_example/data_repository.dart';

import '../style.dart';

class WidgetTwoName extends StatelessWidget {
  const WidgetTwoName({super.key});

  @override
  Widget build(BuildContext context) {
    DataRepository dataRepository = DataRepository.instance;
    return Card(
      color: cardBackgroundColor,
      shape: cardShape,
      child: Padding(
        padding: cardPadding,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                "Name :",
                style: cardSubtitleStyle,
              ),
            ),
            Flexible(
              child: FittedBox(
                child: Text(
                  dataRepository.data["name"],
                  style: cardTitleStyle,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
