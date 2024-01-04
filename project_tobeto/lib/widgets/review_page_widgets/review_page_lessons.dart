import 'package:flutter/material.dart';
import 'package:project_tobeto/extensions/extension.dart';
import 'package:project_tobeto/widgets/review_page_widgets/review_page_lesson_widget.dart';

class ReviewPageLessons extends StatelessWidget {
  const ReviewPageLessons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> lessons = [
      "Front End",
      "Full Stack",
      "Back End",
      "Microsoft SQL Server",
      "Masaüstü Programlama"
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: SizedBox(
        height: context.deviceSize.height * .1,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => const SizedBox(width: 15),
            itemCount: lessons.length,
            itemBuilder: (context, index) {
              return ReviewPageLessonWidget(lessonName: lessons[index]);
            }),
      ),
    );
  }
}
