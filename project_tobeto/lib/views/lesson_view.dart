import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_tobeto/blocs/lesson/lesson_bloc.dart';
import 'package:project_tobeto/blocs/lesson/lesson_event.dart';
import 'package:project_tobeto/blocs/lesson/lesson_state.dart';
import 'package:project_tobeto/models/education_model.dart';

class LessonView extends StatefulWidget {
  const LessonView({super.key, required this.education});
  final EducationModel education;

  @override
  State<LessonView> createState() => _LessonViewState();
}

class _LessonViewState extends State<LessonView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LessonBloc, LessonState>(
      builder: (context, state) {
        if (state is LessonInitial) {
          context
              .read<LessonBloc>()
              .add(FetchLessons(lessonId: widget.education.educationId));
        } else if (state is LessonsFetched) {
          return Scaffold(
            appBar: AppBar(
              title: Text(widget.education.educationName),
            ),
          );
        }
        return const Scaffold(body: Center(child: CircularProgressIndicator()));
      },
    );
  }
}
