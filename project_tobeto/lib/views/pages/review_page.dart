import 'package:flutter/material.dart';
import 'package:project_tobeto/widgets/home_page_widgets/home_page_footer.dart';
import 'package:project_tobeto/widgets/review_page_widgets/review_page_cards.dart';
import 'package:project_tobeto/widgets/review_page_widgets/review_page_cards2.dart';
import 'package:project_tobeto/widgets/review_page_widgets/review_page_header.dart';
import 'package:project_tobeto/widgets/review_page_widgets/review_page_lessons.dart';
import 'package:project_tobeto/widgets/review_page_widgets/review_page_text.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ReviewPageHeader(),
          ReviewPageCards(),
          ReviewPageLessons(),
          ReviewPageText(),
          ReviewPageCards2(),
          SizedBox(height: 15),
          HomePageFooter(),
        ],
      ),
    );
  }
}
