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

enum Answers { YES, NO, MAYBE }

class _State extends State<MyApp> {
  String _value = "null";
  void _setValue(String value) => setState(() => _value = value);
  Future _askUser() async {
    switch (await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: Text("Do you like Flutter ?"),
            children: [
              SimpleDialogOption(
                  onPressed: () => Navigator.pop(context, Answers.YES),
                  child: Text("Yes")),
              SimpleDialogOption(
                  onPressed: () => Navigator.pop(context, Answers.NO),
                  child: Text("No")),
              SimpleDialogOption(
                  onPressed: () => Navigator.pop(context, Answers.MAYBE),
                  child: Text("Maybe"))
            ],
          );
        })) {
      case Answers.YES:
        _setValue("Yes");
        break;
      case Answers.NO:
        _setValue("No");
        break;
      case Answers.MAYBE:
        _setValue("Maybe");
        break;
    }
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
              RaisedButton(
                onPressed: _askUser,
                child: Text("Click me"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
