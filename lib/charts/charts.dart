import 'package:flutter/material.dart';
import 'package:ventilator_ui/charts/chart.dart';

class Charts extends StatelessWidget {
  Chart pressureChart = new Chart();
  Chart flowChart = new Chart();
  Chart volumeChart = new Chart();

  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: pressureChart),
        Expanded(child: flowChart),
        Expanded(child: volumeChart),
      ],
    );
  }

  void updateDataSource(double pressure) {
    pressureChart.update(pressure);
    flowChart.update(0.0);
    volumeChart.update(0.0);
  }
}
