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
  Future _showAlert(BuildContext context, String alertMessage) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Sure you want to exit ?"),
            actions: <Widget>[
              FlatButton(
                  onPressed: () => Navigator.pop(context), child: Text("Ok"))
            ],
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
                onPressed: () => _showAlert(context, "Do you want to exit ?"),
                child: Text("Exit"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
