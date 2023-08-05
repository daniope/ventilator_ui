import 'package:flutter/material.dart';
import 'package:flutter_spinbox/material.dart';

class Inspiratory extends StatelessWidget {
  Widget build(BuildContext context) {
    return SpinBox(
      min: 1.0,
      max: 10.0,
      value: 1.0,
      decimals: 0,
      step: 1.0,
      decoration: InputDecoration(labelText: 'Ins.'),
      onChanged: (value) => print('Inspiratory Ratio: $value'),
    );
  }
}

class Expiratory extends StatelessWidget {
  Widget build(BuildContext context) {
    return SpinBox(
      min: 1.0,
      max: 10.0,
      value: 1.0,
      decimals: 0,
      step: 1.0,
      decoration: InputDecoration(labelText: 'Exp.'),
      onChanged: (value) => print('Expiratory Ratio: $value'),
    );
  }
}

class Ratio extends StatelessWidget {
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Inspiratory(),
        ),
        Expanded(
          child: Text(':', textAlign: TextAlign.center),
        ),
        Expanded(
          child: Expiratory(),
        ),
      ],
    );
  }
}
