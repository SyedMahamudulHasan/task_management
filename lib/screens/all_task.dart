import 'package:flutter/material.dart';
import 'package:task_management/colors/app_colors.dart';
import 'package:task_management/widgets/buttonWidgets.dart';
import 'package:task_management/widgets/task_widget.dart';

class AllTask extends StatelessWidget {
  const AllTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final List mydata = [
      "Try harder",
      "Try smarter",
      "Try harder",
    ];

    final leftEditIcon = Container(
      padding: const EdgeInsets.only(left: 20),
      margin: const EdgeInsets.only(bottom: 10),
      color: const Color(0xFF2e3253).withOpacity(0.5),
      alignment: Alignment.centerLeft,
      child: const Icon(
        Icons.edit,
        color: Colors.white,
      ),
    );
    final rightEditIcon = Container(
      padding: const EdgeInsets.only(right: 20),
      margin: const EdgeInsets.only(bottom: 10),
      color: Colors.redAccent,
      alignment: Alignment.centerRight,
      child: const Icon(
        Icons.delete,
        color: Colors.white,
      ),
    );

    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(top: 30, left: 10),
            width: size.width,
            height: size.height / 3.3,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/header1.jpg"),
              ),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back,
              ),
              iconSize: 22,
              color: AppColors.mainColor,
            ),
          ),

          ///=============================================>Iconbutton section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.home),
                    color: AppColors.secondaryColor,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add_box_sharp),
                    color: AppColors.mainColor,
                  )
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.calendar_month_sharp,
                    color: AppColors.secondaryColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '2',
                      style: TextStyle(
                        color: AppColors.secondaryColor,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),

          ///====================================================> task list
          Flexible(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: mydata.length,
              itemBuilder: (context, index) => Dismissible(
                background: leftEditIcon,
                secondaryBackground: rightEditIcon,
                onDismissed: (direction) {},
                confirmDismiss: (direction) async {
                  if (direction == DismissDirection.startToEnd) {
                    ///===============================================>showModalBottonSheet
                    showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        barrierColor: Colors.transparent,
                        context: context,
                        builder: (_) {
                          return Container(
                            height: size.height / 2,
                            decoration: BoxDecoration(
                              color: AppColors.secondaryColor.withOpacity(0.5),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Buttonwidget(
                                    text: "View",
                                    textColor: Colors.white,
                                    buttonColor: AppColors.mainColor,
                                  ),
                                  Buttonwidget(
                                    text: "Edit",
                                    textColor: AppColors.secondaryColor,
                                    buttonColor: AppColors.mainColor,
                                  )
                                ],
                              ),
                            ),
                          );
                        });
                    return false;
                  } else {
                    return true;
                  }
                },
                key: ObjectKey(index),
                child: TaskWidget(size: size, task: mydata[index]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
