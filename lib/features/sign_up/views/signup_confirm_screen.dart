import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:skillzy_app/core/constants/color_manager.dart';
import 'package:skillzy_app/core/widgets/custom_button.dart';

class SignupConfirmScreen extends StatelessWidget {
  const SignupConfirmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(
            CupertinoIcons.back,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/signup_check.png'),
            Text(
              'Account Created Successfully!',
              style: TextStyle(fontSize: 20, color: Color(0xFF54AB9D)),
            ),
            Text(
              'click continue to start',
              style: TextStyle(fontSize: 16, color: Color(0xFF888888)),
            ),
            SizedBox(height: 70),
            CustomButton(
              title: 'Continue',
              titleColor: ColorManager.mainColorWhite,
              buttonColor: ColorManager.mainColorGreen,
              onPressed: () {context.push('/accessConfirm');},
            ),
          ],
        ),
      ),
    );
  }
}
