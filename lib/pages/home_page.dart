import 'package:flutter/material.dart';

import 'package:flutter_binary_simple_app/widgets/switch_button.dart';
import 'package:flutter_binary_simple_app/widgets/value_stepper.dart';

class HomePage extends StatefulWidget {
  final String title;

  HomePage({this.title});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SwitchButton(
                labels: ['Buy', 'Sell'],
                callback: (int index) => print(index),
              ),
            ),
            ValueStepper(
              initialValue: 1000,
              prefix: '\$',
              stepSize: 100,
              callback: (value) => print(value),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
      ),
    );
  }
}
