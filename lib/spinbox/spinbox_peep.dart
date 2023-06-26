import 'package:flutter/material.dart';
import 'package:flutter_spinbox/material.dart';

class PEEP extends StatelessWidget {
  Widget build(BuildContext context) {
    return SpinBox(
      min: 0.0,
      max: 50.0,
      value: 5.0,
      decimals: 0,
      step: 1.0,
      decoration: InputDecoration(labelText: 'PEEP (cmH\u2082O)'),
      onChanged: (value) => print('PEEP: $value'),
    );
  }
}
