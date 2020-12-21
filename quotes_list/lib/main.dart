import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home: QuotesList(),
));

class QuotesList extends StatefulWidget {
  @override
  _QuotesListState createState() => _QuotesListState();
}
/*

class _QuotesListState extends State<QuotesList> {

  List<String> quotes = [
    'To rest is to rust.',
    'El que no arriesga, no gana',
    'When you feel like quiting, remember why you started.',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'Awesome Quotes',
          style: TextStyle(
              fontFamily: 'Caveat',//IMP: After adding new font style, make sure to rerun the app, hot restart won't work here
              fontSize: 30,
              fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: quotes.map((e) {//or simply use lambda function and write as (... => Text(e)).toList()
          return Text(
              e,
            style: TextStyle(
                fontFamily: 'Caveat',//IMP: After adding new font style, make sure to rerun the app, hot restart won't work here
                fontSize: 20,

            ),
          );
        }).toList(),
      ),
    );
  }
}
*/

// Tutorial 18 Now lets use classes for the same
//If some error comes on mobile, use manual hot reload button
/*
class _QuotesListState extends State<QuotesList> {

  List<Quote> quotes = [
    Quote(author: "George Santayana", text: "Those who do not learn history are doomed to repeat it"),
    Quote(author: "Zig Ziglar", text: "You don’t have to be great to start, but you have to start to be great."),
    Quote(author: "Chinese Proverb", text: "Distance tests a horse’s strength. Time reveals a person’s character."),
    Quote(author: "Chinese Proverb", text: "Do not afraid of moving slowly. Be afraid of standing still."),
    Quote(author: "Chinese Proverb", text: "The best time to plant a tree was 20 years ago. The second best time is now."),
    Quote(author: "Chinese Proverb", text: "Failure is not falling down but refusing to get up."),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'Awesome Quotes',
          style: TextStyle(
              fontFamily: 'Caveat',//IMP: After adding new font style, make sure to rerun the app, hot restart won't work here
              fontSize: 30,
              fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: quotes.map((e) {//or simply use lambda function and write as (... => Text(e)).toList()
          return Text(
            '${e.text} - ${e.author}\n',
            style: TextStyle(
              fontFamily: 'Caveat',//IMP: After adding new font style, make sure to rerun the app, hot restart won't work here
              fontSize: 20,
            ),
          );
        }).toList(),
      ),
    );
  }
}
*/

//Tutorial 19 Using Cards
class _QuotesListState extends State<QuotesList> {

  List<Quote> quotes = [
    Quote(author: "George Santayana", text: "Those who do not learn history are doomed to repeat it"),
    Quote(author: "Zig Ziglar", text: "You don’t have to be great to start, but you have to start to be great."),
    Quote(author: "Chinese Proverb", text: "Distance tests a horse’s strength. Time reveals a person’s character."),
    Quote(author: "Chinese Proverb", text: "Do not afraid of moving slowly. Be afraid of standing still."),
    Quote(author: "Chinese Proverb", text: "The best time to plant a tree was 20 years ago. The second best time is now."),
    Quote(author: "Chinese Proverb", text: "Failure is not falling down but refusing to get up."),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'Awesome Quotes',
          style: TextStyle(
              fontFamily: 'Caveat',//IMP: After adding new font style, make sure to rerun the app, hot restart won't work here
              fontSize: 30,
              fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: quotes.map((e) => QuoteCardGenerator(
            quote: e,
          delete : () {
              setState(() {
                quotes.remove(e);
              });
          }
        )).toList(),
      ),

    );
  }
}
