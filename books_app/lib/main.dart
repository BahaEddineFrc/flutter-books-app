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
        color: Colors.grey,
        child: Column(
          children: [
            Container(
              color: Colors.blue[100],
              height: 200,
            ),
            Container(
              color: Colors.blue[300],
              height: 200,
            ),
            Expanded(
              child: Container(
                color: Colors.blue[500],
                height: 200,
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.blue[700],
                height: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
