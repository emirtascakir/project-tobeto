import 'package:flutter/material.dart';

extension BuildContextExtensions on BuildContext {
  Size get deviceSize => MediaQuery.sizeOf(this);
  ThemeData get _theme => Theme.of(this);
  ColorScheme get colorScheme => _theme.colorScheme;
}
