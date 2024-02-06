import 'package:project_tobeto/models/announcement_model.dart';

abstract class AnnouncementState {}

class Initial extends AnnouncementState {}

class AnnouncementsFetched extends AnnouncementState {
  List<AnnouncementModel> announcement;
  AnnouncementsFetched({required this.announcement});
}

class AnnouncementFetchFailed extends AnnouncementState {
  String errorMessage;
  AnnouncementFetchFailed({required this.errorMessage});
}
