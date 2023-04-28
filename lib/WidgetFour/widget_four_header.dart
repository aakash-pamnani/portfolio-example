import 'package:flutter/material.dart';

import '../data_repository.dart';
import '../style.dart';

class WidgetFourHeader extends StatelessWidget {
  const WidgetFourHeader({super.key});

  @override
  Widget build(BuildContext context) {
    DataRepository dataRepository = DataRepository.instance;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          dataRepository.data["card4Title"],
          style: cardTitleStyle,
        ),
        TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              splashFactory: NoSplash.splashFactory,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Text(
              dataRepository.data["card4Resume"],
              style: cardTitleStyleLight,
            )),
      ],
    );
  }
}
