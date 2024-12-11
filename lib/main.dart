import 'package:flutter/material.dart';

import 'splash_screen.dart';
import 'home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Color(0xff232323)),
      home: SplashScreen(),
      routes: {
        '/splashScreen': (context) => SplashScreen(),
        '/homeScreen': (context) => HomeScreen(),
      },
    ),
  );
}

