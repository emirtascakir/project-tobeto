import 'package:flutter/material.dart';
import 'package:project_tobeto/widgets/home_page_widgets/home_page_footer.dart';
import 'package:project_tobeto/widgets/profile_page_widgets/profile_page_about_me.dart';
import 'package:project_tobeto/widgets/profile_page_widgets/profile_page_badges.dart';
import 'package:project_tobeto/widgets/profile_page_widgets/profile_page_certificate.dart';
import 'package:project_tobeto/widgets/profile_page_widgets/profile_page_competencies.dart';
import 'package:project_tobeto/widgets/profile_page_widgets/profile_page_experiences.dart';
import 'package:project_tobeto/widgets/profile_page_widgets/profile_page_foreign_lang.dart';
import 'package:project_tobeto/widgets/profile_page_widgets/profile_page_media_acc.dart';
import 'package:project_tobeto/widgets/profile_page_widgets/profile_page_personal_info.dart';
import 'package:project_tobeto/widgets/profile_page_widgets/profile_page_success_evaluation.dart';
import 'package:project_tobeto/widgets/profile_page_widgets/profile_page_tests.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: ClampingScrollPhysics(),
      child: Column(
        children: <Widget>[
          ProfilePagePersonalInfo(),
          SizedBox(height: 15),
          ProfilePageAboutMe(),
          SizedBox(height: 15),
          ProfilePageCompetencies(),
          SizedBox(height: 15),
          ProfilePageForeignLang(),
          SizedBox(height: 15),
          ProfilePageCertificate(),
          SizedBox(height: 15),
          ProfilePageMediaAcc(),
          SizedBox(height: 15),
          ProfilePageSuccessEvaluation(),
          SizedBox(height: 15),
          ProfilePageTests(),
          SizedBox(height: 15),
          ProfilePageBadges(),
          SizedBox(height: 15),
          ProfilePageExperiences(),
          SizedBox(height: 15),
          HomePageFooter(),
        ],
      ),
    );
  }
}
