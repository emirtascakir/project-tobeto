import 'package:flutter/material.dart';

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
