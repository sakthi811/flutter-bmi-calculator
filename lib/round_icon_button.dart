import 'package:flutter/material.dart';
import 'package:flutter_bmi_calc/constants.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon, required this.onPress});

  final IconData icon;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        onPressed: onPress,
        elevation: 6.0,
        constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
        shape: CircleBorder(),
        fillColor: kFABColour,
        child: Icon(icon));
  }
}
