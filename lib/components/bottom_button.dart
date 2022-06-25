import 'package:flutter/material.dart';
import 'package:BmiCalculator/constants.dart';

class BottomButton extends StatelessWidget {
  final void Function() onTap;
  final String buttonText;
  BottomButton({required this.buttonText, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        padding: EdgeInsets.only(bottom: 10.0),
        child: Center(
          child: Text(
            buttonText,
            style: KLargeButtonTextStyle,
          ),
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: KBottomContainerHeight,
      ),
    );
  }
}
