import 'package:flutter/material.dart';

class Aurangabad extends StatefulWidget {
  @override
  _AurangabadState createState() => _AurangabadState();
}

class _AurangabadState extends State<Aurangabad> {
  List<String> navBarItem = [
    "WEDDING EVENT",
    "CORPORAT EVENT",
    "SPORTS EVENT",
    "FAMILY EVENT",
    "EXIBITION",
    "FESTIVAL EVENTS",
    "SCHOOL/COLLEGS",
    "ENTERTAINMENT EVENTS",
    "DESTINATION WEDDINGS",
    "SOCIAL EVENTS"
  ];
  List<String> preAreaItem= [
    "BEED BY PASS",
    "CIDCO",
    "DEOLAI",
    "SHIVAJI NAGAR",
    "USMANPURA"
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text('Aurangabad'),
      ),
      body: ListView(children: <Widget>[
        new Container(
          margin: const EdgeInsets.only(left: 10.0, top: 10.0, bottom: 8.0),
          child: new Text(
            'Event Categries',
            style: new TextStyle(
              fontSize: 15.0,
            ),
          ),
        ),
        Container(
            height: 38,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: navBarItem.length,
                itemBuilder : (context , index){
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'wedding');
                    },

                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical : 10),
                      margin: EdgeInsets.symmetric(horizontal : 3.5),
                      decoration : BoxDecoration(
                          color: Colors.white10,
                          borderRadius : BorderRadius.circular(10)
                      ),

                      child : Center(
                        child: Text(
                            navBarItem[index] ,
                            style: TextStyle(
                              fontSize:15 ,
                              color: Colors.white,
                            )),
                      ),
                    ),
                  );
                }
            )
        ),
        new Container(
          margin: const EdgeInsets.only(left: 10.0, top: 10.0, bottom: 8.0),
          child: new Text(
            'Prefered Area',
            style: new TextStyle(
              fontSize: 15.0,
            ),
          ),
        ),
        Container(
            height: 38,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: preAreaItem.length,
                itemBuilder : (context , index){
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'wedding');
                    },

                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical : 10),
                      margin: EdgeInsets.symmetric(horizontal : 3.5),
                      decoration : BoxDecoration(
                          color: Colors.white10,
                          borderRadius : BorderRadius.circular(10)
                      ),

                      child : Center(
                        child: Text(
                            preAreaItem[index],
                            style: TextStyle(
                              fontSize:15 ,
                              color: Colors.white,
                            )),
                      ),
                    ),
                  );
                }
            )
        ),
      ]));
}
