import 'package:flutter/material.dart';
import 'Quote.dart';
import 'quote_cards.dart';

void main() => runApp(MaterialApp(
      home: CardDemo(),
    ));

class CardDemo extends StatefulWidget {
  @override
  _CardDemoState createState() => _CardDemoState();
}

class _CardDemoState extends State<CardDemo> {
  List<Quote> quotes = [
    Quote(text: 'text1', author: 'author1'),
    Quote(text: 'text2', author: 'author2'),
    Quote(text: 'text3', author: 'author3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Demo'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: quotes
            .map((quote) => QuoteCard(
                  quote: quote,
                  delete: () {
                    setState(() {
                      quotes.remove(quote);
                    });
                  },
                ))
            .toList(),
      ),
    );
  }
}
