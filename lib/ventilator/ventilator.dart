import 'package:flutter/material.dart';

import 'package:ventilator_ui/ventilator/basics.dart';
import 'package:ventilator_ui/ventilator/pcv.dart';

class Ventilator extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
      children: [
        Basics(),
        PCV(),
      ],
    );
  }
}
