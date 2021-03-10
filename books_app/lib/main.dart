import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// responsible call for launching the application
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter app', //displayed in recent apps (mobile) and tabs titles (web)
      theme: ThemeData(primarySwatch: Colors.red),
      home: FirstScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  var image = Image.asset('images/nyt_placeholder.png', width: 200, height: 200);
  var image2 = Image.asset('images/nyt_title.jpg', width: 200, height: 200);
  var displayedImage = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First screen ever')),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.edit_outlined),
          onPressed: () {
            if (displayedImage == 1) {
              setState(() {
                displayedImage = 2;
              });
            } else {
              setState(() {
                displayedImage = 1;
              });
            }
            print('changed');
          }),
      body: Container(
        color: Colors.grey,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (displayedImage == 1) image else image2,
            ],
          ),
        ),
      ),
    );
  }
}
