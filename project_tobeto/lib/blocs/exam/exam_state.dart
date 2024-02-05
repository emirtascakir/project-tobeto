import 'package:project_tobeto/models/exam_model.dart';

abstract class ExamState {}

class Initial extends ExamState {}

class ExamsFetched extends ExamState {
  List<ExamModel> exam;
  ExamsFetched({required this.exam});
}

class ExamFetchFailed extends ExamState {
  String errorMessage;
  ExamFetchFailed({required this.errorMessage});
}
