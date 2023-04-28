import 'package:flutter/material.dart';
import 'package:portfolio_example/responsive_util.dart';

import '../data_repository.dart';
import 'widget_one_card_one.dart';
import 'widget_one_common_card.dart';

class WidgetOne extends StatelessWidget {
  const WidgetOne({super.key});

  @override
  Widget build(BuildContext context) {
    DataRepository dataRepository = DataRepository.instance;

    return ConstrainedBox(
      constraints: BoxConstraints(
          maxHeight: ResponsiveUtil.isDesktop(context)
              ? double.infinity
              : MediaQuery.of(context).size.width * 0.5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(flex: 5, child: WidgetOneCardOne()),
          Expanded(
            flex: 4,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                WidgetOneCommonCard(
                  backgroundColor: Colors.greenAccent,
                  title: dataRepository.data["experience"],
                  subtitle: dataRepository.data["experienceText"],
                  titleColor: Colors.white,
                ),
                WidgetOneCommonCard(
                  backgroundColor: Colors.yellow,
                  title: dataRepository.data["projects"],
                  subtitle: dataRepository.data["projectsText"],
                  titleColor: Colors.black,
                ),
                WidgetOneCommonCard(
                  backgroundColor: Colors.pinkAccent,
                  title: dataRepository.data["clients"],
                  subtitle: dataRepository.data["clientsText"],
                  titleColor: Colors.white,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
