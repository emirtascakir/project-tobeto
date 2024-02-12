import 'package:project_tobeto/models/education_model.dart';

abstract class EducationState {}

class EducationInitial extends EducationState {}

class EducationsFetched extends EducationState {
  List<EducationModel> education;
  EducationsFetched({required this.education});
}

class EducationFetchFailed extends EducationState {
  String errorMessage;
  EducationFetchFailed({required this.errorMessage});
}
