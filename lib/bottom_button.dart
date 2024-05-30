import 'package:flutter/material.dart';
import 'package:flutter_bmi_calc/result_page.dart';

import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.onTap, required this.buttonLabel});

  String buttonLabel;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          color: kBmiButtonColor,
          margin: const EdgeInsets.only(top: 10.0),
          width: double.infinity,
          height: kBottomContainerHeight,
          child: Center(
              child: Text(
            buttonLabel,
            style: kButtonLabelTextStyle,
          ))),
    );
  }
}
