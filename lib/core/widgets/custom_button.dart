import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    required this.titleColor,
    required this.buttonColor,
    required this.onPressed,
  });

  final String title;

  final int titleColor;

  final int buttonColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 323,
      height: 48,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
          ),
          backgroundColor: WidgetStatePropertyAll(Color(buttonColor)),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(fontSize: 20, color: Color(titleColor)),
        ),
      ),
    );
  }
}
