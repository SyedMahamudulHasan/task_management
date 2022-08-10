import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_management/colors/app_colors.dart';

class ErrorMsg {
  static void taskErrorWarning(String taskName, String errorMsg) {
    Get.snackbar(taskName, errorMsg,
        backgroundColor: AppColors.mainColor,
        titleText: Text(
          taskName,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        messageText: Text(
          errorMsg,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white54,
          ),
        ));
  }
}
