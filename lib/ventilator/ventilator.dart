import 'package:flutter/material.dart';

import 'package:ventilator_ui/spinbox/spinbox_peak_pressure.dart';
import 'package:ventilator_ui/spinbox/spinbox_peep.dart';
import 'package:ventilator_ui/spinbox/spinbox_respiratory_rate.dart';

class Ventilator extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          child: PEEP(),
          padding: const EdgeInsets.all(16),
        ),
        Padding(
          child: PeakPressure(),
          padding: const EdgeInsets.all(16),
        ),
        Padding(
          child: RespiratoryRate(),
          padding: const EdgeInsets.all(16),
        ),
      ],
    );
  }
}
