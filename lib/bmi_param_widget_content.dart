import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bmi_calc/round_icon_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'bmi_card.dart';
import 'constants.dart';

class BMIParamWidgetContent extends StatelessWidget {
  BMIParamWidgetContent(
      {required this.label,
      required this.unitValue,
      required this.onDecreased,
      required this.onIncreased});

  String label;
  int unitValue;
  VoidCallback onDecreased;
  VoidCallback onIncreased;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BMICard(
        colour: kInactiveCardColor,
        cardChild: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(label, style: kLabelTextStyle),
            Text(unitValue.toString(), style: kBmiUnitLabelTextStyle),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RoundIconButton(
                  icon: FontAwesomeIcons.minus,
                  onPress: onDecreased,
                ),
                SizedBox(width: 10.0),
                RoundIconButton(
                    icon: FontAwesomeIcons.plus, onPress: onIncreased),
              ],
            )
          ],
        ),
      ),
    );
  }
}
