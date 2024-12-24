import 'exercise_item_data.dart';

class RoutineCategoryData {
  RoutineCategoryData({
    required this.title,
    required this.exercises,
  });

  // final 은 초기화가 되야함
  final String title;
  final List<ExerciseItemData> exercises;
}
