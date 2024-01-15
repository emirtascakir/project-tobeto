import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:project_tobeto/theme/theme_dark.dart';
import 'package:project_tobeto/theme/theme_light.dart';
import 'package:project_tobeto/views/home_view.dart';

void main() {
  runApp(CalendarControllerProvider(
    controller: EventController(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
    ),
  ));
}
