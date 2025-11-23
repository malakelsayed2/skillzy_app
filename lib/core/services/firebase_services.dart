import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:skillzy_app/model/skill_model.dart';
import 'package:skillzy_app/model/user_model.dart';

class FirebaseServices {
  Future<List<SkillModel>> fetchSkills() async {
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

  Future<void> signUp(String email, String password, String name, String phoneNumber)async {
    final FirebaseAuth auth = FirebaseAuth.instance;
    final FirebaseFirestore firestore = FirebaseFirestore.instance;
    try {
      await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      final uid = auth.currentUser!.uid;
      UserModel user = UserModel(
        id: uid,
        name: name,
        email: email,
        phoneNumber: phoneNumber,
      );
      await firestore.collection('users').doc(uid).set(user.toMap());

    } catch (e) {
      return;
    }
  }
}
