import 'package:flutter/material.dart';
import 'package:sixcuts/data/exercise_item_data.dart';

class ExerciseWidget extends StatefulWidget {
  ExerciseWidget({super.key, required this.data});

  final ExerciseItemData data;
  bool isChecked = false;

  @override
  State<ExerciseWidget> createState() => _ExerciseWidgetState();
}

class _ExerciseWidgetState extends State<ExerciseWidget> {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: widget.isChecked,
            onChanged: (value) {
              setState(() {
                widget.isChecked = value == true;
              });
            }),
        Text(
          widget.data.title,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: Colors.white,
          ),
        ),
        SizedBox(width: 20),
        Text(
          widget.data.description,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
