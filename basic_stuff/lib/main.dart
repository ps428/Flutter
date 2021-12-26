import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';//for toast
void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {//returning a container widget earlier...now cut paste code from above and returnscaffold
    return Scaffold(
      backgroundColor: Colors.white24,
      appBar: AppBar(
        title: Text(
            "Basic App",
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Caveat',
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,

        backgroundColor: Colors.amberAccent,//setting bg colour
      ),

/*
      body: Center(
        */
/*child: Text(//adding image now instead of text
          "Hola! Mucho Gusto",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 3.0,
            color:  Colors.amberAccent,
            fontFamily: 'Caveat',
          ),
        ),*//*

       */
/* child: Image(
          //make sure to give internet permissions and have internet access on both mobile and pc
          // Using internet. Paste link below
          //image: NetworkImage('https://images.unsplash.com/photo-1607969391576-48f9021ded30?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1fHx8ZW58MHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),//URL of image
          //image: NetworkImage('https://images.unsplash.com/photo-1607979065841-c79d3b2acfa9?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNDZ8fHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),

          //using local images
          //got some error previously... try to re-run the app instead of hot restart
          //just like for fonts make a dir and add those images there and then add the permission in the pubspec.yaml file
          image: AssetImage('assets/image1.jpg'),
          
          //see more simple way below
        ),*//*


        //So far the quickest way to add image

        //local image
        //child: Image.asset('assets/image1.jpg'),

        //via web not working
        //working now...add .network instead of .asset
        //child: Image.network('https://images.unsplash.com/photo-1607969391576-48f9021ded30?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1fHx8ZW58MHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),//URL of image

        //video 9 Buttons and Icons

        */
/*child: Icon(
          Icons.backpack,
          color: Colors.blueAccent,
          size: 50,
        ),*//*


        */
/*child: RaisedButton(//can also add a FlatButton that is not raised...no shadow
          onPressed: () {//necessary
            print('Raised Button pressed');

            //todo getting problem with this
            *//*
*/
/*Fluttertoast.showToast(
                msg: "This is Center Short Toast",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.green,
                fontSize: 16.0
            );*//*
*/
/*
          },
          child: Text(
            'Click here',
            style: TextStyle(
              letterSpacing: 3.0,
              fontWeight: FontWeight.bold,
              color:  Colors.red,
              fontFamily: 'Caveat',
            ),
          ),
          color: Colors.lightBlue,
        ),
*//*

        */
/*child: RaisedButton.icon(
          onPressed: () {},
          icon: Icon(
            Icons.audiotrack_outlined,
            color: Colors.blueAccent,
            size: 50,

          ),

          label: Text('Play Music'),
          color: Colors.amber,
        ),*//*

*/
/*

        child: IconButton(
          onPressed: () {},
          icon: Icon(
              Icons.whatshot,
              color: Colors.blue,
              size: 50,
          ),
          color: Colors.amberAccent,
        ),
*//*


      //video 10 container and padding...eed to make body: Container instead of Center


      ),
*/
      //looks good
      /*body: Container(
        color: Colors.black38,
        padding: EdgeInsets.all(12),//text and ext box difference..inside the container
        margin: EdgeInsets.all(12),//text box and screen's difference...around the container
        child: Text(
          'Hakunana Matata',
          style: TextStyle(
            color: Colors.amberAccent,
            fontSize: 30,
            fontFamily: 'Caveat'
          ),
        ),
      ),*/

      //padding only..no container
     /* body: Padding(//can't apply colour and margin to a padding widget
        padding: EdgeInsets.all(20),
        child: Text(
          'Hakunana Matata',
          style: TextStyle(
          color: Colors.amberAccent,
          fontSize: 30,
          fontFamily: 'Caveat'
        ),
      ),
      ),*/

      //Using Row and Column widgets
      //Video 11 Row Widgets
      //We can have more than one child inside a row...stored as children linked list
      /*body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,//end of te biggest row element
        children: <Widget>[
          Text(
              "Ni hao",
              style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 15,
                fontFamily: 'Caveat'
              ),
      ),
          RaisedButton(
              onPressed:  () {},
              color: Colors.amberAccent,
            child: Icon(
              Icons.whatshot,
              color: Colors.blue,
              size: 50,
            ),
          ),
          Container(
            color: Colors.white12,
            padding: EdgeInsets.all(12),
            child:  Text(
                "Hola! Mucho Gusto",
                style: TextStyle(
                    color: Colors.amberAccent,
                    fontSize: 15,
                    fontFamily: 'Caveat'
                ),
          )
          )
      ]
      ),
*/
     /* body: Column(//exact same thing as above
        //IMPORTANT: WE CAN HAVE ROW INSIDE A COLUMNS AND VICE VERSA
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Ni hao",
              style: TextStyle(
                  color: Colors.amberAccent,
                  fontSize: 15,
                  fontFamily: 'Caveat'
              ),
            ),
            RaisedButton(
              onPressed:  () {},
              color: Colors.amberAccent,
              child: Icon(
                Icons.whatshot,
                color: Colors.blue,
                size: 50,
              ),
            ),
            Container(
                color: Colors.white12,
                padding: EdgeInsets.all(12),
                child:  Text(
                  "Hola! Mucho Gusto",
                  style: TextStyle(
                      color: Colors.amberAccent,
                      fontSize: 15,
                      fontFamily: 'Caveat'
                  ),
                )
            )
          ]
      ),
*/
      //video 13 is about shortcuts and benefits of yellow balloon
      //video 14 about exapanded widgets...taking up all space
      body: Row(
        //IMPORTANT: WE CAN HAVE ROW INSIDE A COLUMNS AND VICE VERSA
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 3,//ratio allotated to this one
              child: Text(
                "Ni hao",
                style: TextStyle(
                    color: Colors.amberAccent,
                    fontSize: 15,
                    fontFamily: 'Caveat'
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: RaisedButton(
                onPressed:  () {},
                color: Colors.amberAccent,
                child: Icon(
                  Icons.whatshot,
                  color: Colors.blue,
                  size: 50,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                  color: Colors.white12,
                  padding: EdgeInsets.all(12),
                  child:  Text(
                    "Hola! Mucho Gusto",
                    style: TextStyle(
                        color: Colors.amberAccent,
                        fontSize: 15,
                        fontFamily: 'Caveat'
                    ),
                  )
              ),
            ),

            //adding image as well...using expanded widget as dimensions of image are very large in comparision with the screen size
            Expanded(
                flex: 5,
                child: Image.asset('assets/image1.jpg')
            )
          ]
      ),

      floatingActionButton: FloatingActionButton(
        child: Text("Click"),
        foregroundColor: Colors.black,
        backgroundColor: Colors.amberAccent,//setting bg colour
      ),
    );
  }
}
