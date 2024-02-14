import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_tobeto/blocs/lesson/lesson_bloc.dart';
import 'package:project_tobeto/blocs/lesson/lesson_event.dart';
import 'package:project_tobeto/blocs/lesson/lesson_state.dart';
import 'package:project_tobeto/models/education_model.dart';
import 'package:video_player/video_player.dart';

class LessonView extends StatefulWidget {
  const LessonView({super.key, required this.education});
  final EducationModel education;

  @override
  State<LessonView> createState() => _LessonViewState();
}

class _LessonViewState extends State<LessonView> {
  late FlickManager _flickManager;

  @override
  void initState() {
    super.initState();

    _flickManager = FlickManager(
        videoPlayerController: VideoPlayerController.networkUrl(
      Uri.parse(
          "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4"),
    ));
  }

  @override
  void dispose() {
    super.dispose();
    _flickManager.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context
        .read<LessonBloc>()
        .add(FetchLessons(lessonId: widget.education.educationId));
    return BlocBuilder<LessonBloc, LessonState>(
      builder: (context, state) {
        if (state is LessonsFetched) {
          return Scaffold(
            appBar: AppBar(
              title: Text(widget.education.educationName),
            ),
            body: Column(
              children: [
                SizedBox(
                  child: FlickVideoPlayer(flickManager: _flickManager),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: state.lessons.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading:
                            const Icon(Icons.play_lesson_outlined, size: 28),
                        title: Text(state.lessons[index].lessonName),
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
