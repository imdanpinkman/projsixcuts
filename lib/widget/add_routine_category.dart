import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sixcuts/data/routine_category_data.dart';
import 'package:sixcuts/design_system/theme.dart';

import '../data/exercise_item_data.dart';
import 'exercise_widget.dart';

// Map<String, dynamic> jsonData = jsonDecode(jsonString);
class AddRoutineCategoryWidget extends StatefulWidget {
  const AddRoutineCategoryWidget({
    super.key,
    // 이 카테고리 위젯은 RoutineCategoryData 파라미터를 입력받아야 한다.
    required this.data,
  });

  final RoutineCategoryData data;

  @override
  State<AddRoutineCategoryWidget> createState() =>
      _AddRoutineCategoryWidgetState();
}

class _AddRoutineCategoryWidgetState extends State<AddRoutineCategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      //위쪽 마진
      margin: EdgeInsets.only(top: 10),
      //좌우패딩 20 / 상하패딩 10
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      //좌정렬 (왼쪽)
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 제목 / 카테고리 /
          Text(
            widget.data.title,
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  color: Colors.white,
                ),
          ),
          for (final exercise in widget.data.exercises)
            ExerciseWidget(data: exercise),
        ],
      ),
    );
  }
}

