import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Solid Software',
      home: MyTestTask(),
    );
  }
}

class MyTestTask extends StatefulWidget {
  MyTestTask({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyTestTaskState createState() => _MyTestTaskState();
}

class _MyTestTaskState extends State<MyTestTask> {
  int _color = 0xFF42A5F5;

  void _changeBackgroundColor() {
    setState(() {
      var random = new Random();
      var opacity = 255;
      var r = random.nextInt(256);
      var g = random.nextInt(256);
      var b = random.nextInt(256);
      _color = (opacity << 24) + (r << 16) + (g << 8) + b;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Text('I want a job at Solid Software'),
      color: Color(_color),
      onPressed: _changeBackgroundColor,
    );
  }
}
