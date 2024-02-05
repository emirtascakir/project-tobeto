import 'package:cloud_firestore/cloud_firestore.dart';

class ExamModel {
  String examName;
  String examClass;
  int examDuration;
  DateTime examDeadline;

  ExamModel({
    required this.examName,
    required this.examClass,
    required this.examDuration,
    required this.examDeadline,
  });

  factory ExamModel.fromSnapshot(
      QueryDocumentSnapshot<Map<String, dynamic>> snapshot) {
    Map<String, dynamic> data = snapshot.data();
    return ExamModel(
      examName: data['examName'] ?? '',
      examClass: data['examClass'] ?? '',
      examDuration: data['examDuration'] ?? 0,
      examDeadline: (data['examDeadline'] as Timestamp).toDate(),
    );
  }
}
