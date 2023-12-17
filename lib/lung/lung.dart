import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinbox/material.dart';

import 'package:ventilator_ui/spinbox/spinbox_compliance.dart';
import 'package:ventilator_ui/spinbox/spinbox_peep.dart';
import 'package:ventilator_ui/spinbox/spinbox_resistance.dart';

class Lung extends StatelessWidget {
  Compliance compliance = new Compliance();
  Resistance resistance = new Resistance();

  Widget build(BuildContext context) {
    return Column(
      children: [
        compliance,
        resistance,
      ],
    );
  }
}
