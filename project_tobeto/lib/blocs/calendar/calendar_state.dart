import 'package:calendar_view/calendar_view.dart';

abstract class CalendarState {}

class Initial extends CalendarState {}

class CalendarsFetched extends CalendarState {
  List<CalendarEventData> calendars;
  CalendarsFetched({required this.calendars});
}

class CalendarFetchFailed extends CalendarState {
  String errorMessage;
  CalendarFetchFailed({required this.errorMessage});
}
