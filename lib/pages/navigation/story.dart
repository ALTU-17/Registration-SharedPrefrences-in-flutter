import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Story'),
    ),

    body:
      new Container(
        margin: const EdgeInsets.only(left: 16.0, top: 80.0,bottom: 8.0),
        child: new Text('Event Categries',
          style: new TextStyle(
            fontSize: 15.0,
          ),
        ),
      ),

    // body: Center(child: Text('Story',style: TextStyle(fontSize: 60))),

  );

}




// body:SingleChildScrollView(
// scrollDirection: Axis.horizontal,
// child: Text(
// "GeeksForGeeks : Learn Anything, Anywhere, ALTU , 123",
// style: TextStyle(
// color: Colors.green,
// fontWeight: FontWeight.bold,
// fontSize: 20.0,
// ),
// ),
// ),