import 'package:cloud_firestore/cloud_firestore.dart';

class AnnouncementModel {
  String announcementTitle;
  String announcementDescription;
  DateTime announcementDate;

  AnnouncementModel({
    required this.announcementTitle,
    required this.announcementDescription,
    required this.announcementDate,
  });

  factory AnnouncementModel.fromSnapshot(
      QueryDocumentSnapshot<Map<String, dynamic>> snapshot) {
    Map<String, dynamic> data = snapshot.data();
    return AnnouncementModel(
      announcementTitle: data['announcementTitle'] ?? '',
      announcementDescription: data['announcementDescription'] ?? '',
      announcementDate: (data['announcementDate'] as Timestamp).toDate(),
    );
  }
}
