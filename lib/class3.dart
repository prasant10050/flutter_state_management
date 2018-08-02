import 'package:flutter/material.dart';
import 'package:flutter_state_management/count_provider.dart';
import 'package:flutter_state_management/myCounter.dart';

class Class3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    MyCounter myCounter=CounterProvider.of(context).myCounter;
    return Text(
      "Class 3 :${myCounter.counter}",
      style: Theme.of(context).textTheme.headline,
    );
  }
}
