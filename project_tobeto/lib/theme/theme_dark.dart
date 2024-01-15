import 'package:flutter/material.dart';

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
