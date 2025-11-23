import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skillzy_app/app/skillzy_app.dart';
import 'package:skillzy_app/core/view_model/app_brain.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp() ;

  runApp(
    ChangeNotifierProvider(
      create: (context) => AppBrain(),
      child: SkillzyApp(),
    ),
  );
}
