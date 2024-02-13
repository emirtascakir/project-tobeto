import 'package:cloud_firestore/cloud_firestore.dart';

class LessonModel {
  String lessonName;
  String lessonVideoUrl;
  LessonModel({required this.lessonName, required this.lessonVideoUrl});

  factory LessonModel.fromSnapshot(
      QueryDocumentSnapshot<Map<String, dynamic>> snapshot) {
    Map<String, dynamic> data = snapshot.data();
    return LessonModel(
        lessonName: data['lessonName'], lessonVideoUrl: data['lessonVideoUrl']);
  }
}
