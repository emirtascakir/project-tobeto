import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_tobeto/blocs/lesson/lesson_event.dart';
import 'package:project_tobeto/blocs/lesson/lesson_state.dart';
import 'package:project_tobeto/models/lesson_model.dart';

class LessonBloc extends Bloc<LessonEvent, LessonState> {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  LessonBloc() : super(LessonInitial()) {
    on<FetchLessons>(_onFetchLessons);
  }

  Future<void> _onFetchLessons(
      FetchLessons event, Emitter<LessonState> emit) async {
    try {
      List<LessonModel> lessons = [];
      QuerySnapshot<Map<String, dynamic>> querySnapshot =
          await _firebaseFirestore.collection(event.lessonId).get();

      for (QueryDocumentSnapshot<Map<String, dynamic>> snapshot
          in querySnapshot.docs) {
        lessons.add(LessonModel.fromSnapshot(snapshot));
      }
      emit(LessonsFetched(lessons: lessons));
    } catch (e) {
      emit(LessonsFetchFailed(errorMessage: e.toString()));
    }
  }
}
