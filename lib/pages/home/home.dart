import 'package:flutter/material.dart';

import 'dart:async';

import 'package:ventilator_ui/charts/charts.dart';
import 'package:ventilator_ui/console/console.dart';
import 'package:ventilator_ui/ventilation/ventilation.dart';

import 'package:collection/collection.dart';

const String _libName = 'ventilation';
const String _libPath = 'ventilation-c/build/lib$_libName.so';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Timer? _timer;
  late final Ventilation _v;

  late final List<Sample> _sampleBuffer;

  final Console _console = new Console();
  final Charts _charts = new Charts();

  @override
  void initState() {
    _v = Ventilation.create(_libPath);
    _sampleBuffer = [];

    _timer = Timer.periodic(
      const Duration(microseconds: 10),
      _updateDataSource
    );
    
    _console.lung.compliance.notifier.addListener(
      () => _setCompliance(_console.lung.compliance.notifier.value)
    ); 

    super.initState();
  }

  void _setCompliance(double value) {
    _v.setCompliance(value);
  }

  void _updateDataSource(Timer timer) {
    _v.update();

    _sampleBuffer.add(_v.getSample());

    if (_sampleBuffer.length == 1000) {
      var pMean = _sampleBuffer.map((s) => s.item1).average;
      var fMean = _sampleBuffer.map((s) => s.item2).average;
      var vMean = _sampleBuffer.map((s) => s.item3).average;
      _sampleBuffer.clear();

      _charts.updateDataSource(pMean, fMean, vMean);
    }
  }

  void _set() {
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: Row(
          children: [
            Expanded(
              child: _console,
              flex: 2,
            ),
            Expanded(
              child: _charts,
              flex: 8,
            ),
          ],
        ),
      ),
    );
  }
}
