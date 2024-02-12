import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project_tobeto/extensions/extension.dart';
import 'package:project_tobeto/models/announcement_model.dart';

class TabViewAnnouncementCard extends StatelessWidget {
  const TabViewAnnouncementCard({super.key, required this.announcement});

  final AnnouncementModel announcement;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: context.colorScheme.background,
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
            color: Colors.white),
        width: context.deviceSize.width * .9,
        height: 50.0,
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Duyuru",
                  style: TextStyle(
                      color: context.colorScheme.onSurface, fontSize: 14),
                ),
                Text(
                  "İstanbul Kodluyor",
                  style: TextStyle(
                      color: context.colorScheme.onSurface, fontSize: 14),
                )
              ],
            ),
            Text(
              announcement.announcementTitle,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    const Icon(Icons.calendar_month_outlined),
                    Text(DateFormat().format(announcement.announcementDate))
                  ],
                ),
                TextButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return SingleChildScrollView(
                            child: Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      IconButton(
                                        onPressed: () => Navigator.pop(context),
                                        icon: const Icon(Icons.close, size: 30),
                                      )
                                    ],
                                  ),
                                  Text(
                                    announcement.announcementTitle,
                                    style: const TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    DateFormat()
                                        .format(announcement.announcementDate),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    announcement.announcementDescription,
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w300),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: const Text("Devamını Oku"))
              ],
            )
          ],
        ));
  }
}
