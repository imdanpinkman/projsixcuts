import 'package:flutter/material.dart';

import 'splash_screen.dart';
import 'home_screen.dart';

final routes = {
  '/' : (BuildContext context) => HomeScreen(),
  '/splashScreen' : (BuildContext context) => SplashScreen(),
  '/homeScreen' : (BuildContext context) => HomeScreen(),
}