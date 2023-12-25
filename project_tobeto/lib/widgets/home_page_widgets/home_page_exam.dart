import 'package:flutter/material.dart';
import 'package:project_tobeto/extensions/extension.dart';

class HomePageExam extends StatelessWidget {
  const HomePageExam({super.key, required this.examName, required this.time});
  final String examName;
  final int time;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
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
          color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Sınavlarım",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Container(
            height: context.deviceSize.height * .3,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return ExamCard(examName: examName, time: time);
                }),
          ),
        ],
      ),
    );
  }
}

class ExamCard extends StatelessWidget {
  const ExamCard({
    super.key,
    required this.examName,
    required this.time,
  });

  final String examName;
  final int time;

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
          color: Colors.white),
      child: Column(
        children: <Widget>[
          Text(
            examName,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.timer_outlined,
                color: context.colorScheme.primary,
              ),
              Text(
                "${time.toString()} Dakika",
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
