

import '../screen/add_routine/add_routine_screen.dart';
import '../screen/home_screen.dart';
import '../screen/splash_screen.dart';

class RouteName {
  // static 쓰는 이유 : 클래스의 인스턴스를 생성하지 않고도 사용할 수 있게 하기 위함
  // static 변수는 클래스의 모든 인스턴스가 공유하는 변수
  static const String splashScreen = '/splashScreen';
  static const String homeScreen = '/homeScreen';
  static const String addRoutine = '/addRoutine';
}


final routes = {
'/splashScreen': (context) => SplashScreen(),
'/homeScreen': (context) => HomeScreen(),
'/addRoutine': (context) => AddRoutineScreen(),
};

//호출하는방법 : Navigator.pushNamed(context, RouteName.homeScreen);

// initialRoute 란? -> 앱이 시작될때 가장 먼저 보여지는 화면을 설정하는 것
//routes 란 ? -> 앱 내에서 화면을 전환할때 사용하는 경로를 설정하는 것
// main.dart MateialApp 위젯에 initialRoute 와 routes 를 설정해주면 됨
// routes: routes, ( 위에 선언한 routes 변수를 넣어줌)
// initialRoute: RouteName.splashScreen,