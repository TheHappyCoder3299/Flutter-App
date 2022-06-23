import 'dart:convert';
import 'dart:html';

import 'dart:io';
import 'package:http/http.dart' as http;

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
  void initState() {
    // TODO: implement initState
    print("Inside initState function");
    _getData();
  }

  Map _countries = new Map();
  //making this async because it is a network call
  void _getData() async {
    var uri = 'http://country.io/names.json';
    //response is a json object
    var response = await http.get(Uri.parse(uri));

    print(response.statusCode);
    if (response.statusCode == 200) {
      //json.decode takes in a json and converts it into a map
      setState(() => _countries = json.decode(response.body));
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    print(_countries);
    return Scaffold(
      appBar: AppBar(title: Text("Anwit's flutter app")),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text("List of Countries"),
              Expanded(
                child: ListView.builder(
                    itemCount: _countries.length,
                    itemBuilder: (BuildContext context, int index) {
                      String key = _countries.keys.elementAt(index);
                      return new Row(
                        children: <Widget>[
                          Card(child: Text('${key} : ${_countries[key]}'))
                        ],
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
