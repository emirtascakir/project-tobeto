abstract class LessonEvent {}

class FetchLessons extends LessonEvent {
  String lessonId;
  FetchLessons({required this.lessonId});
}
