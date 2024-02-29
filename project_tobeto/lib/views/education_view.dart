import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_tobeto/blocs/lesson/lesson_bloc.dart';
import 'package:project_tobeto/blocs/lesson/lesson_event.dart';
import 'package:project_tobeto/blocs/lesson/lesson_state.dart';
import 'package:project_tobeto/models/education_model.dart';
import 'package:project_tobeto/views/lesson_view.dart';

class EducationView extends StatefulWidget {
  const EducationView({super.key, required this.education});
  final EducationModel education;

  @override
  State<EducationView> createState() => _EducationViewState();
}

class _EducationViewState extends State<EducationView> {
  @override
  void initState() {
    super.initState();
    context
        .read<LessonBloc>()
        .add(FetchLessons(lessonId: widget.education.educationId));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LessonBloc, LessonState>(
      builder: (context, state) {
        if (state is LessonsFetched) {
          return Scaffold(
            appBar: AppBar(
              title: Text(widget.education.educationName),
            ),
            body: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: state.lessons.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  LessonView(lesson: state.lessons[index]),
                            ),
                          );
                        },
                        leading:
                            const Icon(Icons.play_lesson_outlined, size: 28),
                        title: Text(
                          state.lessons[index].lessonName,
                          style: const TextStyle(fontSize: 18),
                        ),
                        trailing: const Icon(Icons.arrow_circle_right_outlined),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        }
        return const Scaffold(body: Center(child: CircularProgressIndicator()));
      },
    );
  }
}
