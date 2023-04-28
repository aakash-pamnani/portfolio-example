import 'package:flutter/material.dart';
import 'package:portfolio_example/data_repository.dart';
import 'package:portfolio_example/style.dart';

class WidgetTwoHeader extends StatelessWidget {
  const WidgetTwoHeader({super.key});

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
            RichText(
              text: TextSpan(
                text: dataRepository.data["card2Title"],
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: dataRepository.data["card2Title2"],
                    style: TextStyle(
                      color: primaryTextColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
              color: primaryTextColor,
            )
          ],
        ),
      ),
    );
  }
}
