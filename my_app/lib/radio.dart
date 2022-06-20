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
  int? _groupValue1 = 0;
  int? _groupValue2 = 0;
  void _onChanged1(int? value) => setState(() => _groupValue1 = value);
  void _onChanged2(int? value) => setState(() => _groupValue2 = value);
  Column makeRadios(int noOfRadios) {
    List<Widget> list = [];

    for (int i = 0; i < noOfRadios; i++) {
      list.add(
          Radio(value: i, groupValue: _groupValue1, onChanged: _onChanged1));
    }

    Column column = new Column(children: list);
    return column;
  }

  Column makeRadioListTiles(int noOfRadios) {
    List<Widget> list = [];

    for (int i = 0; i < noOfRadios; i++) {
      list.add(RadioListTile(
        value: i,
        groupValue: _groupValue2,
        onChanged: _onChanged2,
        title: Text("Task number : ${i}"),
        subtitle: Text("Subtitle for task ${i}"),
        controlAffinity: ListTileControlAffinity.trailing,
      ));
    }

    Column column = new Column(children: list);
    return column;
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
            children: <Widget>[makeRadios(5), makeRadioListTiles(3)],
          ),
        ),
      ),
    );
  }
}
