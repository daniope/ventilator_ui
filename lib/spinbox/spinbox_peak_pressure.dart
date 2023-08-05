import 'package:flutter/material.dart';
import 'package:flutter_spinbox/material.dart';

class PeakPressure extends StatelessWidget {
  Widget build(BuildContext context) {
    return SpinBox(
      min: 0.0,
      max: 50.0,
      value: 10.0,
      decimals: 0,
      step: 1.0,
      decoration: InputDecoration(labelText: 'Peak Pressure (cmH\u2082O)'),
      onChanged: (value) => print('Peak Pressure: $value'),
    );
  }
}
