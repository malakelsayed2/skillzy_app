import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/constants/color_manager.dart';
import '../../../core/constants/string_manager.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/custom_textfield.dart';

class ForgotPassScreen extends StatelessWidget {
  const ForgotPassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(
            CupertinoIcons.back,
            color: Color(ColorManager.mainColorWhite),
          ),
        ),
      ),
      backgroundColor: Color(ColorManager.mainColorGreen),
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          padding: EdgeInsetsGeometry.all(30),
          height: screenHeight * 0.75,
          decoration: BoxDecoration(
            color: Color(ColorManager.mainColorWhite),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(StringManager.appLogo2, height: 90),
              SizedBox(height: 20),
              Text(
                'Forgot Password',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              SizedBox(height: 10),
              Text(
                'Please Enter Your Email To Reset Your Password',
                style: TextStyle(color: Color(0xFF747474), fontSize: 14),
              ),
              SizedBox(height: 30),
              CustomTextfield(
                prefixIcon: 'assets/icons/emailIcon.png',
                hint: 'Email',
              ),
              SizedBox(height: 30),
              CustomButton(
                title: 'Send Code',
                titleColor: ColorManager.mainColorWhite,
                buttonColor: ColorManager.mainColorGreen,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
