import 'package:books_app/services.dart';
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
  String _joke = '';
  _loadJoke()async{
    var joke = await fetchJoke();
    setState(() {
      _joke=joke;
    });

    /*fetchJoke().then((value){
      print(value.toString());
      setState(() {
        _joke=value;
      });
    },onError: (e){
      print(e.toString());
    });*/
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('First screen ever')),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.edit_outlined),
          onPressed: () {
            print('pressed');
            _loadJoke();
          }),
      body: Container(
        color: Colors.grey,
        child: Center(
          child: Text(_joke),
        ),
      ),
    );
  }
}
