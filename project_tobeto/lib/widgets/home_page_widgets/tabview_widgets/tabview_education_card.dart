import 'package:flutter/material.dart';
import 'package:project_tobeto/extensions/extension.dart';
import 'package:project_tobeto/models/education_model.dart';

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
            Text(education.educationName),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Eğitime Git",
              ),
            ),
          ],
        ));
  }
}
