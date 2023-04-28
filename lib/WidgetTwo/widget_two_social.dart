import 'package:flutter/material.dart';
import 'package:portfolio_example/data_repository.dart';
import 'package:portfolio_example/style.dart';

class WidgettwoSocial extends StatelessWidget {
  const WidgettwoSocial({super.key});

  @override
  Widget build(BuildContext context) {
    DataRepository dataRepository = DataRepository.instance;
    return Card(
      color: cardBackgroundColor,
      shape: cardShape,
      child: Padding(
        padding: cardPadding,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SocialIcon(
                imagePath: "assets/icons/facebook.png",
                url: dataRepository.data["facebookUrl"]),
            SocialIcon(
                imagePath: "assets/icons/instagram.png",
                url: dataRepository.data["instagramUrl"]),
            SocialIcon(
                imagePath: "assets/icons/twitter.png",
                url: dataRepository.data["twitterUrl"]),
            SocialIcon(
                imagePath: "assets/icons/linkedin.png",
                url: dataRepository.data["linkedinUrl"]),
          ],
        ),
      ),
    );
  }
}

class SocialIcon extends StatelessWidget {
  const SocialIcon({super.key, required this.imagePath, required this.url});

  final String imagePath;
  final String url;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      splashFactory: NoSplash.splashFactory,
      hoverColor: Colors.transparent,
      onTap: () {},
      child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: cardBackgroundColorLight,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              imagePath,
              height: 30,
              width: 30,
            ),
          )),
    );
  }
}
