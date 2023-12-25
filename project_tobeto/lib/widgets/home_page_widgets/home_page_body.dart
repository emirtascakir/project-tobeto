import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_tobeto/widgets/home_page_widgets/tabview_widgets/tabview_announcement_card.dart';
import 'package:project_tobeto/widgets/home_page_widgets/tabview_widgets/tabview_application_card.dart';
import 'package:project_tobeto/widgets/home_page_widgets/tabview_widgets/tabview_education_card.dart';
import 'package:project_tobeto/widgets/home_page_widgets/tabview_widgets/tabview_survey_card.dart';
import 'package:project_tobeto/extensions/extension.dart';

class HomePageTabView extends StatelessWidget {
  const HomePageTabView({
    super.key,
  });

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
      padding: const EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      child: Column(
        children: <Widget>[
          SvgPicture.asset(
            "assets/images/ik-logo-dark.svg",
            width: context.deviceSize.width * .5,
          ),
          const SizedBox(height: 15),
          const Text(
            "Ücretsiz eğitimlerle, geleceğin mesleklerinde sen de yerini al.",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Aradığın ",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                '"',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: context.colorScheme.onPrimary),
              ),
              const Text(
                "İş",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                '"',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: context.colorScheme.onPrimary),
              ),
            ],
          ),
          const Text(
            "Burada!",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 15,
          ),
          DefaultTabController(
            length: 4,
            initialIndex: 0,
            child: Column(
              children: <Widget>[
                Container(
                  child: TabBar(
                    isScrollable: true,
                    tabAlignment: TabAlignment.start,
                    labelColor: context.colorScheme.primary,
                    unselectedLabelColor: context.colorScheme.secondary,
                    tabs: const [
                      Tab(
                        child: Text("Başvurularım"),
                      ),
                      Tab(
                        child: Text("Eğitimlerim"),
                      ),
                      Tab(
                        child: Text("Duyuru ve Haberlerim"),
                      ),
                      Tab(
                        child: Text("Anketlerim"),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: context.deviceSize.height * .3,
                  child: TabBarView(children: <Widget>[
                    //ListView.builder Prototip Modeller Yazıldığında Gerisi Geliştirilecektir
                    ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 12,
                        itemBuilder: (context, index) {
                          return const TabViewApplicationCard();
                        }),
                    ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 12,
                        itemBuilder: (context, index) {
                          return TabViewEducationCard(
                              educationPhotoPath:
                                  "assets/images/tobeto-logo.png",
                              courseName: "courseName",
                              date: DateTime.now());
                        }),
                    ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 12,
                        itemBuilder: (context, index) {
                          return TabViewAnnouncementCard(
                              announcementName: "announcementName",
                              date: DateTime.now());
                        }),
                    ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 12,
                        itemBuilder: (context, index) {
                          return const TabViewSurveyCard();
                        }),
                  ]),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
