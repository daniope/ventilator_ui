import 'package:flutter/material.dart';

import 'package:ventilator_ui/lung/lung.dart';
import 'package:ventilator_ui/machine/machine.dart';

class Console extends StatelessWidget {
  ValueNotifier<int> notifier = ValueNotifier(0);
  Lung lung = new Lung();

  Widget build(BuildContext context) {
    return Column(
      children: [
        lung,
        Machine(),
      ],
    );
  }
}
