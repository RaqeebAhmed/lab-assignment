import 'package:flutter/material.dart';
import 'second.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {  
    return MaterialApp(
      home: BookListPage(),
    );
  }
}
// This is the theme of your application.
//
// TRY THIS: Try running your application with "flutter run". You'll see
// the application has a purple toolbar. Then, without quitting the app,
// try changing the seedColor in the colorScheme below to Colors.green
// and then invoke "hot reload" (save your changes or press the "hot
// reload" button in a Flutter-supported IDE, or press "r" if you used
// the command line to start the app).
//
// Notice that the counter didn't reset back to zero; the application
// state is not lost during the reload. To reset the state, use hot
// restart instead.
//
// This works for code too, not just values: Most code changes can be
// tested with just a hot reload.

class BookListPage extends StatefulWidget {
  @override
  _BookListPageState createState() => _BookListPageState();
}

class _BookListPageState extends State<BookListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book List'),
      ),
      body: ListView(
        children: [
          BookCard(
            coverImage: 'assets/book1.jpg',
            bookName: 'Deep Work',
            authorName: 'Author: Cal Newport',
            rating: '4.9',
            price:
            'Price: 11 dollar',

            shortDescription:
            'Description: A productive book which lets anyone gain the expertise of doing stuff under pressure.',
          ),
          BookCard(
            coverImage: 'assets/book2.jpg',
            bookName: 'Atomic Habit',
            authorName: 'James Clear',
            rating: '4.8',
            price:
            'Price: 14 dollar',
            shortDescription:
            'Description: This awesome productive book helps anyone achieve the most amazing habit to do anything precisely.',
          ),
        ],
      ),
    );

    // This widget is the home page of your application. It is stateful, meaning
    // that it has a State object (defined below) that contains fields that affect
    // how it looks.

    // This class is the configuration for the state. It holds the values (in this
    // case the title) provided by the parent (in this case the App widget) and
    // used by the build method of the State. Fields in a Widget subclass are
    // always marked "final".
  }
}

class BookCard extends StatelessWidget {
  final String coverImage;
  final String bookName;
  final String authorName;
  final String rating;
  final String shortDescription;
  final String price;

  BookCard({
    required this.coverImage,
    required this.bookName,
    required this.authorName,
    required this.rating,
    required this.shortDescription,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset(coverImage, height: 180, width: 160),
          Text(bookName),
          Text(authorName),
          Text('Rating: $rating'),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BuyNowPage(
                    coverImage: coverImage,
                    bookName: bookName,
                    authorName: authorName,
                    shortDescription: shortDescription,
                    price: price,
                  ),
                ),
              );
            },
            icon: Icon(Icons.shopping_cart),
            label: Text('Buy Now'),
          ),
        ],
      ),
    );
  }
}
