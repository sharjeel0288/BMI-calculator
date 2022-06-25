import 'package:flutter/material.dart';
import 'package:BmiCalculator/constants.dart';
import 'package:BmiCalculator/components/reusable_card.dart';
import 'package:BmiCalculator/components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult, resultText, interpretation;
  ResultsPage(
      {required this.bmiResult,
      required this.resultText,
      required this.interpretation});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: KTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            child: ReuseableCard(
              colour: KAtiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: resultText == 'Normal'
                            ? Colors.green
                            : resultText == 'Underweight'
                                ? Color.fromARGB(255, 235, 231, 14)
                                : Color.fromARGB(255, 221, 11, 11)),
                  ),
                  Text(
                    bmiResult,
                    style: KBMITestStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: KBodyTextStyle,
                  ),
                ],
              ),
              onTap: () {},
            ),
            flex: 5,
          ),
          BottomButton(
            buttonText: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
