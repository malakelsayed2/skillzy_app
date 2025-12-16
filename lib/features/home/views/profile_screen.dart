import 'package:flutter/material.dart';
import 'package:skillzy_app/core/constants/color_manager.dart';

import '../../../core/widgets/custom_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.network(
                'https://i.pinimg.com/1200x/db/c3/fd/dbc3fde9b5ebc4a62677d8df6ba197d2.jpg',
              ),
              Positioned(
                bottom: -80,
                left: 10,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusGeometry.circular(60),
                    color: Colors.white,
                    border: Border.all(width: 2, color: Colors.white),
                  ),
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                      'https://i.pinimg.com/736x/48/df/7b/48df7b68d6561655d4ddbc8da90fc9d7.jpg',
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Malak Elsayed',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  '480 connections',
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),
                Text(
                  'Alexandria, Egypt',
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                Expanded(
                  child: CustomButton(
                    title: 'Edit Profile',
                    titleColor: ColorManager.mainColorWhite,
                    buttonColor: ColorManager.mainColorGreen,
                    onPressed: () {},
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: CustomButton(
                    title: 'Upload Course',
                    titleColor: ColorManager.mainColorGreen,
                    buttonColor: ColorManager.mainColorWhite,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text('My Statistics', style: TextStyle(fontSize: 20)),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Container(
                padding: EdgeInsetsGeometry.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadiusGeometry.circular(14),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(2, 2),
                      blurRadius: 3,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Text(
                      '0',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color(ColorManager.mainColorGreen),
                      ),
                    ),
                    Text(
                      'Switching\nSkills',
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10),
              Container(
                padding: EdgeInsetsGeometry.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadiusGeometry.circular(14),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(2, 2),
                      blurRadius: 3,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Text(
                      '0',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color(ColorManager.mainColorGreen),
                      ),
                    ),
                    Text(
                      'Switching\nSkills',
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text('My Skills', style: TextStyle(fontSize: 20)),
          ),
          SizedBox(height: 30),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text('My Connections', style: TextStyle(fontSize: 20)),
          ),
        ],
      ),
    );
  }
}
