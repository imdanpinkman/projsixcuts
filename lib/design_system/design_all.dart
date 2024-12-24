import 'package:flutter/material.dart';
import '../widget/home/home_calender.dart';
import 'theme.dart';
import 'colors.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
        TextSpan(
            children: [
              TextSpan(text: 'w',style: TextStyle(fontSize:30, color: Color(0xffffffff),fontFamily: 'Inter')),
              TextSpan(text: 'o',style: TextStyle(fontSize:30, color: Color(0xff8EB83D),fontFamily: 'Inter')),
              TextSpan(text: 'r',style: TextStyle(fontSize:30, color: Color(0xffD2D7A3),fontFamily: 'Inter')),
              TextSpan(text: 'k',style: TextStyle(fontSize:30, color: Color(0xff0D4429),fontFamily: 'Inter')),
              TextSpan(text: 'o',style: TextStyle(fontSize:30, color: Color(0xff026D31),fontFamily: 'Inter')),
              TextSpan(text: 'u',style: TextStyle(fontSize:30, color: Color(0xff26A641),fontFamily: 'Inter')),
              TextSpan(text: 't',style: TextStyle(fontSize:30, color: Color(0xff39D353),fontFamily: 'Inter')),
            ]
        )
    );
  }
}

class HomeScreenBox extends StatelessWidget {
  final Image image;
  const HomeScreenBox({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 179,
      height: 179,
      child: Column(
        children: [
          Container(
            width: 179,
            height: 179,
            decoration: BoxDecoration(
              border: Border.all(
                color: borderColor,

              ),borderRadius: BorderRadius.circular(15),
            ),
            child: image,
          ),
        ],
      ),
    );
  }
}
class HomeScreenBoxCalender extends StatelessWidget {

  const HomeScreenBoxCalender({
    super.key,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 179,
      height: 179,
      child: Column(
        children: [
          Container(
            width: 179,
            height: 179,
            decoration: BoxDecoration(
              border: Border.all(
                color: borderColor,

              ),borderRadius: BorderRadius.circular(15),
            ),
            child: Container( width:135,height:103,child: DateGrid()),
          ),
        ],
      ),
    );
  }
}







//대제목 입니다.
class MainText extends StatelessWidget {
  const MainText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 376,
      height: 40,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: borderColor,
          ),
        ),
      ),
      child: Text(
        '내 루틴',
        style: appTextTheme().headlineLarge,
      ),
    );
  }
}


//루틴들이 들어가는 컨테이너입니다.
// 컬러와 텍스트로 구분, 컬러는 왼쪽박스 58*112, 텍스트는 오른쪽박스 318*112 원사이즈는 3939
// 컬러박스의 원의 컬러, 운동의 소제목, 운동의 본문의 텍스트들은 바꿔치기 할 수 있게 해야함.
class home_routine extends StatelessWidget {
  final Color circleColor;
  final String routineMainText;
  final String routineSubText;



  const home_routine({
    super.key,
    required this.circleColor,
    required this.routineMainText,
    required this.routineSubText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 13),
        Container(
          width: 376,
          height: 112,
          decoration: BoxDecoration(
            border: Border.all(
              color: borderColor,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              HomeRoutineCircle(circleColor: circleColor),

              Container(
                width: 300,
                height: 112,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HomeRoutineMain(routineMainText: routineMainText,),
                    HomeRoutineSub(routineSubText: routineSubText,),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class HomeRoutineSub extends StatelessWidget {
  final String routineSubText;
  const HomeRoutineSub({
    super.key,
    required this.routineSubText,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      routineSubText,
      style: TextStyle(
        fontSize: 14,
        color: main3,
        fontFamily: 'NotoSansKRRegular',
      ),
    );
  }
}

class HomeRoutineMain extends StatelessWidget {
  final String routineMainText;
  const HomeRoutineMain({
    super.key,
    required this.routineMainText,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      routineMainText,
      style: appTextTheme().headlineMedium,
    );
  }
}

class HomeRoutineCircle extends StatelessWidget {
  final Color circleColor;

  const HomeRoutineCircle({
    super.key,
    required this.circleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 58,
      height: 112,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          bottomLeft: Radius.circular(15),
        ),
      ),
      child: Center(
        child: Container(
          width: 39,
          height: 39,
          decoration: BoxDecoration(
            color: circleColor, // 파라미터로 받은 색상 사용
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}


