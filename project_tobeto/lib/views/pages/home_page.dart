import 'package:flutter/material.dart';
import 'package:project_tobeto/models/user_model.dart';
import 'package:project_tobeto/widgets/home_page_widgets/home_page_body.dart';
import 'package:project_tobeto/widgets/home_page_widgets/home_page_boxes.dart';
import 'package:project_tobeto/widgets/home_page_widgets/home_page_exam.dart';
import 'package:project_tobeto/widgets/home_page_widgets/home_page_footer.dart';
import 'package:project_tobeto/widgets/home_page_widgets/home_page_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.user});
  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: Column(
        children: <Widget>[
          HomePageHeader(user: user),
          const HomePageBody(),
          const SizedBox(height: 10),
          const HomePageExam(),
          const HomePageBoxes(),
          const HomePageFooter()
        ],
      ),
    );
  }
}
