import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go4eveflutter/app.dart';
import 'package:go4eveflutter/pages/login_page.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    const delay = const Duration(seconds: 3);
    Future.delayed(delay, () => onTimerFinished());
  }

  void onTimerFinished() {
    Navigator.of(context).pushReplacement(new MaterialPageRoute(
      builder: (BuildContext context) {
        return MyLogin();
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   decoration: BoxDecoration(
    //     image: DecorationImage(
    //       image:AssetImage('assets/images/go_for_event_logo.png'),
    //
    //     )
    //   ),
      // child: Scaffold(
      //   backgroundColor:Colors.amber,
        // child: CircularProgressIndicator(
        //   valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        // ),
      //),


    //);


    return Scaffold(
      backgroundColor: Color(0x7412F5C8),
      body: Center(
        child: splashScreenIcon(

        ),
      ),
    );
  }
}

Widget splashScreenIcon() {
  String iconPath = "assets/images/go_for_event_logo.png";
  return Image.asset(
    iconPath,
  );
}
