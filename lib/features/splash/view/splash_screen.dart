import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skillzy_app/features/splash/view/splash_page1.dart';
import 'package:skillzy_app/features/splash/view/splash_page2.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/view_model/app_brain.dart';


class SplashScreen extends StatefulWidget {
  SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  PageController pageController = PageController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("##########fetching skills");
    _initialize() ;
    print("##########skills fetched");

  }
  Future<void> _initialize() async {
    final appBrain = Provider.of<AppBrain>(context, listen: false);
    await appBrain.initializeApp();

  }

  @override
  Widget build(BuildContext context) {
    print("##########building widget");
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
