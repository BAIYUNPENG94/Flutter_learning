import 'package:flutter/material.dart';
import 'Quote.dart';

class QuoteCard extends StatelessWidget {
  Quote quote;
  Function delete;
  QuoteCard({this.quote, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 0.0),
        child: Column(
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                FlatButton.icon(
                    onPressed: delete,
                    icon: Icon(Icons.delete),
                    label: Text('Delete quote')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
