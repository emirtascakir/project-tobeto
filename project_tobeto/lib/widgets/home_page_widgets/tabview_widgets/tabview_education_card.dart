import 'package:flutter/material.dart';
import 'package:project_tobeto/extensions/extension.dart';

class TabViewEducationCard extends StatelessWidget {
  const TabViewEducationCard(
      {super.key,
      required this.educationPhotoPath,
      required this.courseName,
      required this.date});
  final String educationPhotoPath;
  final String courseName;
  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image.asset(
              educationPhotoPath,
              width: double.infinity,
            ),
            Text(courseName),
            Text(date.toString()),
            ElevatedButton(
                onPressed: () {},
                child: Container(
                  color: context.colorScheme.onBackground,
                  child: const Text(
                    "Eğitime Git",
                  ),
                ))
          ],
        ));
  }
}
