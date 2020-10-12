import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;

  QuoteCard({this.quote});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 20.0,
                // fontWeight: FontWeight.bold,
                color: Colors.grey[600],
              ),
            ),
            Text(
              '– ${quote.author}',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey[900],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
