class UserModel{
  final String id;
  final String name;
  final String email;
  final String phoneNumber ;
  final String profilePhoto;
  final String coverPhoto;
  final String city;
  final String country;

  final List<String> skills;
  final int switchingSkillsCount;
  final double rating;

  final int completedCoursesCount;
  final double totalLearningHours;
  final List<String> publishedCourses;
  final List<String> addedCourses;

  final List<String> connections;
  final int connectionsCount;

  final List<String> availabilityTime;

  UserModel( {
    required this.id,
    required this.name,
    required this.email,
    required this.phoneNumber,
     this.profilePhoto ='',
     this.coverPhoto='',
    this.city ='',
    this.country='',
    this.skills = const [],
    this.switchingSkillsCount = 0,
    this.rating = 0.0,
    this.completedCoursesCount = 0,
    this.totalLearningHours = 0.0,
    this.publishedCourses = const [],
    this.addedCourses = const [],
    this.connections = const [],    //list of friends
    this.connectionsCount = 0,     //friends count
    this.availabilityTime = const [],   // list of months
  });

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'],
      name: map['name'],
      email: map['email'],
      phoneNumber: map['phoneNumber'],
      profilePhoto: map['profilePhoto']??'',
      coverPhoto: map['coverPhoto']??'',
      city: map['city']??'',
      country: map['country']??'',
      skills: List<String>.from(map['skills'] ?? []),
      switchingSkillsCount: map['switchingSkillsCount'] ?? 0,
      rating: (map['rating'] ?? 0).toDouble(),
      completedCoursesCount: map['completedCoursesCount'] ?? 0,
      totalLearningHours: (map['totalLearningHours'] ?? 0).toDouble(),
      publishedCourses: List<String>.from(map['publishedCourses'] ?? []),
      addedCourses: List<String>.from(map['addedCourses'] ?? []),
      connections: List<String>.from(map['connections'] ?? []),
      connectionsCount: map['connectionsCount'] ?? 0,
      availabilityTime: List<String>.from(map['availabilityTime'] ?? []),
    );
  }
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'phoneNumner': phoneNumber,
      'profilePhoto': profilePhoto,
      'coverPhoto': coverPhoto,
      'city': city,
      'country': country,
      'skills': skills,
      'switchingSkillsCount': switchingSkillsCount,
      'rating': rating,
      'completedCoursesCount': completedCoursesCount,
      'totalLearningHours': totalLearningHours,
      'publishedCourses': publishedCourses,
      'addedCourses': addedCourses,
      'connections': connections,
      'connectionsCount': connectionsCount,
      'availabilityTime': availabilityTime,
    };
  }


}