import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bmi_card.dart';

class BMIRowWidget extends StatelessWidget {
  BMIRowWidget(
      {required this.maleCardColour,
      required this.femaleCardColour,
      required this.maleCardWidget,
      required this.femaleCardWidget,
      required this.onMaleCardPressed,
      required this.onFemaleCardPressed});

  final Color maleCardColour;
  final Color femaleCardColour;
  final Widget maleCardWidget;
  final Widget femaleCardWidget;
  final VoidCallback onMaleCardPressed;
  final VoidCallback onFemaleCardPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: <Widget>[
          Expanded(
            child: GestureDetector(
              onTap: onMaleCardPressed,
              child: BMICard(
                colour: maleCardColour,
                cardChild: maleCardWidget,
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: onFemaleCardPressed,
              child: BMICard(
                colour: femaleCardColour,
                cardChild: femaleCardWidget,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
