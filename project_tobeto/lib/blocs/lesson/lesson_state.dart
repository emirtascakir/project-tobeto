import 'package:project_tobeto/models/lesson_model.dart';

abstract class LessonState {}

class LessonInitial extends LessonState {}

class LessonsFetched extends LessonState {
  List<LessonModel> lessons;
  LessonsFetched({required this.lessons});
}

class LessonsFetchFailed extends LessonState {
  String errorMessage;
  LessonsFetchFailed({required this.errorMessage});
}
