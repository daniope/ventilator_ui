import 'package:flutter/material.dart';
import 'package:flutter_spinbox/material.dart';

class Compliance extends StatelessWidget {
  ValueNotifier<double> notifier = ValueNotifier(0.0);

  Widget build(BuildContext context) {
    return SpinBox(
      min: 1.0,
      max: 120.0,
      value: 20.0,
      decimals: 0,
      step: 1.0,
      decoration: InputDecoration(labelText: 'Compliance (mL/cmH\u2082O)'),
      onChanged: (value) => notifier.value = value,
    );
  }
}
