import 'package:flutter/material.dart';

import 'dart:async';
import 'dart:io' show Directory, Platform;
import 'dart:math' as math;

import 'package:collection/collection.dart';
import 'package:path/path.dart' as path;

import 'package:ventilator_ui/console/console.dart';
import 'package:ventilator_ui/charts/charts.dart';
import 'package:ventilator_ui/ventilation/ventilation.dart';

const String _libName = 'ventilation';
const String _libPath = 'ventilation-c/build/lib$_libName.so';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ventilator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Ventilator Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Timer? timer;
  late final Ventilation _v;

  late final List<double> _pb;

  final Console console = new Console(); 
  final Charts charts = new Charts();

  _MyHomePageState() {
    _v = Ventilation.create(_libPath);
    _pb = [];
    timer = Timer.periodic(
      const Duration(microseconds: 10),
      _updateDataSource
    );
  }

  @override
  void dispose() {
    timer?.cancel;
    _v.delete();
    super.dispose();
  }

  void _updateDataSource(Timer timer) {
    _v.update();
    double p = _v.getPressure();
    _pb.add(p);

    if (_pb.length == 1000) {
      var pMean = _pb.average;
      _pb.clear();

      charts.updateDataSource(pMean);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: Row(
          children: [
            Expanded(
              child: console,
              flex: 2,
            ),
            Expanded(
              child: charts,
              flex: 8,
            ),
          ],
        ),
      ),
    );
  }
}
