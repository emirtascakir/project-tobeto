import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_tobeto/blocs/announcement/announcement_event.dart';
import 'package:project_tobeto/blocs/announcement/announcement_state.dart';
import 'package:project_tobeto/constants/collections.dart';
import 'package:project_tobeto/models/announcement_model.dart';

class AnnouncementBloc extends Bloc<AnnouncementEvent, AnnouncementState> {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  AnnouncementBloc() : super(AnnouncementInitial()) {
    on<FetchAnnouncements>(_onFetchAnnouncements);
  }

  Future<void> _onFetchAnnouncements(
      FetchAnnouncements event, Emitter<AnnouncementState> emit) async {
    try {
      List<AnnouncementModel> announcements = [];
      QuerySnapshot<Map<String, dynamic>> querySnapshot =
          await _firebaseFirestore.collection(Collections.announcements).get();

      for (QueryDocumentSnapshot<Map<String, dynamic>> snapshot
          in querySnapshot.docs) {
        announcements.add(AnnouncementModel.fromSnapshot(snapshot));
      }
      emit(AnnouncementsFetched(announcements: announcements));
    } catch (e) {
      emit(AnnouncementFetchFailed(errorMessage: e.toString()));
    }
  }
}
