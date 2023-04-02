import 'package:flutter/material.dart';

import 'package:ventilator_ui/lung/lung.dart';

class SideBar extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
      children: [
        Lung(),
      ],
    );
  }
}
