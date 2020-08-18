import 'package:flutter/material.dart';

import 'axle.dart';

class FleetBody {
  List<Axle> axles;

  FleetBody(this.axles);

  Widget showAxles() {
    return Container(
      child: Column(children: axles.map((e) => e.showAxle()).toList()),
      width: 200,
      decoration:
          BoxDecoration(border: Border.all(color: Colors.black, width: 5)),
    );
  }

  Widget showDetails() {
    return Column(children: axles.map((e) => e.showDetails()).toList());
  }
}
