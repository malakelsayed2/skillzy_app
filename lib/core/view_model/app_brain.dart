import 'package:flutter/cupertino.dart';
import 'package:skillzy_app/core/services/firebase_services.dart';
import 'package:skillzy_app/model/skill_model.dart';

class AppBrain extends ChangeNotifier {

  List<SkillModel> skillsList = [] ;
  List<SkillModel> topSkillsList = [] ;

  Future<void> initializeApp()async{
    await getSkillsList();
  }
  Future<void> getSkillsList()async{
    final firebaseServices =FirebaseServices() ;
    skillsList = await firebaseServices.fetchSkills() ;
    notifyListeners();
  }

  void getTopSkills(){
    topSkillsList = skillsList.where((skill) {
      return skill.isTopSkill == true ;
    },).toList();
    notifyListeners();
  }
}