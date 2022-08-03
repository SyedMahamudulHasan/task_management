import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../colors/app_colors.dart';

class AddTaskField extends StatelessWidget {
  const AddTaskField({
    Key? key,
    required this.textController,
    required this.text,
    this.line = 1,
    this.borderRadius = 30,
  }) : super(key: key);
  final TextEditingController textController;
  final int line;
  final String text;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: line,
      controller: textController,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.textHolder,
        hintText: text,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: const BorderSide(
            color: Colors.white,
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: const BorderSide(
            color: Colors.white,
            width: 1,
          ),
        ),
      ),
    );
  }
}
