import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Cart'),
    ),
    body: Center(child: Text('Cart',style: TextStyle(fontSize: 60))),
  );


}
