class SkillModel {
  final String id;

  final String title;

  final String image;

  final bool isTopSkill;

  const SkillModel({
    required this.id,
    required this.title,
    required this.image,
    required this.isTopSkill,
  });

  factory SkillModel.fromMap(Map<String, dynamic> skill) {
    return SkillModel(
      id: skill['id'],
      title: skill['title'],
      image: skill['image'],
      isTopSkill: skill['isTopSkill'],
    );
  }
}
