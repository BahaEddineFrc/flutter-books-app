import 'dart:convert';
import 'package:http/http.dart' as http;

import 'book.dart';

Future<String> getJoke() async {
  var response = await http.get("https://api.chucknorris.io/jokes/random?category=dev");
  if (response.statusCode == 200) {
    var jsonResponse = jsonDecode(response.body);
    return jsonResponse['value'];
  } else {
    return ("Unexpected error occurred.");
  }
}

Future getBooks() async {
  const String API_KEY = 'zuwSLbU4yB7m0Qc17dZ5CGzSGT1Z7AuG';
  var response = await http.get('https://api.nytimes.com/svc/books/v3/lists/current/hardcover-fiction.json?api-key=$API_KEY');
  if (response.statusCode == 200) {
    var jsonResponse = jsonDecode(response.body);
    return BookList.fromJson(jsonResponse['results']['books']);
  } else {
    print ("Unexpected error occurred.");
  }
}
