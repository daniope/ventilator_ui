import 'package:flutter/material.dart';

import 'package:ventilator_ui/spinbox/spinbox_peep.dart';
import 'package:ventilator_ui/spinbox/spinbox_ratio.dart';
import 'package:ventilator_ui/spinbox/spinbox_respiratory_rate.dart';

class Basics extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
      children: [
        PEEP(),
        RespiratoryRate(),
        Ratio(),
      ],
    );
  }
}
