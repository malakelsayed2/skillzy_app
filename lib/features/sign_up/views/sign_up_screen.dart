import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:skillzy_app/core/constants/color_manager.dart';
import 'package:skillzy_app/core/constants/string_manager.dart';
import 'package:skillzy_app/core/widgets/custom_button.dart';
import 'package:skillzy_app/core/widgets/custom_textfield.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height ;
    return Scaffold(
      backgroundColor: Color(ColorManager.mainColorGreen),
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          padding: EdgeInsetsGeometry.all(30),
          height: screenHeight*0.75,
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
                Image.asset(StringManager.appLogo2 , height: 90,),
                Text(
                  'Create Account',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                SizedBox(height: 20,),
                CustomTextfield(
                  prefixIcon: 'assets/icons/person.png',
                  hint: 'Username',
                ),
                SizedBox(height: 10,),
                CustomTextfield(
                  prefixIcon: 'assets/icons/emailIcon.png',
                  hint: 'Email',
                ),
                SizedBox(height: 10,),
                CustomTextfield(
                  prefixIcon: 'assets/icons/password.png',
                  hint: 'Password',
                  suffixIcon: CupertinoIcons.eye_slash,
                ),
                SizedBox(height: 10,),
                CustomTextfield(
                  prefixIcon: 'assets/icons/password.png',
                  hint: 'Confirm Password',
                  suffixIcon: CupertinoIcons.eye_slash,
                ),
                SizedBox(height: 10,),
                CustomTextfield(
                  prefixIcon: 'assets/icons/password.png',
                  hint: 'Phone Number',
                ),
                SizedBox(height: 20,),
                CustomButton(
                  title: 'Sign Up',
                  titleColor: ColorManager.mainColorWhite,
                  buttonColor: ColorManager.mainColorGreen,
                  onPressed: () {context.push('/signupConfirm');},
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Or Sign Up With',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/icons/facebookIcon.png'),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/icons/googleIcon.png'),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/icons/appleIcon.png'),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already Have An Account?',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    TextButton(
                      onPressed: () {context.go('/login');},
                      child: Text(
                        'Login',
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
