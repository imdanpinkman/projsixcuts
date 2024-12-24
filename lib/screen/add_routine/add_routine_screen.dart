import 'package:flutter/material.dart';
import 'package:sixcuts/data/default_routine_data.dart';
import 'package:sixcuts/data/routine_category_data.dart';

import '../../data/exercise_item_data.dart';
import '../../widget/add_routine_category.dart';

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
        title: Text('운동선택'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.edit))],
      ),
      body: Container(
        width: double.infinity,
        // 기본 그룹은 가슴 등 어꺠 하체 총 4개
        child: Column(
          children: [
            for (final category in defaultRoutineData)
              AddRoutineCategoryWidget(data: category),
          ],
        ),
      ),
    );
  }
}

