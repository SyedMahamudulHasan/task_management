import 'package:flutter/material.dart';
import 'package:task_management/colors/app_colors.dart';

class TaskWidget extends StatelessWidget {
  const TaskWidget({
    Key? key,
    required this.size,
    required this.task,
  }) : super(key: key);

  final Size size;
  final dynamic task;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height / 14,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: AppColors.textHolder,
      ),
      child: Center(
        child: Text(
          task["task_name"],
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
