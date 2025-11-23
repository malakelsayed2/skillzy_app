import 'package:flutter/material.dart';

class CustomExternalSignupLogin extends StatelessWidget {
  const CustomExternalSignupLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
