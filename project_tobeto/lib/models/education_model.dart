import 'package:cloud_firestore/cloud_firestore.dart';

class EducationModel {
  String educationId;
  String educationName;
  String educationImage;
  EducationModel({
    required this.educationId,
    required this.educationName,
    required this.educationImage,
  });

  factory EducationModel.fromSnapshot(
      QueryDocumentSnapshot<Map<String, dynamic>> snapshot) {
    Map<String, dynamic> data = snapshot.data();
    return EducationModel(
      educationId: data['educationId'],
      educationName: data['educationName'],
      educationImage: data['educationImage'],
    );
  }
}
