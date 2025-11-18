import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skillzy_app/core/widgets/custom_skills_container.dart';
import 'package:skillzy_app/core/widgets/custom_textfield.dart';

import '../../../../core/view_model/app_brain.dart';

class OwnSkillsScreens extends StatelessWidget {
  OwnSkillsScreens({super.key});

  @override
  Widget build(BuildContext context) {
    final skills = Provider.of<AppBrain>(context).skills;

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('What Skills You Have ?', style: TextStyle(fontSize: 20)),
          SizedBox(height: 5),
          Text(
            'Choose Skills You Already Have Some Experience In',
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
            children: skills.map((skill) {
              return CustomSkillsContainer(skill: skill);
            }).toList(),
          ),
        ],
      ),
    );
  }
}
