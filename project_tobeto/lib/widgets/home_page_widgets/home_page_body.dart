import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_tobeto/blocs/announcement/announcement_bloc.dart';
import 'package:project_tobeto/blocs/announcement/announcement_event.dart';
import 'package:project_tobeto/blocs/announcement/announcement_state.dart';
import 'package:project_tobeto/blocs/education/education_bloc.dart';
import 'package:project_tobeto/blocs/education/education_event.dart';
import 'package:project_tobeto/blocs/education/education_state.dart';
import 'package:project_tobeto/blocs/survey/survey_bloc.dart';
import 'package:project_tobeto/blocs/survey/survey_event.dart';
import 'package:project_tobeto/blocs/survey/survey_state.dart';
import 'package:project_tobeto/widgets/home_page_widgets/tabview_widgets/tabview_announcement_card.dart';
import 'package:project_tobeto/widgets/home_page_widgets/tabview_widgets/tabview_application_card.dart';
import 'package:project_tobeto/widgets/home_page_widgets/tabview_widgets/tabview_education_card.dart';
import 'package:project_tobeto/widgets/home_page_widgets/tabview_widgets/tabview_survey_card.dart';
import 'package:project_tobeto/extensions/extension.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({
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
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              "Ücretsiz eğitimlerle, geleceğin mesleklerinde sen de yerini al.",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
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
                        itemCount: 1,
                        itemBuilder: (context, index) {
                          return const TabViewApplicationCard();
                        }),
                    BlocBuilder<EducationBloc, EducationState>(
                      builder: (context, state) {
                        if (state is EducationInitial) {
                          context.read<EducationBloc>().add(FetchEducations());
                        } else if (state is EducationsFetched) {
                          return ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: state.education.length,
                              itemBuilder: (context, index) {
                                return TabViewEducationCard(
                                  education: state.education[index],
                                );
                              });
                        }
                        return const Center(
                            child: Text(
                          "Mevcut Ders Bulunmuyor.",
                          style: TextStyle(fontSize: 20),
                        ));
                      },
                    ),

                    BlocBuilder<AnnouncementBloc, AnnouncementState>(
                      builder: (context, state) {
                        if (state is AnnouncementInitial) {
                          context
                              .read<AnnouncementBloc>()
                              .add(FetchAnnouncements());
                        } else if (state is AnnouncementsFetched) {
                          return ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: state.announcements.length,
                              itemBuilder: (context, index) {
                                return TabViewAnnouncementCard(
                                    announcement: state.announcements[index]);
                              });
                        } else if (state is AnnouncementFetchFailed) {
                          return const Text(
                              "Duyurularınız şu anda görüntülenemiyor. Lütfen daha sonra tekrar deneyiniz.");
                        }
                        return const Center(
                            child: Text(
                          "Mevcut Duyuru Bulunmuyor.",
                          style: TextStyle(fontSize: 20),
                        ));
                      },
                    ),

                    BlocBuilder<SurveyBloc, SurveyState>(
                      builder: (context, state) {
                        if (state is Initial) {
                          context.read<SurveyBloc>().add(FetchSurveys());
                        }
                        if (state is SurveysFetched) {
                          return ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: state.surveys.length,
                              itemBuilder: (context, index) {
                                return TabViewSurveyCard(
                                    survey: state.surveys[index]);
                              });
                        }
                        return ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 1,
                            itemBuilder: (context, index) {
                              return const TabViewSurveyCard();
                            });
                      },
                    )
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
