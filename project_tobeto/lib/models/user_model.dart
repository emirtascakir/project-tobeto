import 'package:image_picker/image_picker.dart';

class UserModel {
  String email;
  String username;
  String password;
  String? name;
  String? surname;
  String? phoneNumber;
  DateTime? birthOfDate;
  String? tcIdNo;
  String? aboutMe;
  XFile? photo;

  UserModel({
    required this.email,
    required this.username,
    required this.password,
    this.name,
    this.surname,
    this.phoneNumber,
    this.birthOfDate,
    this.tcIdNo,
    this.aboutMe,
    this.photo,
  });
}
