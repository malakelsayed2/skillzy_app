import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skillzy_app/app/skillzy_app.dart';
import 'package:skillzy_app/core/view_model/app_brain.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => AppBrain(),
      child: SkillzyApp(),
    ),
  );
}
