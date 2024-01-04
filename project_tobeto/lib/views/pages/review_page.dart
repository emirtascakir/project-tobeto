import 'package:flutter/material.dart';
import 'package:project_tobeto/extensions/extension.dart';
import 'package:project_tobeto/widgets/review_page_widgets/review_page_cards.dart';
import 'package:project_tobeto/widgets/review_page_widgets/review_page_header.dart';
import 'package:project_tobeto/widgets/review_page_widgets/review_page_lessons.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> lessons = [
      "Front End",
      "Full Stack",
      "Back End",
      "Microsoft SQL Server",
      "Masaüstü Programlama"
    ];

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const ReviewPageHeader(),
          ReviewPageCards(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: SizedBox(
              height: context.deviceSize.height * .1,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 15),
                  itemCount: lessons.length,
                  itemBuilder: (context, index) {
                    return ReviewPageLessons(lessonName: lessons[index]);
                  }),
            ),
          )
        ],
      ),
    );
  }
}
