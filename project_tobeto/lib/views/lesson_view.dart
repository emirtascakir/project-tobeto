import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:project_tobeto/models/lesson_model.dart';
import 'package:video_player/video_player.dart';

class LessonView extends StatefulWidget {
  const LessonView({super.key, required this.lesson});
  final LessonModel lesson;

  @override
  State<LessonView> createState() => _LessonViewState();
}

class _LessonViewState extends State<LessonView> {
  late FlickManager flickManager;

  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
        videoPlayerController: VideoPlayerController.networkUrl(
      Uri.parse(widget.lesson.lessonVideoUrl),
    ));
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.lesson.lessonName),
      ),
      body: AspectRatio(
          aspectRatio: 16 / 9,
          child: FlickVideoPlayer(flickManager: flickManager)),
    );
  }
}
