import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const bmiCardColor = Color(0xff1d1e33);
const bmiButtonColour = Color(0xffeb1555);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI Calculator'),
        ),
        body: Column(
          children: <Widget>[
            BMIRowWidget(),
            Expanded(child: BMICard(colour: bmiCardColor)),
            BMIRowWidget(),
            Container(
                color: bmiButtonColour,
                margin: const EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: bottomContainerHeight)
          ],
        ));
  }
}

class BMIRowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: <Widget>[
          Expanded(
            child: BMICard(colour: bmiCardColor),
          ),
          Expanded(
            child: BMICard(colour: bmiCardColor),
          ),
        ],
      ),
    );
  }
}

class BMICard extends StatelessWidget {
  BMICard({required this.colour});

  Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
