import 'package:flutter/material.dart';

import '../data_repository.dart';
import '../style.dart';

class WidgetThreeBody extends StatelessWidget {
  const WidgetThreeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const [
        WidgetThreeBodyCard(),
        WidgetThreeBodyCard(),
        WidgetThreeBodyCard(),
      ],
    );
  }
}

class WidgetThreeBodyCard extends StatefulWidget {
  const WidgetThreeBodyCard({super.key});

  @override
  State<WidgetThreeBodyCard> createState() => _WidgetThreeBodyCardState();
}

class _WidgetThreeBodyCardState extends State<WidgetThreeBodyCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    DataRepository dataRepository = DataRepository.instance;
    return Expanded(
      child: InkWell(
        splashFactory: NoSplash.splashFactory,
        splashColor: Colors.transparent,
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        onTap: () {},
        child: Card(
          color: primaryColor,
          shape: cardShape,
          child: Stack(
            children: [
              Center(
                child: Container(
                  color: primaryColor,
                  child: Image.asset(
                    "assets/icons/instagram.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              if (isHover)
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black.withAlpha(100),
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Center(
                    child: Text(
                      "Read More",
                      style: cardTitleStyle,
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
