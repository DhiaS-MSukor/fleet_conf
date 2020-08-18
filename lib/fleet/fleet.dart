import 'package:flutter/material.dart';

import 'fleetBody.dart';

class Fleet {
  List<FleetBody> bodies;
  String name;

  Fleet(this.name, this.bodies);

  Widget showConfs() {
    var children = <Widget>[Icon(Icons.arrow_upward)];
    bodies.map((e) => children.add(e.showAxles())).toList();

    return Column(children: children);
  }

  Widget showDetails() {
    return Column(
      children: bodies.map((e) => e.showDetails()).toList(),
    );
  }
}
