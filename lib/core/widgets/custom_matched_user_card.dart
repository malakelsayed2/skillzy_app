import 'package:flutter/material.dart';

import '../constants/color_manager.dart';

class CustomMatchedUserCard extends StatelessWidget {
  const CustomMatchedUserCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Color(0xFFF2F2F2),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// --- IMAGE ---
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              'https://play-lh.googleusercontent.com/14hE4uRsF6vYlD05juuXgaH9z4rl2Vjj7Dh65opQdUxPDDN4UNt6UBbJ5A5QNu3uyLxZ',
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Malak Elsayed',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(width: 8),
                    Image.asset(
                      'assets/icons/addFriendIcon.png',
                      height: 22,
                      width: 22,
                    )
                  ],
                ),


                /// LOCATION
                Row(
                  children: [
                    Icon(Icons.location_on, size: 16, color: Colors.grey[700]),
                    SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        'Alexandria, Egypt',
                        style: TextStyle(color: Colors.grey[700], fontSize: 14),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),


                /// AVAILABILITY
                Row(
                  children: [
                    Icon(Icons.access_time, size: 16, color: Colors.grey[700]),
                    SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        'Available in September',
                        style: TextStyle(color: Colors.grey[700], fontSize: 14),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),

                /// SKILLS
                Text(
                  'Skills: Programming - Ui Ux',
                  style: TextStyle(
                    color: Color(ColorManager.mainColorGreen),
                    fontSize: 14,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),

                /// RATING
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow, size: 18),
                    SizedBox(width: 4),
                    Text(
                      '4.5',
                      style: TextStyle(color: Color(0xFFACACAC)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}
