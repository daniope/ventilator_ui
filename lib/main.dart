import 'package:flutter/material.dart';

import 'package:ventilator_ui/sidebar/sidebar.dart';
import 'package:ventilator_ui/charts/chart.dart';
import 'package:ventilator_ui/charts/charts.dart';

import 'dart:async';
import 'dart:math' as math;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  final Charts charts = new Charts();

  @override
  void initState() {
    Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        charts.updateDataSource(timer);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(child: SideBar()),
          Expanded(child: charts),
        ],
      ),
    );
  }
}
