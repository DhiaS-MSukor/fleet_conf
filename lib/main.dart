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
      Axle(1, false, false),
      Axle(2, true, false),
      Axle(3, true, true),
      Axle(4, false, true),
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
            _fleet.showConfs(), 
            _fleet.showDetails(),
          ],
        )));
  }
}
