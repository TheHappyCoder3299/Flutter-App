import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  String _value = "null";
  void _onPressed(String s) => setState(() => _value = s);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Anwit's flutter app")),
      persistentFooterButtons: <Widget>[
        IconButton(
            onPressed: () => _onPressed("Button 1"),
            icon: Icon(Icons.local_pizza)),
        IconButton(
            onPressed: () => _onPressed("Button 2"), icon: Icon(Icons.piano)),
        IconButton(
            onPressed: () => _onPressed("Button 3"), icon: Icon(Icons.mail)),
        IconButton(
            onPressed: () => _onPressed("Button 4"), icon: Icon(Icons.camera)),
      ],
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[Text(_value)],
          ),
        ),
      ),
    );
  }
}
