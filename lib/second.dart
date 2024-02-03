import 'package:flutter/material.dart';

class BuyNowPage extends StatelessWidget {
  final String coverImage;
  final String bookName;
  final String authorName;
  final String shortDescription;
  final String price;

  BuyNowPage({
    required this.coverImage,
    required this.bookName,
    required this.authorName,
    required this.shortDescription,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buy Now'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Image.asset(coverImage, height: 240, width: 220),
            Text(bookName),
            Text(authorName),
            Text(price),
            Text(shortDescription), 



            DropdownButton<String>(
              hint: Text('Buying From'),
              items: <String>['Turkey','UK','USA','Bangladesh','Canada','China','India']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {},
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
