import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'dart:math' as math;

class Chart extends StatelessWidget {
  int time = 19;
  late ChartSeriesController _chartSeriesController;

  Widget build(BuildContext context) {
    return SfCartesianChart(
      series: <LineSeries<LiveData, int>>[
        LineSeries<LiveData, int>(
          onRendererCreated: (ChartSeriesController controller) {
            _chartSeriesController = controller;
          },
          dataSource: chartData,
          color: const Color.fromRGBO(192, 108, 132, 1),
          xValueMapper: (LiveData sales, _) => sales.time,
          yValueMapper: (LiveData sales, _) => sales.speed,
        ),
      ],
      primaryXAxis: NumericAxis(
        majorGridLines: const MajorGridLines(width: 0),
        edgeLabelPlacement: EdgeLabelPlacement.shift,
        interval: 3,
        title: AxisTitle(text: 'Time (seconds)'),
      ),
      primaryYAxis: NumericAxis(
        axisLine: const AxisLine(width: 0),
        majorTickLines: const MajorTickLines(size: 0),
        title: AxisTitle(text: 'Internet speed (Mbps)'),
      ),
    );
  }

  void updateDataSource() {
    chartData.add(LiveData(time++, (math.Random().nextInt(60) + 30)));
    chartData.removeAt(0);
    _chartSeriesController.updateDataSource(
      addedDataIndex: chartData.length - 1, removedDataIndex: 0
    );
  }
}

List<LiveData> chartData = <LiveData>[
  LiveData(0,10),
  LiveData(1,42),
  LiveData(2,42),
  LiveData(3,42),
  LiveData(4,42),
  LiveData(5,42),
  LiveData(6,42),
  LiveData(7,42),
  LiveData(8,42),
  LiveData(9,42),
];

class LiveData {
  LiveData(this.time, this.speed);
  final int time;
  final num speed;
}
