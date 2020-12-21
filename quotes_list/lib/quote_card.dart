import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCardGenerator extends StatelessWidget {

  final Quote quote;//making it final as stateless widget is there
  final Function delete;//a delete function that is defined where it is called
  QuoteCardGenerator({this.quote, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                  fontFamily: 'Caveat',//IMP: After adding new font style, make sure to rerun the app, hot restart won't work here
                  fontSize: 14,
                  color: Colors.grey[600]
              ),
            ),
            SizedBox(height: 6.0,),
            Text(
              quote.author,
              style: TextStyle(
                  fontFamily: 'Caveat',//IMP: After adding new font style, make sure to rerun the app, hot restart won't work here
                  fontSize: 12,
                  color: Colors.grey[800]
              ),
            ),
            SizedBox(height: 10.0,),
            RaisedButton.icon(
                onPressed: delete,
                label: Text('Delete quote'),
                icon: Icon(Icons.delete),

                )
          ],
        ),
      ),
    );
  }
}
