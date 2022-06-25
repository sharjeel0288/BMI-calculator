import 'package:flutter/material.dart';
import 'package:BmiCalculator/constants.dart';

class IconContent extends StatelessWidget {
  IconData icon;
  String label;
  IconContent(this.icon, this.label);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 50.0,
        ),
        SizedBox(
          height: 2.0,
        ),
        Text(
          label,
          style: KLabelTextStyle,
        ),
      ],
    );
  }
}
