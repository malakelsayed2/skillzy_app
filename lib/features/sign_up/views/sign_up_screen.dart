import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:skillzy_app/core/constants/color_manager.dart';
import 'package:skillzy_app/core/constants/string_manager.dart';
import 'package:skillzy_app/core/widgets/custom_button.dart';
import 'package:skillzy_app/core/widgets/custom_external_signup_login.dart';
import 'package:skillzy_app/core/widgets/custom_textfield.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final formKey = GlobalKey<FormState>();

  TextEditingController usernameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passController = TextEditingController();

  TextEditingController confirmPassController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  bool isPassHidden = true ;

  bool isConfirmPassHidden = true ;

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
                Text(
                  'Create Account',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                SizedBox(height: 20),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      CustomTextfield(
                        prefixIcon: 'assets/icons/person.png',
                        hint: 'Username',
                        controller: usernameController,
                        validator: (p0) {
                          if (p0!.length < 3) {
                            return "Username Must Have At Least 3 Characters!" ;
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 10),
                      CustomTextfield(
                        prefixIcon: 'assets/icons/emailIcon.png',
                        hint: 'Email',
                        controller: emailController,
                        validator: (p0) {
                          if(!p0!.contains('@')){
                            return 'Enter A Valid Email!' ;
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 10),
                      CustomTextfield(
                        prefixIcon: 'assets/icons/password.png',
                        hint: 'Password',
                        suffixIcon: IconButton(onPressed: () {
                          isPassHidden = !isPassHidden ;
                          setState(() {

                          });
                        }, icon: Icon(isPassHidden?CupertinoIcons.eye_slash : CupertinoIcons.eye)),
                        obsecureText: isPassHidden ? true : false,
                        controller: passController,
                        validator: (p0) {
                          if (p0!.length < 8) {
                            return "Password Must Have At Least 8 Characters!";
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 10),
                      CustomTextfield(
                        prefixIcon: 'assets/icons/password.png',
                        hint: 'Confirm Password',
                        suffixIcon: IconButton(onPressed: () {
                          isConfirmPassHidden = !isConfirmPassHidden ;
                          setState(() {

                          });
                        }, icon: Icon( isConfirmPassHidden?CupertinoIcons.eye_slash : CupertinoIcons.eye)),
                        obsecureText: isConfirmPassHidden? true : false,
                        controller: confirmPassController,
                        validator: (p0) {
                          if (p0 != passController.text) {
                            return "Passwords Don't Match!" ;
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 10),
                      CustomTextfield(
                        prefixIcon: 'assets/icons/password.png',
                        hint: 'Phone Number',
                        controller: phoneController,
                      ),
                      SizedBox(height: 20),
                      CustomButton(
                        title: 'Sign Up',
                        titleColor: ColorManager.mainColorWhite,
                        buttonColor: ColorManager.mainColorGreen,
                        onPressed: () {
                          if(formKey.currentState!.validate()){
                            context.push('/signupConfirm');
                          }
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Or Sign Up With',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                CustomExternalSignupLogin(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already Have An Account?',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    TextButton(
                      onPressed: () {
                        context.go('/login');
                      },
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
