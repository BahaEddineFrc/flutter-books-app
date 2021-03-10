import 'package:books_app/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'book.dart';

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
  BookList _books;

  _loadBooks() async {
    BookList books = await getBooks();
    setState(() {
      _books = books;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First screen ever')),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.edit_outlined),
          onPressed: () {
            print('pressed');
            _loadBooks();
          }),
      body: Container(
        color: Colors.grey,
        child: _books != null
            ? ListView.builder(
                itemCount: _books.results.length,
                itemBuilder: (context, index) => _getBookView(_books.results[index]),
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }

  Widget _getBookView(Book book) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: Image.network(book.bookImage,),
          ),
          Expanded(
            child: Column(
              children: [
                Text('Title : '+book.title),
                Text('Description : '+book.description),
                Text('By : '+book.author),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
