import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Quote.dart';
import 'QuoteCard.dart';

void main() {
  runApp(MaterialApp(
    home: Quotes(),
  ));
}

class Quotes extends StatefulWidget {
  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  List<Quote> quotes = [
    Quote(author: 'nissan', text: 'why this kolaberi'),
    Quote(author: 'anik', text: 'kolaberi de'),
    Quote(author: 'Indrajeet', text: 'White screen e goole')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('Quote App'),
        centerTitle : true,
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: quotes.map((quote){
          return QuoteCard(
            quote: quote,
            delete: () {
              setState(() {
                quotes.remove(quote);
              });
            }
          );
      }).toList(),
      ),
    );
  }
}

