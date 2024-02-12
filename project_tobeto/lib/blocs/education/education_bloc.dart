import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_tobeto/blocs/education/education_event.dart';
import 'package:project_tobeto/blocs/education/education_state.dart';
import 'package:project_tobeto/constants/collections.dart';
import 'package:project_tobeto/models/education_model.dart';

class EducationBloc extends Bloc<EducationEvent, EducationState> {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  EducationBloc() : super(EducationInitial()) {
    on<FetchEducations>(_onFetchEducations);
  }

  Future<void> _onFetchEducations(
      FetchEducations event, Emitter<EducationState> emit) async {
    try {
      List<EducationModel> educations = [];
      QuerySnapshot<Map<String, dynamic>> querySnapshot =
          await _firebaseFirestore.collection(Collections.educations).get();

      for (QueryDocumentSnapshot<Map<String, dynamic>> snapshot
          in querySnapshot.docs) {
        educations.add(EducationModel.fromSnapshot(snapshot));
      }
      emit(EducationsFetched(education: educations));
    } catch (e) {
      emit(EducationFetchFailed(errorMessage: e.toString()));
    }
  }
}
