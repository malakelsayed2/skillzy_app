import 'package:flutter/material.dart';

import '../constants/color_manager.dart';

class CustomSkillsContainer extends StatefulWidget {
  const CustomSkillsContainer({Key? key, required this.skill}) : super(key: key);

  final String skill ;

  @override
  State<CustomSkillsContainer> createState() => _CustomSkillsContainerState();
}

class _CustomSkillsContainerState extends State<CustomSkillsContainer> {
  bool isSkillSelected = false ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isSkillSelected = !isSkillSelected;
        setState(() {

        });
      },
      child: Container(
        padding: EdgeInsetsGeometry.all(8),
        decoration: BoxDecoration(
          color: isSkillSelected
              ? Color(ColorManager.mainColorGreen)
              : Color(0xFFF3F3F3),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Text(
          widget.skill,
          style: TextStyle(
            fontSize: 16,
            color: isSkillSelected
                ? Color(ColorManager.mainColorWhite)
                : Color(ColorManager.mainColorGreen),
          ),
        ),
      ),
    );
  }
}
