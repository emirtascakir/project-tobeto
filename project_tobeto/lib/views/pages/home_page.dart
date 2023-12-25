import 'package:flutter/material.dart';
import 'package:project_tobeto/widgets/home_page_widgets/home_page_body.dart';
import 'package:project_tobeto/widgets/home_page_widgets/home_page_header.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: <Widget>[
          HomePageHeader(),
          HomePageTabView(),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
