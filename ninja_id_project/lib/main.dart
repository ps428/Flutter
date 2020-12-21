import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
  home: NinjaCard(),
));

/*class NinjaCard extends StatelessWidget {
  @override
  Widget build(BuildContext context)
  {return Scaffold(
    backgroundColor: Colors.grey[900],
    appBar: AppBar
      (title: Text(
      'Pirate ID Card',
      style: TextStyle(
          fontFamily: 'Caveat',//IMP: After adding new font style, make sure to rerun the app, hot restart won't work here
          fontSize: 30,
          fontWeight: FontWeight.bold
      ),
    ),
      centerTitle: true,
      backgroundColor: Colors.grey[850],
      elevation: 0.0,//makes it more flat
    ),
    body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/jack.jpeg'),
                radius: 40.0,

              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            Text(
              'Name',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
                fontFamily: 'Caveat',//IMP: After adding new font style, make sure to rerun the app, hot restart won't work here
              ),
            ),
            SizedBox(//to give some space...easier than padding
              height: 10,
            ),
            Text(
              'Jack Sparrow',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontFamily: 'Caveat',//IMP: After adding new font style, make sure to rerun the app, hot restart won't work here
                  fontSize: 28,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(//to give some space...easier than padding
              height: 30,
            ),
            Text(
              'Current Pirate Level',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
                fontFamily: 'Caveat',//IMP: After adding new font style, make sure to rerun the app, hot restart won't work here
              ),
            ),
            SizedBox(//to give some space...easier than padding
              height: 10,
            ),
            Text(
              '8',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontFamily: 'Caveat',//IMP: After adding new font style, make sure to rerun the app, hot restart won't work here
                  fontSize: 28,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(//to give some space...easier than padding
              height: 30,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                'jack.sparrow@potc.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18,
                    letterSpacing: 1
                  ),
              )
              ],
            )
          ],
        ),
    ),
  );
  }
}*/

//basic stateful widget...
/*
class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
*/

//direct way...just click on stateful widget on the balloon at stateless widget
class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int pirateLevel = 0;//by doing this, we are making pirate level a variable number

  @override
  Widget build(BuildContext context)
  {return Scaffold(
    backgroundColor: Colors.grey[900],
    appBar: AppBar
      (title: Text(
      'Pirate ID Card',
      style: TextStyle(
          fontFamily: 'Caveat',//IMP: After adding new font style, make sure to rerun the app, hot restart won't work here
          fontSize: 30,
          fontWeight: FontWeight.bold
      ),
    ),
      centerTitle: true,
      backgroundColor: Colors.grey[850],
      elevation: 0.0,//makes it more flat
    ),

    floatingActionButton: FloatingActionButton(
      onPressed: () {
        //pirateLevel += 1;//won't work
        setState(() {//use this to update values in Current Pirate level
          pirateLevel += 1;
        });
      },
      child: Icon(Icons.add),
      backgroundColor: Colors.grey[800],
    ),
    body: Padding(
      padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/jack.jpeg'),
              radius: 40.0,

            ),
          ),
          Divider(
            height: 60.0,
            color: Colors.grey[800],
          ),
          Text(
            'Name',
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0,
              fontFamily: 'Caveat',//IMP: After adding new font style, make sure to rerun the app, hot restart won't work here
            ),
          ),
          SizedBox(//to give some space...easier than padding
            height: 10,
          ),
          Text(
            'Jack Sparrow',
            style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontFamily: 'Caveat',//IMP: After adding new font style, make sure to rerun the app, hot restart won't work here
                fontSize: 28,
                fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(//to give some space...easier than padding
            height: 30,
          ),
          Text(
            'Current Pirate Level',
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0,
              fontFamily: 'Caveat',//IMP: After adding new font style, make sure to rerun the app, hot restart won't work here
            ),
          ),
          SizedBox(//to give some space...easier than padding
            height: 10,
          ),
          Text(
            //'8',
            '$pirateLevel',//using p  irateLevel here
            style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontFamily: 'Caveat',//IMP: After adding new font style, make sure to rerun the app, hot restart won't work here
                fontSize: 28,
                fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(//to give some space...easier than padding
            height: 30,
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.email,
                color: Colors.grey[400],
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'jack.sparrow@potc.com',
                style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18,
                    letterSpacing: 1
                ),
              )
            ],
          )
        ],
      ),
    ),
  );
  }
}