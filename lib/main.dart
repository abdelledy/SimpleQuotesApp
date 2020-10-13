import 'package:flutter/material.dart';
import 'quote.dart';
import 'quotecard.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Quote> quotes = [
    Quote(author: ' Khalifatul Masih', text: 'Love For All, Hatred For None.'),
    Quote(author: 'Amy Poehler', text: 'Change the world by being yourself.'),
    Quote(author: 'T.S Eliot', text: 'Every moment is a fresh beginning.')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, quote) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: quotes
                    .map(
                      (quote) => QuoteCard(
                        quote: quote,
                        delete: () {
                          setState(() {
                            quotes.remove(quote);
                          });
                        },
                      ),
                    )
                    .toList(),
              );
            }),
      ),
    );
  }
}
