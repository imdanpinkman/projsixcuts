import 'package:flutter/material.dart';
import 'package:sixcuts/design_system/colors.dart';

class DateGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    int daysInMonth = DateTime(now.year, now.month + 1, 0).day;

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 7, // 7열
        mainAxisSpacing: 5.0,
        crossAxisSpacing: 5.0,
      ),
      itemCount: 35, // 7열 * 5행
      itemBuilder: (context, index) {
        bool isActive = index < daysInMonth;
        bool isToday = isActive && (index + 1) == now.day;

        return Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            color: isActive ? Colors.blue : Colors.grey, // 활성화된 날짜는 파란색, 비활성화된 날짜는 회색
            borderRadius: BorderRadius.circular(3),
            border: isToday ? Border.all(color: Colors.red, width: 2) : null, // 오늘 날짜는 빨간색 테두리
          ),
        );
      },
    );
  }
}