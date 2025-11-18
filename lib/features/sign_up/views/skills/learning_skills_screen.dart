import 'package:flutter/material.dart';

class LearningSkillsScreen extends StatelessWidget {
  const LearningSkillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('What Skills You Want To Learn ?', style: TextStyle(fontSize: 20)),
          SizedBox(height: 5,),
          Text(
            'Choose Skills You May/May Not Have Some Experience In',
            style: TextStyle(fontSize: 16, color: Color(0xFF696969)),
          ),
        ],
      ),
    );
  }
}
