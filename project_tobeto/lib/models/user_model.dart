import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String email;
  String username;
  String? name;
  String? surname;
  String? phoneNumber;
  DateTime? dateOfBirth;
  String? tcIdNo;
  String? aboutMe;
  String? photoUrl;

  UserModel({
    required this.email,
    required this.username,
    this.name,
    this.surname,
    this.phoneNumber,
    this.dateOfBirth,
    this.tcIdNo,
    this.aboutMe,
    this.photoUrl,
  });

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      email: map['email'] ?? '',
      username: map['username'] ?? '',
      name: map['name'],
      surname: map['surname'],
      phoneNumber: map['phoneNumber'],
      dateOfBirth: (map['dateOfBirth'] as Timestamp?)?.toDate(),
      tcIdNo: map['tcIdNo'],
      aboutMe: map['aboutMe'],
      photoUrl: map['photoUrl'],
    );
  }
}
