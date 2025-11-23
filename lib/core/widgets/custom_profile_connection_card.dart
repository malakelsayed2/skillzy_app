import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/color_manager.dart';

class CustomProfileConnectionCard extends StatelessWidget {
  const CustomProfileConnectionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Color(0xFFF8F8F8),
        borderRadius: BorderRadiusGeometry.circular(20),
        border: Border.all(color: Color(0xFFE1E1E1), width: 2),
      ),
      width: 170,
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 85,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: -25,
                child: CircleAvatar(backgroundColor: Colors.grey, radius: 45),
              ),
            ],
          ),
          SizedBox(height: 30),
          Text(
            'Malak Elsayed',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
          SizedBox(height: 5),
          Text(
            'Alexandria, Egypt',
            style: TextStyle(fontSize: 11, color: Colors.grey),
          ),
          Text(
            'HTML|Drawing|UI-UX',
            style: TextStyle(fontSize: 11, color: Colors.grey),
          ),
          SizedBox(height: 10),
          SizedBox(
            width: 150,
            height: 30,
            child: ElevatedButton(
              style: ButtonStyle(
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                backgroundColor: WidgetStatePropertyAll(
                  Color(ColorManager.mainColorGreen),
                ),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/addFriendIcon.png',
                    color: Color(ColorManager.mainColorWhite),
                    height:20
                  ),

                  SizedBox(width: 5),
                  Text(
                    "Request",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(ColorManager.mainColorWhite),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
