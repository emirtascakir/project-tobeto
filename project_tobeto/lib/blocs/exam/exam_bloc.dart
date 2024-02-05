import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_tobeto/blocs/exam/exam_event.dart';
import 'package:project_tobeto/blocs/exam/exam_state.dart';
import 'package:project_tobeto/constants/collections.dart';
import 'package:project_tobeto/models/exam_model.dart';

class ExamBloc extends Bloc<ExamEvent, ExamState> {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  ExamBloc() : super(Initial()) {
    on<FetchExams>(_onFetchExams);
  }

  Future<void> _onFetchExams(FetchExams event, Emitter<ExamState> emit) async {
    try {
      List<ExamModel> exams = [];
      QuerySnapshot<Map<String, dynamic>> querySnapshot =
          await _firebaseFirestore.collection(Collections.exams).get();

      for (QueryDocumentSnapshot<Map<String, dynamic>> snapshot
          in querySnapshot.docs) {
        exams.add(ExamModel.fromSnapshot(snapshot));
      }
      emit(ExamsFetched(exam: exams));
    } catch (e) {
      emit(ExamFetchFailed(errorMessage: e.toString()));
    }
  }
}
