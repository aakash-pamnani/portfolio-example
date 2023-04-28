import 'package:flutter/material.dart';
import 'package:portfolio_example/data_repository.dart';
import 'package:portfolio_example/style.dart';

class WidgetFourBody extends StatelessWidget {
  const WidgetFourBody({super.key});

  @override
  Widget build(BuildContext context) {
    DataRepository dataRepository = DataRepository.instance;
    return Text(
      dataRepository.data["card4Data"],
      style: cardSubtitleStyle,
    );
  }
}
