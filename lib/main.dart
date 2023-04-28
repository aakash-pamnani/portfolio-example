import 'package:flutter/material.dart';
import 'package:portfolio_example/WidgetFour/widget_four.dart';
import 'package:portfolio_example/data_repository.dart';
import 'package:portfolio_example/responsive.dart';
import 'WidgetOne/widget_one.dart';
import 'WidgetThree/widget_three.dart';
import 'WidgetTwo/widget_two.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: FutureBuilder<void>(
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return const Responsive(
                mobile: HomeScreenMobile(),
                desktop: HomeScreen(),
                tablet: HomeScreenMobile(),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
          future: DataRepository.instance.initilize(context),
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Flexible(
            flex: 3,
            child: Row(
              children: const [
                Flexible(
                  child: WidgetOne(),
                ),
                Flexible(
                  child: WidgetTwo(),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 2,
            child: Row(
              children: const [
                Flexible(
                  flex: 3,
                  child: WidgetThree(),
                ),
                Flexible(
                  flex: 2,
                  child: WidgetFour(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HomeScreenMobile extends StatelessWidget {
  const HomeScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: const [
            WidgetTwo(),
            WidgetOne(),
            WidgetThree(),
            WidgetFour(),
          ],
        ),
      ),
    );
  }
}
