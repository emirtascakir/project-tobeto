import 'package:cloud_firestore/cloud_firestore.dart';

class EducationModel {
  String educationName;
  String educationImage;
  EducationModel({
    required this.educationName,
    required this.educationImage,
  });

  factory EducationModel.fromSnapshot(
      QueryDocumentSnapshot<Map<String, dynamic>> snapshot) {
    Map<String, dynamic> data = snapshot.data();
    return EducationModel(
        educationName: data['educationName'] ?? '',
        educationImage: data['educationImage'] ?? '');
  }
}
