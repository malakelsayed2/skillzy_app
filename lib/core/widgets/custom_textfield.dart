import 'package:flutter/material.dart';
import 'package:skillzy_app/core/constants/color_manager.dart';

class CustomTextfield extends StatelessWidget {
  CustomTextfield({
    super.key,
    required this.prefixIcon,
    required this.hint,
    this.suffixIcon,
    this.validator,
    this.controller,
    this.obsecureText = false
  });

  final String prefixIcon;

  final String hint;

  Widget? suffixIcon;

  String? Function(String?)? validator;

  TextEditingController? controller;
  bool obsecureText ;

  @override
  Widget build(BuildContext context) {

    return TextFormField(
      controller: controller,
      validator: validator,
      obscureText:obsecureText ,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xFFF3F3F3),
        prefixIcon: Image.asset(prefixIcon),
        suffixIcon: suffixIcon,
        // border: InputBorder.none,
        hintText: hint,
        hintStyle: TextStyle(color: Color(0xFFA9A9A9)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: Color(ColorManager.mainColorGreen), width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: Colors.red, width: 2),

        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: Colors.red, width: 2),
        ),
      ),
    );
  }
}
