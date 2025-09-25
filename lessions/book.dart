import 'author.dart';

class Book{
    final String title;
    final Author author;
    const Book({required this.title, required this.author});


    void showBookDetails(){
        print("Book: $title, Author: ${author.name}, Country: ${author.country}");
    }
}
