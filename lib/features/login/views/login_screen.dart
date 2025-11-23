import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/constants/color_manager.dart';
import '../../../core/constants/string_manager.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/custom_external_signup_login.dart';
import '../../../core/widgets/custom_textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(StringManager.appLogo2, height: 90),
                SizedBox(height: 20),
                Text(
                  ' Log In To Your Account',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                SizedBox(height: 20),
                CustomTextfield(
                  prefixIcon: 'assets/icons/emailIcon.png',
                  hint: 'Email',
                ),
                SizedBox(height: 10),
                CustomTextfield(
                  prefixIcon: 'assets/icons/password.png',
                  hint: 'Password',
                  // suffixIcon: CupertinoIcons.eye_slash,
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            CupertinoIcons.check_mark_circled,
                            color: Color(ColorManager.mainColorGreen),
                          ),
                        ),
                        Text(
                          'Remember Me',
                          style: TextStyle(
                            color: Color(ColorManager.mainColorGreen),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {context.push('/forgotPass');},
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Color(ColorManager.mainColorGreen),
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                CustomButton(
                  title: 'Login',
                  titleColor: ColorManager.mainColorWhite,
                  buttonColor: ColorManager.mainColorGreen,
                  onPressed: () {},
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Or Log In With',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                CustomExternalSignupLogin(),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t Have An Account?',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    TextButton(
                      onPressed: () {
                        context.go('/signup');
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(ColorManager.mainColorGreen),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
