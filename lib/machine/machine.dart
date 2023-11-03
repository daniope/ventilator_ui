import 'package:flutter/material.dart';

import 'package:ventilator_ui/machine/basics.dart';
import 'package:ventilator_ui/machine/pcv.dart';

class Machine extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
      children: [
        Basics(),
        PCV(),
      ],
    );
  }
}
