import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: ,
      appBar: AppBar(
        title: Text('안녕하세요'),
        actions: [
          Text('반가워요')
        ],
      ),
      body : Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/img/splash.png'),
          Text(
              'SIXCUTS',
            style: TextStyle(
              // color: Color(0xff004ED4)
            ),

          ),
        ],
      ),
    );
  }
}

//