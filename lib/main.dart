import 'package:flutter/material.dart';

import 'design_system/theme.dart';
import 'screen/add_routine/add_routine_screen.dart';
import 'screen/splash_screen.dart';
import 'screen/home_screen.dart';
import 'routes/routes.dart';
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme(),




      initialRoute: RouteName.splashScreen,

      routes:  routes,

    ),
  );
}
