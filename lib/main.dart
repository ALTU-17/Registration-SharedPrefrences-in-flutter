import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:go4eveflutter/pages/cities/aurangabad.dart';
import 'package:go4eveflutter/pages/event%20categries/wedding.dart';
import 'package:go4eveflutter/pages/navigation/bookings.dart';
import 'package:go4eveflutter/pages/navigation/cart.dart';
import 'package:go4eveflutter/pages/navigation/bottom_nav.dart';
import 'package:go4eveflutter/pages/login_page.dart';
import 'package:go4eveflutter/pages/navigation/homepage.dart';
import 'package:go4eveflutter/pages/navigation/profile.dart';
import 'package:go4eveflutter/pages/navigation/story.dart';
import 'package:go4eveflutter/pages/register.dart';
import 'package:go4eveflutter/splashscreen.dart';
import 'package:go4eveflutter/styles/theme.dart';
import 'package:go4eveflutter/utils/routes.dart';

import 'app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: 'SplashScreen',
      routes: {
        '/': (context) => SplashScreen(),
        'login': (context) => MyLogin(),
        'register': (context) => MyRegister(),
        'home': (context) => HomePage(),
        'bottom_nav': (context) => BottomNav(),
        'bookings': (context) => Bookings(),
        'cart': (context) => Cart(),
        'story': (context) => Story(),
        'aurangabad': (context) => Aurangabad(),
        'wedding': (context) => Wedding(),
        'profile': (context) => Profile()
        // MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}


