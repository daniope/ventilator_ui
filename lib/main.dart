import 'package:flutter/material.dart';

import 'package:ventilator_ui/console/console.dart';
import 'package:ventilator_ui/charts/charts.dart';
import 'package:ventilator_ui/ventilation/ventilation.dart';

import 'dart:async';
import 'dart:ffi' as ffi;
import 'dart:io' show Directory, Platform;
import 'dart:math' as math;

import 'package:ffi/ffi.dart';
import 'package:path/path.dart' as path;

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
  final Charts charts = new Charts();

  _MyHomePageState() {
    timer = Timer.periodic(
      const Duration(milliseconds: 100),
      _updateDataSource
    );
  }

  @override
  void dispose() {
    timer?.cancel;
    super.dispose();
  }

  void _updateDataSource(Timer timer) {
    charts.updateDataSource();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: Row(
          children: [
            Expanded(
              child: Console(),
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
