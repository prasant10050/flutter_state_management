import 'package:flutter/material.dart';
import 'package:flutter_state_management/myCounter.dart';

class CounterProvider extends InheritedWidget{
  final MyCounter myCounter;
  final Widget child;

  CounterProvider({this.myCounter, this.child}):super(child:child);
  static CounterProvider of(BuildContext context){
    return context.inheritFromWidgetOfExactType(CounterProvider);
  }

  @override
  bool updateShouldNotify(CounterProvider oldWidget) {
    // TODO: implement updateShouldNotify
    return myCounter!=oldWidget.myCounter;
  }

}