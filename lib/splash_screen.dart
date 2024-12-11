import 'package:flutter/material.dart';
import 'dart:async';

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
          //   Column 내에 텍스트와 이미지 출력
          // 각 마진과 패딩을 주기 위해 컨테이너로 덮음
          //   이미지 컨테이너
            Container(
              // decoration: BoxDecoration(
              //   border: Border.all(color: Colors.red),
              // ),
              child: Image.asset(
                    'assets/img/splash.png',
                    width: 200,
                    height: 150,
                    fit: BoxFit.contain,
                ),
            ),

            SizedBox(
              width: 10,
              height: 20,
            ),


            // 텍스트 컨테이너
            Container(

              // decoration: BoxDecoration(
              //   border: Border.all(color: Colors.red),
              // ),
                child: Text(
                    'SIXCUTS',
                  style: TextStyle(
                    fontSize: 35,
                    color: Color(0xFF004ED4),
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Pretendart',
                    letterSpacing: 3,
                  ),
                  textAlign: TextAlign.center,

                ),
            ),
            SizedBox(
              width: 10,
              height: 150,
            ),
            // 상태에 따라서 나올수도 안나올수도
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF004ED4)),
            ),



          ],
        ),
      ),

    );
  }
}

//