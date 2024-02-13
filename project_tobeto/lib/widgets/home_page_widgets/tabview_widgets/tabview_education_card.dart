import 'package:flutter/material.dart';
import 'package:project_tobeto/extensions/extension.dart';
import 'package:project_tobeto/models/education_model.dart';
import 'package:project_tobeto/views/lesson_view.dart';

class TabViewEducationCard extends StatelessWidget {
  const TabViewEducationCard({
    required this.education,
    super.key,
  });
  final EducationModel education;

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
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: AspectRatio(
                aspectRatio: 20 / 9,
                child: Image.network(
                  education.educationImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              education.educationName,
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => LessonView(education: education),
                ));
              },
              child: const Text(
                "Eğitime Git",
              ),
            ),
          ],
        ));
  }
}
