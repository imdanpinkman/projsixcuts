import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff232323),
        title: Text(
            'homeScreen화면',
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 20,
              ),
        ),
      ),

      // Container 는 크게 가로 2개
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,

              color: Colors.red,

            //   상단 콘테이너는 또 row 2가지로 나뉜다.
            //   달력과 캐릭터
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,

              children: [
                // 달력입니다.
                // 달력은 날짜(텍스트)와 빈칸으로 구성됩니다.
                Container(
                  width: 200,
                  height: 300,
                  color: Colors.green,
                  child: Column(
                    children: [
                      Container(
                        width: 200,
                        height: 50,
                        color: Colors.white,
                        child: Text('날짜입니다.'),
                      ),
                      // 가로 7개 세로 5개의 정사각형 빈칸으로 구성됩니다.
                      // 오늘의 해당하는 칸엔 border 주어 표시합니다.
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 170,
                        height: 170,
                        color: Colors.yellow,
                        // 5개의 콜론 내부에 7개의 로우를 추가합니다.
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: [
                            Container(

                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: 15,
                                    height: 15,
                                    color: Colors.black,
                                  ),
                                  Container(
                                    width: 15,
                                    height: 15,
                                    color: Colors.black,
                                  ),
                                  Container(
                                    width: 15,
                                    height: 15,
                                    color: Colors.black,
                                  ),
                                  Container(
                                    width: 15,
                                    height: 15,
                                    color: Colors.black,
                                  ),
                                  Container(
                                    width: 15,
                                    height: 15,
                                    color: Colors.black,
                                  ),
                                  Container(
                                    width: 15,
                                    height: 15,
                                    color: Colors.black,
                                  ),
                                  Container(
                                    width: 15,
                                    height: 15,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            ),
                            Container(

                              height: 15,

                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: 15,
                                    height: 15,
                                    color: Colors.black,
                                  ),
                                  Container(
                                    width: 15,
                                    height: 15,
                                    color: Colors.black,
                                  ),
                                  Container(
                                    width: 15,
                                    height: 15,
                                    color: Colors.black,
                                  ),
                                  Container(
                                    width: 15,
                                    height: 15,
                                    color: Colors.black,
                                  ),
                                  Container(
                                    width: 15,
                                    height: 15,
                                    color: Colors.black,
                                  ),
                                  Container(
                                    width: 15,
                                    height: 15,
                                    color: Colors.black,
                                  ),
                                  Container(
                                    width: 15,
                                    height: 15,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            ),
                            Container(

                              height: 15,

                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: 15,
                                    height: 15,
                                    color: Colors.black,
                                  ),
                                  Container(
                                    width: 15,
                                    height: 15,
                                    color: Colors.black,
                                  ),
                                  Container(
                                    width: 15,
                                    height: 15,
                                    color: Colors.black,
                                  ),
                                  Container(
                                    width: 15,
                                    height: 15,
                                    color: Colors.black,
                                  ),
                                  Container(
                                    width: 15,
                                    height: 15,
                                    color: Colors.black,
                                  ),
                                  Container(
                                    width: 15,
                                    height: 15,
                                    color: Colors.black,
                                  ),
                                  Container(
                                    width: 15,
                                    height: 15,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            ),
                            Container(

                              height: 15,

                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: 15,
                                    height: 15,
                                    color: Colors.black,
                                  ),
                                  Container(
                                    width: 15,
                                    height: 15,
                                    color: Colors.black,
                                  ),
                                  Container(
                                    width: 15,
                                    height: 15,
                                    color: Colors.black,
                                  ),
                                  Container(
                                    width: 15,
                                    height: 15,
                                    color: Colors.black,
                                  ),
                                  Container(
                                    width: 15,
                                    height: 15,
                                    color: Colors.black,
                                  ),
                                  Container(
                                    width: 15,
                                    height: 15,
                                    color: Colors.black,
                                  ),
                                  Container(
                                    width: 15,
                                    height: 15,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            ),
                            Container(

                              height: 15,

                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: 15,
                                    height: 15,
                                    color: Colors.black,
                                  ),
                                  Container(
                                    width: 15,
                                    height: 15,
                                    color: Colors.black,
                                  ),
                                  Container(
                                    width: 15,
                                    height: 15,
                                    color: Colors.black,
                                  ),
                                  Container(
                                    width: 15,
                                    height: 15,
                                    color: Colors.black,
                                  ),
                                  Container(
                                    width: 15,
                                    height: 15,
                                    color: Colors.black,
                                  ),
                                  Container(
                                    width: 15,
                                    height: 15,
                                    color: Colors.black,
                                  ),
                                  Container(
                                    width: 15,
                                    height: 15,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                ),

                // 캐릭터입니다.
                Container(
                  width: 200,
                  height: 300,
                  color: Colors.yellow,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          '나의 상태',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      Image.asset(
                        'assets/img/splash.png',
                        width: 150,
                        height: 150,
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                ),
              ],
            ),

            ),
            SizedBox(
              height: 20,
            ),

            // 내 루틴 카테고리입니다. 이름과 내루틴들 리스트로 구성됩니다.
            Container(
              width: double.infinity,

              color: Colors.blue,

              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 50,
                    color: Colors.white,
                    child: Text(
                        '내 루틴 카테고리',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 50,
                          color: Colors.white,
                          child: Text(
                              '내 루틴 1',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 50,
                          color: Colors.white,
                          child: Text(
                            '내 루틴 1',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 50,
                          color: Colors.white,
                          child: Text(
                            '내 루틴 1',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 50,
                          color: Colors.white,
                          child: Text(
                            '내 루틴 2',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),


      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'person'),

        ],
      ),
    );
  }
}
