import 'package:flutter/material.dart';
import 'package:project_tobeto/views/login_view.dart';

ThemeData darkTheme = ThemeData(
  colorScheme: const ColorScheme.dark(
      background: Color.fromARGB(255, 58, 55, 55),
      primary: Color(0xFF9933FF),
      secondary: Color.fromARGB(255, 22, 22, 22)),
);

ThemeData lightTheme = ThemeData(
  colorScheme: const ColorScheme.dark(
      background: Color.fromARGB(255, 250, 235, 235),
      primary: Color(0xFF9933FF),
      secondary: Color.fromARGB(255, 22, 22, 22)),
);

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const LoginView(),
    theme: lightTheme,
  ));
}
