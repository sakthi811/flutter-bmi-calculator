import 'package:flutter/material.dart';
import 'constants.dart';

class GenderCardContent extends StatelessWidget {
  GenderCardContent({required this.iconData, required this.iconLabel});

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
            style: kLabelTextStyle,
          )
        ],
      ),
    );
  }
}
