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
      theme: ThemeData(primarySwatch: Colors.blue),
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
      appBar: AppBar(
        centerTitle: true,
          title: Text(
        'Hardcover Fiction Books',
      )),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.edit_outlined),
          onPressed: () {
            print('pressed');
            _loadBooks();
          }),
      body: Container(
        color: Color(0xFFF4F3EF),
        child: _books != null
            ? ListView.separated(
                itemCount: _books.results.length,
                itemBuilder: (context, index) => _getBookView(_books.results[index]),
                separatorBuilder: (BuildContext context, int index) => Divider(indent: 20, endIndent: 20),
              )
            : Center(
                child: Image.asset('images/nyt_title.jpg'),
              ),
      ),
    );
  }

  Widget _getBookView(Book book) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            child: Image.network(book.bookImage, height: 150),
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '#'+book.rank.toString()+' '+book.title,
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  'By ' + book.author,
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
                SizedBox(height: 20),
                Text(book.description, style: TextStyle(fontSize: 12)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
