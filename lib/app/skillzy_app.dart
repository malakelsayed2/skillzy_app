import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:skillzy_app/features/login/views/forgot_pass_screen.dart';
import 'package:skillzy_app/features/login/views/login_screen.dart';
import 'package:skillzy_app/features/sign_up/views/sign_up_screen.dart';
import 'package:skillzy_app/features/splash/view/splash_screen.dart';

import '../core/constants/string_manager.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => SplashScreen()),
    GoRoute(path: '/signup', builder: (context, state) => SignUpScreen()),
    GoRoute(path: '/login', builder: (context, state) => LoginScreen()),
    GoRoute(path: '/forgotPass', builder: (context, state) => ForgotPassScreen()),
  ],
);

class SkillzyApp extends StatelessWidget {
  const SkillzyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      theme: ThemeData(fontFamily: StringManager.appFont),
    );
  }
}
