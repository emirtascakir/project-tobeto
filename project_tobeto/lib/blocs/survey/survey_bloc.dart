import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_tobeto/blocs/survey/survey_event.dart';
import 'package:project_tobeto/blocs/survey/survey_state.dart';
import 'package:project_tobeto/constants/collections.dart';
import 'package:project_tobeto/models/survey_model.dart';

class SurveyBloc extends Bloc<SurveyEvent, SurveyState> {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  SurveyBloc() : super(Initial()) {
    on<FetchSurveys>(_onFetchSurveys);
  }

  Future<void> _onFetchSurveys(
      FetchSurveys event, Emitter<SurveyState> emit) async {
    try {
      List<SurveyModel> surveys = [];
      QuerySnapshot<Map<String, dynamic>> querySnapshot =
          await _firebaseFirestore.collection(Collections.surveys).get();

      for (QueryDocumentSnapshot<Map<String, dynamic>> snapshot
          in querySnapshot.docs) {
        surveys.add(SurveyModel.fromSnapshot(snapshot));
      }
    } catch (e) {
      emit(SurveysFetchFailed(errorMessage: e.toString()));
    }
  }
}
