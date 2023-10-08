import 'package:flutter/material.dart';

import 'package:ventilator_ui/lung/lung.dart';
import 'package:ventilator_ui/ventilator/pcv.dart';
import 'package:ventilator_ui/ventilator/ventilator.dart';

class SideBar extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
      children: [
        Lung(),
        Ventilator(),
      ],
    );
  }
}
