import 'package:flutter/material.dart';
import 'package:flutter_state_management/class3.dart';
import 'package:flutter_state_management/myCounter.dart';

class Class2 extends StatelessWidget {
  /*final MyCounter myCounter;
  Class2(this.myCounter);*/

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          "Class 2",
          style: Theme.of(context).textTheme.headline,
        ),
        Class3(),
      ],
    );
  }
}