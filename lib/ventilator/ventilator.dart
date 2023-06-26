import 'package:flutter/material.dart';

import 'package:ventilator_ui/spinbox/spinbox_peep.dart';

class Ventilator extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          child: PEEP(),
          padding: const EdgeInsets.all(16),
        ),
      ],
    );
  }
}
