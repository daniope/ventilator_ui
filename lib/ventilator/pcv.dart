import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinbox/material.dart';

import 'package:ventilator_ui/spinbox/spinbox_peak_pressure.dart';

class PCV extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
      children: [
        PeakPressure(),
      ],
    );
  }
}
