import 'package:flutter/material.dart';
import 'package:flutter_spinbox/material.dart';

class RespiratoryRate extends StatelessWidget {
  Widget build(BuildContext context) {
    return SpinBox(
      min: 1.0,
      max: 100.0,
      value: 30.0,
      decimals: 0,
      step: 1.0,
      decoration: InputDecoration(labelText: 'Respiratory Rate (bpm)'),
      onChanged: (value) => print('Respiratory Rate: $value'),
    );
  }
}
