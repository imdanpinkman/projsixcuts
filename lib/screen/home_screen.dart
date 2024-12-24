import 'package:flutter/material.dart';
import 'package:sixcuts/design_system/colors.dart';

import '../design_system/design_all.dart';
import '../widget/home/home_calender.dart';

// 홈 스크린 구조에 대해 정리
// 1. 최상단 appbar 402 * 57
// 2. 달력과 캐릭터를 갖는 컨테이너 402 * 215 / 달력과 캐릭터는 각각 179 * 179 radious 15
// 3. 루틴 카테고리 컨테이너 제목 한줄 376 * 40 / 루틴들은 376 * 112 radious 15
// 4. 네비게이션바


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
          'homeScreen화면입니다.',
          // style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),

      // Container 는 크게 가로 2개
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 215,
              //   상단 콘테이너는 또 row 2가지로 나뉜다.
              //   달력과 캐릭터
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  // 홈스크린 박스를 인스턴스화 하려면?

                  HomeScreenBoxCalender(),

                  // 캐릭터입니다.
                  HomeScreenBox(image: Image.asset('assets/img/splashscreen.png')),
                ],
              ),
            ),

            // 내 루틴 카테고리입니다. 이름과 내루틴들 리스트로 구성됩니다.
          Container(
            width: double.infinity,
            child: Column(
              children: [
                MainText(),

                home_routine(
                  circleColor: circleColor1,
                  routineMainText: '가슴운동',
                  routineSubText: '벤치프레스, 체스트프레스',),
                home_routine(
                  circleColor: circleColor1,
                  routineMainText: '가슴운동',
                  routineSubText: '벤치프레스, 체스트프레스',),
                home_routine(
                  circleColor: circleColor1,
                  routineMainText: '가슴운동',
                  routineSubText: '벤치프레스, 체스트프레스',),
              ],
            ),
          ),

            // 문제
            ],),


          ),

        floatingActionButton: FloatingActionButton(
        onPressed: () {
      Navigator.of(context).pushNamed('/addRoutine');
    },
    child: Icon(Icons.add)
    ),
        );



  }
}




