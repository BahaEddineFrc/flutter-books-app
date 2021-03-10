import 'dart:convert';
import 'package:http/http.dart' as http;

  Future<String> fetchJoke() async {
    var response = await http.get("https://api.chucknorris.io/jokes/random?category=dev");
    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      return jsonResponse['value'];
    } else {
      return ("Unexpected error occurred.");
    }
  }
