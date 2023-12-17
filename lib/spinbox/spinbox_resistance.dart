import 'package:flutter/material.dart';
import 'package:flutter_spinbox/material.dart';

class Resistance extends StatelessWidget {
  ValueNotifier<double> notifier = ValueNotifier(0.0);

  Widget build(BuildContext context) {
    return SpinBox(
      min: 1.0,
      max: 80.0,
      value: 20.0,
      decimals: 0,
      step: 1.0,
      decoration: InputDecoration(labelText: 'Resistance (cmH\u2082O/L/s)'),
      onChanged: (value) => notifier.value = value,
    );
  }
}
