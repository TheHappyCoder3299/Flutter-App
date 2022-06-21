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
  List<BottomNavigationBarItem> _list = [];
  int _currentIndex = 0;
  void _onTap(int i) => setState(() => _currentIndex = i);
  @override
  void initState() {
    // TODO: implement initState

    _list.add(
        BottomNavigationBarItem(icon: Icon(Icons.message), label: "message"));
    _list.add(
        BottomNavigationBarItem(icon: Icon(Icons.local_pizza), label: "pizza"));
    _list.add(BottomNavigationBarItem(icon: Icon(Icons.piano), label: "piano"));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Anwit's flutter app")),
      bottomNavigationBar: BottomNavigationBar(
          items: _list, currentIndex: _currentIndex, onTap: _onTap),
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
            children: <Widget>[Text("hello world")],
          ),
        ),
      ),
    );
  }
}
