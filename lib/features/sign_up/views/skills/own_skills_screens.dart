import 'package:flutter/material.dart';

class OwnSkillsScreens extends StatelessWidget {
  const OwnSkillsScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('What Skills You Have ?', style: TextStyle(fontSize: 20)),
          SizedBox(height: 5,),
          Text(
            'Choose Skills You Already Have Some Experience In',
            style: TextStyle(fontSize: 16, color: Color(0xFF696969)),
          ),
        ],
      ),
    );
  }
}
