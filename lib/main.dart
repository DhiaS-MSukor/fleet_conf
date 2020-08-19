import 'package:fleet_conf/fleet/axle.dart';
import 'package:flutter/material.dart';

import 'fleet/fleet.dart';
import 'fleet/fleetBody.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Fleet _fleet = Fleet('', [
    FleetBody([
      Axle(1),
      Axle(2, drive: true),
      Axle(3, drive: true, doubleFit: true),
      Axle(4, doubleFit: true),
    ]),
  ]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
            child: Row(
          children: [
            Container(width: 5),
            _fleet.showConfs(),
            Container(width: 5),
            _fleet.showDetails(),
          ],
        )));
  }
}
