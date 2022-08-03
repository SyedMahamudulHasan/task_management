import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:task_management/colors/app_colors.dart';
import 'package:task_management/screens/addtaskFied.dart';
import 'package:task_management/widgets/buttonWidgets.dart';

class AddTask extends StatelessWidget {
  const AddTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _nameController = TextEditingController();
    TextEditingController _detailController = TextEditingController();
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          height: size.height,
          width: size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/addtask1.jpg'),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back,
                      color: AppColors.mainColor,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  AddTaskField(
                    textController: _nameController,
                    text: "Add Task",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  AddTaskField(
                    textController: _detailController,
                    text: "Task Details",
                    borderRadius: 15,
                    line: 3,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Buttonwidget(
                    text: "Add",
                    textColor: Colors.white,
                    buttonColor: AppColors.mainColor,
                  )
                ],
              ),
              SizedBox(
                height: size.height / 6,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
