
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

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();

    List<Widget> pages = [OwnSkillsScreens(), LearningSkillsScreen()];

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Step ${currentPage + 1}/2',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(ColorManager.mainColorGreen),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      context.go('/mainLayout');
                    },
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
                width: 400,
                lineHeight: 10,
                percent: currentPage == 0 ? 0.5 : 1,
                backgroundColor: Color(0xFFF2F2F2),
                progressColor: Color(ColorManager.mainColorGreen),
                barRadius: Radius.circular(14),
              ),
              SizedBox(height: 40),
              SizedBox(
                height: 500,
                child: PageView(
                  controller: controller,
                  onPageChanged: (value) {
                    currentPage = value;
                    setState(() {});
                  },
                  children: pages,
                ),
              ),
              Spacer(flex: 2),
              CustomButton(
                title: 'Done',
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
              Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}
