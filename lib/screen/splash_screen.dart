import 'package:flutter/material.dart';
import 'dart:async';
import 'package:sixcuts/design_system/design_all.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});


  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
//initState는 위젯의 초기화 작업 수행하는데 사용
// 생명주기와 함께 시작하기 위해 타이머설정하는데 사용
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      // Material Page Route를 사용하여 홈 화면으로 이동
      // pushReplacement는 이전 화면을 스택에서 제거
      // 이 둘의 차이 -> 파라미터 기입 가능
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => HomeScreen(),
      ));
      // Navigator.pushReplacementNamed(context, '/homeScreen');
    });

  }



  //  빌드함수에 대해 질문

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            SizedBox(
              width: 10,
              height: 20,
            ),
            Container(
              child: Logo(),
            ),
            SizedBox(
              width: 10,
              height: 150,
            ),
          ],
        ),
      ),
    );
  }
}




//