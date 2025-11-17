import 'package:flutter/material.dart';

import '../constants/color_manager.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    required this.titleColor,
    required this.buttonColor,
  });

  final String title;

  final int titleColor;

  final int buttonColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 323,
      height: 48,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
          ),
          backgroundColor: WidgetStatePropertyAll(Color(buttonColor)),
        ),
        onPressed: () {},
        child: Text(
          title,
          style: TextStyle(fontSize: 20, color: Color(titleColor)),
        ),
      ),
    );
  }
}
