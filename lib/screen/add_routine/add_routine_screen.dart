import 'package:flutter/material.dart';

class AddRoutineScreen extends StatefulWidget {
  const AddRoutineScreen({super.key});

  @override
  State<AddRoutineScreen> createState() => _AddRoutineScreenState();
}

class _AddRoutineScreenState extends State<AddRoutineScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('예시 ) 추가 화면 '),
      ),
      body: Container(
        child: Center(
          child: Text('Add Routine Screen'),
        ),
      ),
    );
  }
}
