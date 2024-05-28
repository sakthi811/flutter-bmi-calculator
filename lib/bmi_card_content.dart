import 'package:flutter/material.dart';

const bmiCardContentColor = Color(0xff8d8e98);
const TextStyle textStyle =
    TextStyle(fontSize: 18.0, color: bmiCardContentColor);

class BMICardContent extends StatelessWidget {
  BMICardContent({required this.iconData, required this.iconLabel});

  final IconData iconData;
  final String iconLabel;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            iconData,
            size: 80.0,
          ),
          const SizedBox(
            height: 15.0,
          ),
          Text(
            iconLabel,
            style: textStyle,
          )
        ],
      ),
    );
  }
}
