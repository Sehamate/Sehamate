import 'package:flutter/material.dart';

abstract class AppTheme {
  static final ThemeData data = ThemeData(
    fontFamily: 'inter',
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextTheme(
      titleMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      titleSmall: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      bodyMedium: TextStyle(fontSize: 15),
      bodySmall: TextStyle(fontSize: 10, color: Colors.grey),
    ),
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff8211D3),
      onPrimary: Colors.white,
      secondary: Color(0xff5569F0),
      onSecondary: Colors.white,
      error: Colors.red,
      onError: Colors.white,
      surface: Color(0xff8211D3),
      onSurface: Colors.white,
    ),
  );
}
