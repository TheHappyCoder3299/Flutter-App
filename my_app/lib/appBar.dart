import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp(), debugShowCheckedModeBanner: false));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  int _value = 0;
  void _add() => setState(() => _value++);
  void _remove() => setState(() => _value--);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Anwit's flutter app"),
        actions: <Widget>[
          IconButton(onPressed: _add, icon: Icon(Icons.add)),
          IconButton(onPressed: _remove, icon: Icon(Icons.remove)),
        ],
        backgroundColor: Colors.orange,
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[Text(_value.toString())],
          ),
        ),
      ),
    );
  }
}
