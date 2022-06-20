import 'dart:html';

import 'package:flutter/material.dart';

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
  bool _value = false;
  bool _value1 = false;
  void _onChanged(bool value) => setState(() => _value = value);
  void _onChanged1(bool value) => setState(() => _value1 = value);
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
              Switch(value: _value, onChanged: _onChanged),
              SwitchListTile(
                value: _value1,
                onChanged: _onChanged1,
                controlAffinity: ListTileControlAffinity.leading,
                title: Text(
                  "this switch tile",
                  style: TextStyle(
                      color: Color.fromARGB(255, 37, 243, 33),
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
