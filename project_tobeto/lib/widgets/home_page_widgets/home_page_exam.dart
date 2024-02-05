import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_tobeto/blocs/exam/exam_bloc.dart';
import 'package:project_tobeto/blocs/exam/exam_event.dart';
import 'package:project_tobeto/blocs/exam/exam_state.dart';
import 'package:project_tobeto/extensions/extension.dart';
import 'package:project_tobeto/models/exam_model.dart';

class HomePageExam extends StatelessWidget {
  const HomePageExam({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExamBloc, ExamState>(
      builder: (context, state) {
        if (state is Initial) {
          context.read<ExamBloc>().add(FetchExams());
        } else if (state is ExamsFetched) {
          return Container(
            padding: const EdgeInsets.all(10),
            width: double.infinity,
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
                color: context.colorScheme.onBackground),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  "Sınavlarım",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Container(
                  height: context.deviceSize.height * .3,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: state.exam.length,
                      itemBuilder: (context, index) {
                        return ExamCard(exam: state.exam[index]);
                      }),
                ),
              ],
            ),
          );
        } else if (state is ExamFetchFailed) {
          return Container(
            padding: const EdgeInsets.all(10),
            width: double.infinity,
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
                color: context.colorScheme.onBackground),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Sınavlarım",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text("Mevcut sınavınız bulunmuyor.")
              ],
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}

class ExamCard extends StatelessWidget {
  const ExamCard({super.key, required this.exam});

  final ExamModel exam;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      width: context.deviceSize.width * .5,
      height: 20,
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
          color: context.colorScheme.onBackground),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            exam.examName,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
          Text(
            exam.examClass,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w200),
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.timer_outlined,
                color: context.colorScheme.primary,
              ),
              Text(
                "${exam.examDuration.toString()} Dakika",
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              )
            ],
          )
        ],
      ),
    );
  }
}
