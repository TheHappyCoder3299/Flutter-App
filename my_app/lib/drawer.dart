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
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Anwit's flutter app")),
      drawer: Drawer(
        child: Container(
            padding: EdgeInsets.all(32.0),
            child: Column(children: <Widget>[
              Text("Welcome to your drawer"),
              RaisedButton(
                onPressed: () => Navigator.pop(context),
                child: Text("Close"),
              )
            ])),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[Text("Body area")],
          ),
        ),
      ),
    );
  }
}
