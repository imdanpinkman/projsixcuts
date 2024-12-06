import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

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

            ElevatedButton(
              onPressed: () => {Navigator.pushNamed(context, '/homeScreen'),},
              child: const Text('Go to Second Page'),
            ),
          ],
        ),
      ),

    );
  }
}

//