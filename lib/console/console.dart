import 'package:flutter/material.dart';

import 'package:ventilator_ui/lung/lung.dart';
import 'package:ventilator_ui/machine/machine.dart';

class Console extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
      children: [
        Lung(),
        Machine(),
      ],
    );
  }
}
