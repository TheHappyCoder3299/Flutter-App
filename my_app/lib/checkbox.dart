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
  bool? value1 = false;
  bool? value2 = false;
  void _onChanged1(bool? value) => setState(() => value1 = value);
  void _onChanged2(bool? value) => setState(() => value2 = value);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(title: new Text("Anwit's flutter app")),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text("hello world"),
              Checkbox(
                value: value1,
                onChanged: _onChanged1,
              ),
              CheckboxListTile(
                value: value2,
                onChanged: _onChanged2,
                title: Text("Task1"),
                controlAffinity: ListTileControlAffinity.leading,
                subtitle: Text("Pending task"),
                secondary: Icon(Icons.archive),
                activeColor: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
