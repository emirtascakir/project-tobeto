import 'package:calendar_view/calendar_view.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_tobeto/blocs/calendar/calendar_event.dart';
import 'package:project_tobeto/blocs/calendar/calendar_state.dart';
import 'package:project_tobeto/constants/collections.dart';

class CalendarBloc extends Bloc<CalendarEvent, CalendarState> {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  CalendarBloc() : super(Initial()) {
    on<FetchCalendars>(_onFetchCalendars);
  }

  Future<void> _onFetchCalendars(
      FetchCalendars event, Emitter<CalendarState> emit) async {
    try {
      List<CalendarEventData> calendars = [];
      QuerySnapshot<Map<String, dynamic>> querySnapshot =
          await _firebaseFirestore.collection(Collections.calendars).get();

      for (QueryDocumentSnapshot<Map<String, dynamic>> snapshot
          in querySnapshot.docs) {
        calendars.add(
          CalendarEventData(
            title: snapshot.data()['eventTitle'],
            description: snapshot.data()['eventDescription'],
            date: (snapshot.data()['startDate'] as Timestamp).toDate(),
            startTime: (snapshot.data()['startDate'] as Timestamp).toDate(),
            endTime: (snapshot.data()['endDate'] as Timestamp).toDate(),
          ),
        );
      }
      emit(CalendarsFetched(calendars: calendars));
    } catch (e) {
      emit(CalendarFetchFailed(errorMessage: e.toString()));
    }
  }
}

/*factory CalendarEventData.fromSnapshot(
      QueryDocumentSnapshot<Map<String, dynamic>> snapshot) {
    Map<String, dynamic> data = snapshot.data();
    return CalendarEventData(
      title: data['eventTitle'],
      description: data['eventDescription'],
      date: DateTime.now(),
      startTime: (data['startDate'] as Timestamp).toDate(),
      endTime: (data['endDate'] as Timestamp).toDate(),
    );
  }*/