import 'package:flutter/material.dart';
import 'package:ventilator_ui/charts/chart.dart';

class Charts extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 100,
          child: TextField(
            decoration: InputDecoration(labelText: 'Compliance:')
          ),
        ),
        ElevatedButton(
          onPressed: () => print('PCV'),
          child: Text('PCV'),
        ),
      ],
    );
  }
}
