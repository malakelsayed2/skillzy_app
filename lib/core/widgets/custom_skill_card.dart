import 'package:flutter/material.dart';

class CustomSkillCard extends StatelessWidget {
  const CustomSkillCard({
    super.key,
    required this.skillTitle,
    required this.image,
  });
  final String skillTitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: 170,
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              image,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          // Centered text
          Center(
            child: Text(
              skillTitle,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );

  }
}
