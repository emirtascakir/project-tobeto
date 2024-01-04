import 'package:flutter/material.dart';
import 'package:project_tobeto/extensions/extension.dart';

class ReviewPageLessonWidget extends StatelessWidget {
  final String lessonName;
  const ReviewPageLessonWidget({super.key, required this.lessonName});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: context.deviceSize.width,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(22),
          bottomRight: Radius.circular(22),
          topLeft: Radius.circular(22),
          topRight: Radius.circular(22),
        ),
        gradient: LinearGradient(
          colors: [context.colorScheme.primary, Colors.purple.shade800],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            const Icon(Icons.computer, color: Colors.white),
            Text(
              lessonName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            const Spacer(),
            ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.white)),
                onPressed: () {},
                child: const Text(
                  "Başla",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                )),
          ],
        ),
      ),
    );
  }
}
