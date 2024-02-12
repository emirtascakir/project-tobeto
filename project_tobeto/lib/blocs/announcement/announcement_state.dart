import 'package:project_tobeto/models/announcement_model.dart';

abstract class AnnouncementState {}

class AnnouncementInitial extends AnnouncementState {}

class AnnouncementsFetched extends AnnouncementState {
  List<AnnouncementModel> announcements;
  AnnouncementsFetched({required this.announcements});
}

class AnnouncementFetchFailed extends AnnouncementState {
  String errorMessage;
  AnnouncementFetchFailed({required this.errorMessage});
}
