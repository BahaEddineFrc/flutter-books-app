import 'dart:html';

import 'package:flutter/material.dart';

/// responsible call for launching the application
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo', //displayed in recent apps (mobile) and tabs titles (web)
      theme: ThemeData(primarySwatch: Colors.red),
      home: FirstScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First screen ever')),
      body: Container(
        padding: EdgeInsets.all(10),
        color: Colors.yellow,
        child: Container(
          color: Colors.blue,
          child: Container(
            margin: EdgeInsets.all(30),
            padding: EdgeInsets.all(40),
            color: Colors.orange,
            child: Container(
              color: Colors.blueGrey,
              child: Padding(
                padding: EdgeInsets.all(60),
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.white,
                  child: Text('some random containers'),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
