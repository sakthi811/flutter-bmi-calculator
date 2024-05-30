import 'package:flutter/material.dart';
import 'package:flutter_bmi_calc/bmi_card.dart';
import 'package:flutter_bmi_calc/bottom_button.dart';
import 'package:flutter_bmi_calc/constants.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.interpretation,
      required this.bmiResult,
      required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Container(
                    padding: EdgeInsets.all(15.0),
                    alignment: Alignment.bottomLeft,
                    child: Text('Your Result', style: kTitleTextStyle))),
            Expanded(
                flex: 5,
                child: BMICard(
                  colour: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        resultText.toUpperCase(),
                        style: kResultTextStyle,
                      ),
                      Text(
                        bmiResult,
                        style: kBMITextStyle,
                      ),
                      Text(
                        interpretation,
                        textAlign: TextAlign.center,
                        style: kBodyTextStyle,
                      ),
                    ],
                  ),
                )),
            BottomButton(
                onTap: () {
                  Navigator.pop(context);
                },
                buttonLabel: 'RE-CALCULATE')
          ],
        ));
  }
}
