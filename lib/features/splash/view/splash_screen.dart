import 'package:flutter/material.dart';
import 'package:skillzy_app/features/splash/view/splash_page1.dart';
import 'package:skillzy_app/features/splash/view/splash_page2.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            children: [
              SplashPage1(),
              SplashPage2(),
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 20,
            child: Center(
              child: SmoothPageIndicator(
                effect: WormEffect(
                  activeDotColor: Color(0xFFFFB81E),
                  dotColor: Color(0xFFEDEDED),
                ),
                controller: pageController,
                count: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
