class Book{
  int rank;
  String title;
  String author;
  String description;
  String bookImage;

  Book({
    this.rank,
    this.title,
    this.author,
    this.description,
    this.bookImage,
  });

  /// get model object from Json
  Book.fromJson(Map<String, dynamic> json) {
    rank = json['rank'];
    title = json['title'];
    author = json['author'];
    description = json['description'];
    bookImage = json['book_image'];
  }

  @override
  String toString() {
    return 'Book{rank: $rank, title: $title}';
  }
}

/// a List of books
class BookList {
  List<Book> results;
  List<dynamic> rawData;
  dynamic error;

  BookList({this.results, this.rawData, this.error});

  /// get List from Json
  BookList.fromJson(List<dynamic> json) {
    if (json != null) {
      results = List<Book>();
      rawData = json;
      results = (json).map((i) => Book.fromJson(i)).toList();
    }
  }
}
