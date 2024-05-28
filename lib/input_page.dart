import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'bmi_card.dart';
import 'bmi_card_content.dart';
import 'bmi_row_widget.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xff1d1e33);
const inactiveCardColor = Color(0xff111328);
const bmiButtonColor = Color(0xffeb1555);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI Calculator'),
        ),
        body: Column(
          children: <Widget>[
            BMIRowWidget(
              maleCardColour: maleCardColor,
              femaleCardColour: femaleCardColor,
              maleCardWidget: BMICardContent(
                iconData: FontAwesomeIcons.mars,
                iconLabel: 'MALE',
              ),
              femaleCardWidget: BMICardContent(
                iconData: FontAwesomeIcons.venus,
                iconLabel: 'FEMALE',
              ),
              onMaleCardPressed: () {
                setState(() {
                  updateColour(Gender.male);
                });
              },
              onFemaleCardPressed: () {
                setState(() {
                  updateColour(Gender.female);
                });
              },
            ),
            Expanded(
                child: GestureDetector(
              onTap: () {
                print('Center widget was pressed');
              },
              child: BMICard(
                colour: activeCardColor,
                cardChild: BMICardContent(
                  iconData: FontAwesomeIcons.mars,
                  iconLabel: 'MALE',
                ),
              ),
            )),
            BMIRowWidget(
              maleCardColour: inactiveCardColor,
              femaleCardColour: inactiveCardColor,
              maleCardWidget: BMICardContent(
                iconData: FontAwesomeIcons.mars,
                iconLabel: 'MALE',
              ),
              femaleCardWidget: BMICardContent(
                iconData: FontAwesomeIcons.mars,
                iconLabel: 'FEMALE',
              ),
              onMaleCardPressed: () {},
              onFemaleCardPressed: () {},
            ),
            Container(
                color: bmiButtonColor,
                margin: const EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: bottomContainerHeight)
          ],
        ));
  }

  void updateColour(Gender gender) {
    if (gender == Gender.male) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
      } else {
        maleCardColor == inactiveCardColor;
      }
    } else if (gender == Gender.female) {
      if (femaleCardColor == inactiveCardColor) {
        femaleCardColor = activeCardColor;
      } else {
        femaleCardColor == inactiveCardColor;
      }
    }
  }
}
