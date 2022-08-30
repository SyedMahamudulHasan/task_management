import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:task_management/controllers/dataController.dart';

class ViewTask extends StatelessWidget {
  const ViewTask({Key? key, required this.id}) : super(key: key);
  final int id;
  _loadSingleTask() async {
    await Get.find<DataController>().getSingleData();
  }

  @override
  Widget build(BuildContext context) {
    _loadSingleTask();
    return Container();
  }
}
