import 'package:flutter/material.dart';
import 'package:project_tobeto/widgets/home_page_widgets/home_page_body.dart';
import 'package:project_tobeto/widgets/home_page_widgets/home_page_boxes.dart';
import 'package:project_tobeto/widgets/home_page_widgets/home_page_exam.dart';
import 'package:project_tobeto/widgets/home_page_widgets/home_page_footer.dart';
import 'package:project_tobeto/widgets/home_page_widgets/home_page_header.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: ClampingScrollPhysics(),
      child: Column(
        children: <Widget>[
          HomePageHeader(),
          HomePageBody(),
          SizedBox(height: 10),
          HomePageExam(examName: 'Sınav', time: 45),
          HomePageBoxes(),
          HomePageFooter()
        ],
      ),
    );
  }
}
