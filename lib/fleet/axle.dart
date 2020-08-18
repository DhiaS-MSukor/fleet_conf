import 'package:flutter/material.dart';

class Axle {
  bool drive;
  bool doubleFit;
  String size;
  final position;

  Axle(this.position, this.drive, this.doubleFit, {this.size: ''});

  Widget _dummyAxle() {
    return Container(
      color: Colors.black,
      width: 100,
      height: 5,
    );
  }

  Widget _driveAxle() {
    return Stack(
      children: [
        _dummyAxle(),
        Container(
            width: 15,
            decoration:
                BoxDecoration(color: Colors.black, shape: BoxShape.circle))
      ],
      alignment: Alignment.center,
    );
  }

  Widget _singleFitTire() {
    return Container(
      color: Colors.black,
      width: 15,
      height: 50,
    );
  }

  Widget _doubleFitTire() {
    return Row(
      children: [_singleFitTire(), Container(width: 5), _singleFitTire()],
    );
  }

  Widget _axle({bool drive: false, bool doubleFit: false}) {
    return Container(
      child: Row(
        children: [
          doubleFit ? _doubleFitTire() : _singleFitTire(),
          drive ? _driveAxle() : _dummyAxle(),
          doubleFit ? _doubleFitTire() : _singleFitTire(),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
      height: 60,
    );
  }

  Widget showAxle() {
    return _axle(drive: drive, doubleFit: doubleFit);
  }

  Widget showDetails() {
    return Column(children: [
      Text('Position $position'),
      Row(children: [
        Row(children: [
          Text('Driven axle'),
          Switch(value: drive, onChanged: null)
        ]),
        Row(children: [
          Text('Double fit'),
          Switch(value: doubleFit, onChanged: null)
        ]),
      ]),
      Row(
        children: [],
      )
    ]);
  }
}
