import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:skillzy_app/model/skill_model.dart';

class FirebaseServices {
  Future<List<SkillModel>>fetchSkills() async {
    final firestore = FirebaseFirestore.instance;

    final querySnapshot = await firestore.collection('skills').get();

    final skillsList = querySnapshot.docs.map((skill) {
      return SkillModel(
        id: skill['id'],
        title: skill['title'],
        image: skill['image'],
        isTopSkill: skill['isTopSkill'],
      );
    }).toList();

    return skillsList;
  }
}
