import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {
  String _value = "null";
  String _value1 = "null";
  int _number = 0;
  void _add() {
    setState(() {
      _number++;
    });
  }

  void _onChanged(String textValue) {
    setState(() {
      _value1 = "Changed : ${textValue}";
    });
  }

  void _onSubmitted(String textValue) {
    setState(() {
      _value1 = "Submitted : ${textValue}";
    });
  }

  void _subtract() {
    setState(() {
      _number--;
    });
  }

  void _onPressed() {
    setState(() {
      _value = new DateTime.now().toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        title: Text("Anwit's Flutter App"),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(_value),
              RaisedButton(onPressed: _onPressed, child: Text("Click me")),
              FlatButton(onPressed: _onPressed, child: Text("Click me")),
              Text("Current value = ${_number}"),
              IconButton(onPressed: _add, icon: Icon(Icons.add)),
              IconButton(onPressed: _subtract, icon: Icon(Icons.remove)),
              Text(_value1),
              TextField(
                decoration: InputDecoration(
                    labelText: "Hello",
                    hintText: "Hint",
                    icon: Icon(Icons.people)),
                autocorrect: true,
                autofocus: true,
                keyboardType: TextInputType.number,
                onChanged: _onChanged,
                onSubmitted: _onSubmitted,
              )
            ],
          ),
        ),
      ),
    );
  }
}
