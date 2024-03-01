import 'package:cloud_firestore/cloud_firestore.dart';

class SurveyModel {
  String surveyTitle;
  SurveyModel({required this.surveyTitle});

  factory SurveyModel.fromSnapshot(
      QueryDocumentSnapshot<Map<String, dynamic>> snapshot) {
    Map<String, dynamic> data = snapshot.data();
    return SurveyModel(surveyTitle: data['surveyTitle']);
  }
}
