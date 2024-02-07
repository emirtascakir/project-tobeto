import 'package:flutter/material.dart';
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
                    Text(announcement.announcementDate.toString())
                  ],
                ),
                TextButton(onPressed: () {}, child: const Text("Devamını Oku"))
              ],
            )
          ],
        ));
  }
}
