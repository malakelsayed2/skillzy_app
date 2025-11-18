import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  CustomTextfield({super.key, required this.prefixIcon, required this.hint , this.suffixIcon});
  final String prefixIcon ;
  final String hint ;
  IconData? suffixIcon ;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFF3F3F3),
        borderRadius: BorderRadius.circular(14),
      ),
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: Image.asset(prefixIcon),
            suffixIcon: Icon(suffixIcon),
            border: InputBorder.none,
            hintText: hint,
            hintStyle: TextStyle(color: Color(0xFFA9A9A9))
        ),
      ),
    );
  }
}
