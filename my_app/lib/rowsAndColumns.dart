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
  TextEditingController _username = new TextEditingController();
  TextEditingController _password = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Anwit's flutter app")),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(children: <Widget>[
            Text("Please enter your credentials"),
            Row(children: <Widget>[
              Text("Username : "),
              Expanded(child: TextField(controller: _username))
            ]),
            Row(children: <Widget>[
              Text("Password : "),
              Expanded(
                  child: TextField(
                controller: _password,
                obscureText: true,
              ))
            ]),
            Padding(
                padding: EdgeInsets.all(12.0),
                child: RaisedButton(
                    onPressed: () => print(
                        'Login by username : ${_username.text} and password : ${_password.text}'),
                    child: Text("Login")))
          ]),
        ),
      ),
    );
  }
}
