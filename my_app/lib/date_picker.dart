import 'dart:html';

import 'package:flutter/material.dart';
import 'dart:core';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  String _value = "null";
  Future _selectDate() async {
    DateTime? dateTimePicked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2016),
        lastDate: DateTime(2025));

    if (dateTimePicked != null)
      setState(() {
        _value = dateTimePicked.toString();
      });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Anwit's flutter app")),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(_value),
              RaisedButton(onPressed: _selectDate, child: Text("Click me"))
            ],
          ),
        ),
      ),
    );
  }
}
