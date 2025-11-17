import 'package:flutter/material.dart';

import '../../../core/constants/color_manager.dart';
import '../../../core/constants/string_manager.dart';

class SplashPage1 extends StatelessWidget {
  const SplashPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: double.infinity,
      color: Color(ColorManager.secondaryColor),
      child: Image.asset(StringManager.appLogo),
    );
  }
}
