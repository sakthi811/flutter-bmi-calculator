import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'bmi_card.dart';
import 'bmi_card_content.dart';
import 'bmi_row_widget.dart';
import 'constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.male;
  int height = 180;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI Calculator'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            BMIRowWidget(
              maleCardColour: selectedGender == Gender.male
                  ? kActiveCardColor
                  : kInactiveCardColor,
              femaleCardColour: selectedGender == Gender.female
                  ? kActiveCardColor
                  : kInactiveCardColor,
              maleCardWidget: GenderCardContent(
                iconData: FontAwesomeIcons.mars,
                iconLabel: 'MALE',
              ),
              femaleCardWidget: GenderCardContent(
                iconData: FontAwesomeIcons.venus,
                iconLabel: 'FEMALE',
              ),
              onMaleCardPressed: () {
                setState(() {
                  selectedGender = Gender.male;
                });
              },
              onFemaleCardPressed: () {
                setState(() {
                  selectedGender = Gender.female;
                });
              },
            ),
            Expanded(
                child: BMICard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('HEIGHT'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kHeightLabelTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Colors.grey,
                        overlayColor: kSliderOverlayColor,
                        thumbColor: kBmiButtonColor,
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0)),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  )
                ],
              ),
            )),
            BMIRowWidget(
              maleCardColour: kInactiveCardColor,
              femaleCardColour: kInactiveCardColor,
              maleCardWidget: GenderCardContent(
                iconData: FontAwesomeIcons.mars,
                iconLabel: 'MALE',
              ),
              femaleCardWidget: GenderCardContent(
                iconData: FontAwesomeIcons.mars,
                iconLabel: 'FEMALE',
              ),
              onMaleCardPressed: () {},
              onFemaleCardPressed: () {},
            ),
            Container(
                color: kBmiButtonColor,
                margin: const EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: kBottomContainerHeight)
          ],
        ));
  }
}
