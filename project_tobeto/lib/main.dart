import 'package:flutter/material.dart';
import 'package:project_tobeto/views/home_view.dart';
import 'package:project_tobeto/views/login_view.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    background: Color.fromARGB(255, 58, 55, 55),
    primary: Color(0xFF9933FF),
    secondary: Color.fromARGB(255, 22, 22, 22),
    onBackground: Color.fromARGB(255, 255, 255, 255),
    onPrimary: Color(0xFF00D29B),
  ),
  useMaterial3: true,
);

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    background: Color.fromARGB(255, 228, 228, 228),
    primary: Color(0xFF9933FF),
    secondary: Color.fromARGB(255, 22, 22, 22),
    onBackground: Color.fromARGB(255, 255, 255, 255),
    onPrimary: Color(0xFF00D29B),
  ),
  useMaterial3: true,
);

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const HomeView(),
    theme: lightTheme,
    darkTheme: darkTheme,
    themeMode: ThemeMode.system,
  ));
}
