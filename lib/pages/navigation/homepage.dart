import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final items_controller = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  final items = [
    'Aurangabad',
    'Akola',
    'Amravati',
    'Ahmadnagr',
    'Bhandara',
    'Bid',
    'Buldana',
    'Dhule',
    'Gadchiroli',
    'Gondiya'
  ];
  List<String> navBarItem = ["WEDDING EVENT" , "CORPORAT EVENT" , "SPORTS EVENT" , "FAMILY EVENT" ,
    "EXIBITION","FESTIVAL EVENTS","SCHOOL/COLLEGS","ENTERTAINMENT EVENTS","DESTINATION WEDDINGS","SOCIAL EVENTS"];

  List<String> popItem = ["AURANGABAD" , "MUMBAI" , "NAGPUR" , "NASHIK" , "PUNE"];

  String? value;

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('HOME'),
    ),
    body: ListView(children: <Widget>[
      new Container(
        margin: const EdgeInsets.only(left: 10.0, top: 5.0, bottom: 8.0),
        child:
        new Text(
          'Select City',
          style: new TextStyle(
            fontSize: 15.0,
          ),
        ),
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.amber, width: 2),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: value,
            iconSize: 30,
            icon: Icon(Icons.gps_fixed, color: Colors.white70),
            isExpanded: true,
            items: items.map(buildMenuItem).toList(),
            onChanged: (value) => setState(() => this.value = value),
          ),
        ),
      ),
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
          'Poupular',
          style: new TextStyle(
            fontSize: 15.0,
          ),
        ),
      ),
      Container(
          height: 450,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: popItem.length,
              itemBuilder : (context , index){
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'aurangabad');
                  },
                  child: Container(
                    height: 100,
                    margin: EdgeInsets.only(left: 6, right: 6,bottom: 5),
                    decoration : BoxDecoration(

                        color: Colors.black12,
                        border: Border.all(color: Colors.white10, width: 2),
                        borderRadius : BorderRadius.circular(10)
                    ),

                    child : Center(
                      child: Text(
                          popItem[index] ,
                          style: TextStyle(
                            fontSize:25 ,
                            color: Colors.white,
                          )),
                    ),
                  ),
                );
              }
          )
      ),
    ]),
  );

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
    value: item,
    child: Text(
      item,
      style: TextStyle(fontSize: 20),
    ),
  );
}

