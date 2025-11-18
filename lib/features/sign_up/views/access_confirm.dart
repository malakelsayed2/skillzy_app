import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:skillzy_app/core/constants/color_manager.dart';
import 'package:skillzy_app/core/widgets/custom_button.dart';

import '../../../core/widgets/custom_access_item.dart';

class AccessConfirm extends StatelessWidget {
  const AccessConfirm({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(CupertinoIcons.back),
        ),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'If You Want A Perfect Benefit Of This App , You Should Allow Us Using :',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 90),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CustomAccessItem(
                  icon: 'assets/icons/locationIcon.png',
                  description: 'To Take Best Suggestion For Nearby People', title: 'Location',
                ),
                SizedBox(height: 40),
                // Item 2: Microphone Icon
                CustomAccessItem(
                  icon:'assets/icons/microphoneIcon.png',
                  description: 'To Connect With Your Switch Process Matchy', title: 'Microphone',
                ),
                SizedBox(height: 40),
                CustomAccessItem(
                  icon:'assets/icons/cameraIcon.png',
                  description: 'To Connect With Your Switch Process Matchy', title: 'Camera',
                ),
              ],
            ),
            SizedBox(height: 100),
            CustomButton(
              title: 'Allow',
              titleColor: ColorManager.mainColorWhite,
              buttonColor: ColorManager.mainColorGreen,
              onPressed: () {context.go('/skills');},
            ),
            SizedBox(height: 20),
            CustomButton(
              title: 'Not Now',
              titleColor: ColorManager.mainColorGreen,
              buttonColor: 0xFFF3F3F3,
              onPressed: () {context.go('/skills');},
            ),
          ],
        ),
      ),
    );
  }
}


