import 'package:flutter/material.dart';

import 'colors.dart';

ThemeData appTheme() {
  return ThemeData(
    scaffoldBackgroundColor: Color(0xff1c1c1c),
    useMaterial3: true,
  );
}

TextTheme appTextTheme() {
  // 글자는 5가지로만 나누자.
  // 제목 / 부제목 /본문 / 버튼 / 스플레쉬


  return TextTheme(
  //   제목 (제일큼)
    headlineLarge: TextStyle(
      fontSize: 20,
      color: main1,
      fontFamily: 'NotoSansKRBold',
    ),
    // 부제목 (보통)
    headlineMedium: TextStyle(
      fontSize: 16,
      color: main1,
      fontFamily: 'NotoSansKRBold',

    ),
    // 본문 (작게)
    bodyMedium: TextStyle(
      fontSize: 12,
      color: main1,
      fontFamily: 'NotoSansKRRegular',
    ),
  );


}




