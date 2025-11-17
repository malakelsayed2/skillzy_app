import 'package:flutter/material.dart';

import '../../../core/constants/color_manager.dart';
import '../../../core/constants/string_manager.dart';
import '../../../core/widgets/custom_button.dart';

class SplashPage2 extends StatelessWidget {
  const SplashPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 49),

      height: double.infinity,
      color: Color(ColorManager.secondaryColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Spacer(flex: 2),
          Image.asset('assets/images/splash_image.png'),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Found Your Needs Matchy Here ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    fontFamily: StringManager.appFont,
                  ),
                ),
                TextSpan(
                  text: ", To Share Skills With People!",
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: StringManager.appFont,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              'Switch Your Skill With Other Someone’s Skill',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFFD0D0D0),
              ),
            ),
          ),
          Spacer(flex: 1),
          CustomButton(
            title: 'Get Started',
            titleColor: ColorManager.mainColorWhite,
            buttonColor: ColorManager.mainColorGreen,
          ),
          SizedBox(height: 10),
          CustomButton(
            title: 'Login',
            titleColor: ColorManager.mainColorGreen,
            buttonColor: ColorManager.mainColorWhite,
          ),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}
