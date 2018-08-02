import 'package:flutter/material.dart';
import 'package:flutter_state_management/class1.dart';
import 'package:flutter_state_management/class2.dart';
import 'package:flutter_state_management/count_provider.dart';
import 'package:flutter_state_management/myCounter.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var myCounter=new MyCounter(0);
  @override
  Widget build(BuildContext context) {
    return CounterProvider(
      myCounter:myCounter,
      child: Scaffold(
        appBar: new AppBar(
          title: new Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Class1(),
              Class2(),
              Padding(padding: EdgeInsets.only(top: 10.0),),
            ],
          ),
        ),
        floatingActionButton: new FloatingActionButton(
          onPressed: (){
            setState(() {
              myCounter.increaseCount();
            });
          },
          tooltip: 'Increment',
          child: new Icon(Icons.add),
        ),
      ),
    );
  }
}
