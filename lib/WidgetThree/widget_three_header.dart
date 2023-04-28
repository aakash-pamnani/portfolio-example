import 'package:flutter/material.dart';

import '../data_repository.dart';
import '../style.dart';

class WidgetThreeHeader extends StatelessWidget {
  const WidgetThreeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    DataRepository dataRepository = DataRepository.instance;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          dataRepository.data["card3Title"],
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
              dataRepository.data["card3SeeAll"],
              style: cardTitleStyleLight,
            )),
      ],
    );
  }
}
