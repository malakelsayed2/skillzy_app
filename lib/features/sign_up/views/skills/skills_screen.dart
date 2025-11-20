import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:skillzy_app/core/constants/color_manager.dart';
import 'package:skillzy_app/core/widgets/custom_button.dart';
import 'package:skillzy_app/features/sign_up/views/skills/learning_skills_screen.dart';
import 'package:skillzy_app/features/sign_up/views/skills/own_skills_screens.dart';

class SkillsScreen extends StatefulWidget {
  const SkillsScreen({super.key});

  @override
  State<SkillsScreen> createState() => _SkillsScreenState();
}

class _SkillsScreenState extends State<SkillsScreen> {
  int currentPage = 0;
  late PageController controller;

  final List<Widget> pages = [OwnSkillsScreens(), LearningSkillsScreen()];

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose() ;
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Step ${currentPage + 1}/${pages.length}',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(ColorManager.mainColorGreen),
                    ),
                  ),
                  TextButton(
                    onPressed: () => context.go('/mainLayout'),
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(ColorManager.mainColorGreen),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              LinearPercentIndicator(
                width: screenWidth - 40, // full width minus padding
                lineHeight: 10,
                percent: (currentPage + 1) / pages.length,
                backgroundColor: Color(0xFFF2F2F2),
                progressColor: Color(ColorManager.mainColorGreen),
                barRadius: Radius.circular(14),
              ),
              SizedBox(height: 40),

              Expanded(
                child: PageView(
                  physics: NeverScrollableScrollPhysics(),
                  controller: controller,
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  children: pages,
                ),
              ),

              CustomButton(
                title: currentPage == pages.length - 1 ? 'Done' : 'Next',
                titleColor: ColorManager.mainColorWhite,
                buttonColor: ColorManager.mainColorGreen,
                onPressed: () {
                  if (currentPage != pages.length - 1) {
                    controller.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.ease,
                    );
                  } else {
                    context.go('/mainLayout');
                  }
                },
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
