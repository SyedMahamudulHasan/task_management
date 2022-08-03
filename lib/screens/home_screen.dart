import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task_management/colors/app_colors.dart';
import 'package:task_management/widgets/buttonWidgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/welcome.jpg'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(
            //   height: size.height / 20,
            // ),
            RichText(
              text: TextSpan(
                text: "Hello",
                style: TextStyle(
                  color: AppColors.mainColor,
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                ),
                children: const [
                  TextSpan(
                    text: "\nStart your beautiful day",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: size.height / 2.5,
            ),
            MaterialButton(
              onPressed: () {},
              child: Buttonwidget(
                  text: "Add Task",
                  textColor: AppColors.textHolder,
                  buttonColor: AppColors.mainColor),
            ),
            Buttonwidget(
              text: "View All",
              textColor: AppColors.textHolder,
              buttonColor: AppColors.secondaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
