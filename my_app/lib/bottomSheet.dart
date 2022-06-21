// import 'dart:ffi';
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
  void _showBottomSheet() {
    showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) {
          return Container(
            padding: EdgeInsets.all(20),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              RaisedButton(
                  onPressed: () => Navigator.pop(context), child: Text("Close"))
            ]),
          );
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
              Text("hello world"),
              RaisedButton(
                onPressed: _showBottomSheet,
                child: Text("Click me"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
