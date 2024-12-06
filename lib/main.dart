import 'package:flutter/material.dart';

import 'splash_screen.dart';


void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        colorScheme: ColorScheme.light(
          primary: Colors.redAccent, // 주요 색상
          secondary: Colors.orange, // 보조 색상
        ),
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            color: Colors.blue,
          ),
        ),
      ),

      home: SplashScreen(),
    ),
  );
}

