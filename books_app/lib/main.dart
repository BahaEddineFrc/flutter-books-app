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

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var image = Image.asset('images/nyt_placeholder.png', width: 200, height: 200);
    var image2 = Image.asset('images/nyt_title.jpg', width: 200, height: 200);
    var displayedImage = image;
    return Scaffold(
      appBar: AppBar(title: Text('First screen ever')),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.edit_outlined),
          onPressed: () {
            if (displayedImage == image) {
              displayedImage = image2;
            } else {
              displayedImage = image;
            }
            print('changed');
          }),
      body: Container(
        color: Colors.grey,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              displayedImage,
            ],
          ),
        ),
      ),
    );
  }
}
