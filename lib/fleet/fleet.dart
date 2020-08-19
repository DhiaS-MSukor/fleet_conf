import 'package:flutter/material.dart';

import 'fleetBody.dart';

class Fleet {
  List<FleetBody> bodies;
  String name;

  Fleet(this.name, this.bodies);

  Widget showConfs() {
    List<Widget> children = [Icon(Icons.arrow_upward)];
    bodies.map((e) => children.add(e.showAxles())).toList();

    return Column(children: children);
  }

  Widget showDetails() {
    return Column(
      children: [
        Container(
            child: Column(children: [
              Row(children: [
                Container(
                    child: TextField(
                        decoration:
                            InputDecoration(labelText: 'Vehicle Brand')),
                    width: 150),
                Container(
                    child: TextField(
                        decoration: InputDecoration(labelText: 'Vehicle Type')),
                    width: 150),
                Container(
                    child: TextField(
                        decoration: InputDecoration(labelText: 'Body Type')),
                    width: 150),
                Container(
                    child: TextField(
                        decoration: InputDecoration(labelText: 'Cargo type')),
                    width: 150),
              ]),
              Row(children: [
                Container(
                    child: TextField(
                        decoration: InputDecoration(labelText: 'Width')),
                    width: 150),
                Container(
                    child: TextField(
                        decoration: InputDecoration(labelText: 'Height')),
                    width: 150),
                Container(
                    child: TextField(
                        decoration: InputDecoration(labelText: 'Length')),
                    width: 150),
                Container(
                    child: TextField(
                        decoration: InputDecoration(labelText: 'GVW')),
                    width: 150),
              ]),
            ]),
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.black))),
        Container(
          child: Column(children: bodies.map((e) => e.showDetails()).toList()),
          decoration:
              BoxDecoration(border: Border.all(color: Colors.black, width: 1)),
        ),
        RaisedButton(onPressed: null, child: Text('Add Body'))
      ],
    );
  }
}
