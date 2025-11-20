import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/view_model/app_brain.dart';
import '../../../../core/widgets/custom_skills_container.dart';
import '../../../../core/widgets/custom_textfield.dart';

class LearningSkillsScreen extends StatelessWidget {
  const LearningSkillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final skillsList = Provider.of<AppBrain>(context).skillsList;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'What Skills You Want To Learn ?',
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 5),
        Text(
          'Choose Skills You May Not Have Some Experience In',
          style: TextStyle(fontSize: 16, color: Color(0xFF696969)),
        ),
        SizedBox(height: 30),
        CustomTextfield(
          prefixIcon: 'assets/icons/person.png',
          hint: 'search',
        ),
        SizedBox(height: 45),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: skillsList.map((skill) {
            return CustomSkillsContainer(skill: skill.title);
          }).toList(),
        ),
      ],
    );
  }
}
