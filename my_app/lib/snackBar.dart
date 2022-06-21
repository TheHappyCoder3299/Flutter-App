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
  //_scaffoldState is the key that references the our Scaffold
  final GlobalKey<ScaffoldState> _scaffoldState =
      new GlobalKey<ScaffoldState>();

  void _showSnackBar() {
    // _scaffoldState.currentState
    //     .showSnackBar(new SnackBar(content: Text("Snack Bar")));
    _scaffoldState.currentState
        ?.showSnackBar(SnackBar(content: Text("Snack bar")));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: _scaffoldState,
      appBar: AppBar(title: Text("Anwit's flutter app")),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text("hello world"),
              RaisedButton(
                onPressed: _showSnackBar,
                child: Text("show snack bar"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
