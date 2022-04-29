import 'package:flutter/material.dart';
import 'package:go4eveflutter/pages/register.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'navigation/bottom_nav.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();

}

class _MyLoginState extends State<MyLogin> {
  bool changeButton = false;
  String name = "";
  final username_controller = TextEditingController();
  final password_controller = TextEditingController();
  late SharedPreferences logindata;
  late bool newuser;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    check_if_already_login();
  }

  void check_if_already_login() async {
    logindata = await SharedPreferences.getInstance();
    newuser = (logindata.getBool('login') ?? true);
    print(newuser);
    if (newuser == false) {
      Navigator.pushReplacement(
          context, new MaterialPageRoute(builder: (context) => BottomNav()));
    }
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    username_controller.dispose();
    password_controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // color:Color(0x7412F5C8),
        image: DecorationImage(
            image: AssetImage('assets/images/login.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(

              padding: EdgeInsets.only(left: 35, top: 100),
              child: Text(
                "Login",
                style: TextStyle(color: Colors.white, fontSize: 33),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        children:[
                          TextField(
                            controller: username_controller,
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                fillColor: Colors.black54,
                                filled: true,
                                hintText: 'Username',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )
                            ),

                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextField(
                            controller: password_controller,
                            style: TextStyle(),
                            obscureText: true,
                            decoration: InputDecoration(
                                fillColor: Colors.black54,
                                filled: true,
                                hintText: "Password",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Sign in',
                                style: TextStyle(
                                    fontSize: 27,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black)
                              ),
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Color(0xff4c505b),
                                child: IconButton(
                                    color: Colors.white,
                                    onPressed: () {
                                      String username = username_controller.text;
                                      String password = password_controller.text;
                                      if (username != '' && password != '') {
                                        print('Successfull');
                                        logindata.setBool('login', false);
                                        logindata.setString('Username', username);
                                        Navigator.push(context,
                                            MaterialPageRoute(builder: (context) => BottomNav()));
                                      }
                                    },
                                    icon: Icon(
                                      Icons.arrow_forward,
                                    )),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RaisedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, 'register');
                                },
                                child: Text(
                                  'Register',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Colors.white,
                                      fontSize: 18),
                                ),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'bottom_nav');
                                  },
                                  child: Text(
                                    'Forgot Password',
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Color(0xff4c505b),
                                      fontSize: 18,
                                    ),
                                  )),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }
}




// Shared prefrences doc code


// import 'package:flutter/material.dart';
// import 'package:go4eveflutter/pages/navigation/bottom_nav.dart';
// import 'package:go4eveflutter/pages/navigation/profile.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// class MyLogin extends StatefulWidget {
//   const MyLogin({Key? key}) : super(key: key);
//
//   @override
//   _MyLoginState createState() => _MyLoginState();
//
// }
//
// class _MyLoginState extends State<MyLogin> {
//   // Create a text controller and use it to retrieve the current value
//   // of the TextField.
//   final username_controller = TextEditingController();
//   final password_controller = TextEditingController();
//   late SharedPreferences logindata;
//   late bool newuser;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     check_if_already_login();
//   }
//   void check_if_already_login() async {
//     logindata = await SharedPreferences.getInstance();
//     newuser = (logindata.getBool('login') ?? true);
//     print(newuser);
//     if (newuser == false) {
//       Navigator.pushReplacement(
//           context, new MaterialPageRoute(builder: (context) => BottomNav()));
//     }
//   }
//   @override
//   void dispose() {
//     // Clean up the controller when the widget is disposed.
//     username_controller.dispose();
//     password_controller.dispose();
//     super.dispose();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(" Shared Preferences"),
//       ),
//       body: Center(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               "Login Form",
//               style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//             ),
//             Text(
//               "To show Example of Shared Preferences",
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(15.0),
//               child: TextField(
//                 controller: username_controller,
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(),
//                   labelText: 'username',
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(15.0),
//               child: TextField(
//                 controller: password_controller,
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(),
//                   labelText: 'Password',
//                 ),
//               ),
//             ),
//             RaisedButton(
//               textColor: Colors.white,
//               color: Colors.blue,
//               onPressed: () {
//                 String username = username_controller.text;
//                 String password = password_controller.text;
//                 if (username != '' && password != '') {
//                   print('Successfull');
//                   logindata.setBool('login', false);
//                   logindata.setString('username', username);
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => Profile()));
//                 }
//               },
//               child: Text("Log-In"),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }