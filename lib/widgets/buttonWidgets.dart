import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Buttonwidget extends StatelessWidget {
  const Buttonwidget(
      {Key? key,
      required this.text,
      required this.textColor,
      required this.buttonColor})
      : super(key: key);

  final String text;
  final Color textColor;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(bottom: 10.0),
      width: size.width,
      height: size.height / 14,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: buttonColor,
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
