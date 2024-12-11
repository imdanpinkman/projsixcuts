import 'package:flutter/material.dart';

import 'splash_screen.dart';
import 'home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff232323),
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
      home: SplashScreen(),
      // 라우팅
      routes: {
        '/splashScreen': (context) => SplashScreen(),
        '/homeScreen': (context) => HomeScreen(),
      },
    ),
  );
}
