import 'package:flutter/material.dart';
import 'package:skillzy_app/features/splash/view/splash_screen.dart';

class SkillzyApp extends StatelessWidget {
  const SkillzyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashScreen() ,);
  }
}
