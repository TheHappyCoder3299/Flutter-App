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
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Card(
                  shadowColor: Color.fromARGB(250, 244, 4, 124),
                  child: Container(
                    padding: EdgeInsets.all(12.0),
                    child:
                        Column(children: [Text("Good morning"), Text("Anwit")]),
                  )),
              Card(
                  child: Container(
                padding: EdgeInsets.all(12.0),
                child: Column(children: [Text("Good morning"), Text("Anwit")]),
              )),
              Card(
                  child: Container(
                padding: EdgeInsets.all(12.0),
                child: Column(children: [Text("Good morning"), Text("Anwit")]),
              )),
              Card(
                  child: Container(
                padding: EdgeInsets.all(12.0),
                child: Column(children: [Text("Good morning"), Text("Anwit")]),
              )),
              Card(
                  child: Container(
                padding: EdgeInsets.all(12.0),
                child: Column(children: [Text("Good morning"), Text("Anwit")]),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
