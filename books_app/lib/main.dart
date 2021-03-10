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
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 200,
                    color: Colors.blue[100],
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 200,
                    color: Colors.blue[300],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 200,
                    color: Colors.blue[500],
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 200,
                    color: Colors.blue[700],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 200,
                    color: Colors.blue[200],
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 200,
                    color: Colors.blue[400],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 200,
                    color: Colors.blue[600],
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 200,
                    color: Colors.blue[800],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
