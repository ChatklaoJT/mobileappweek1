import 'package:flutter/material.dart';
import 'package:mobileappweek1/config/constant.dart';
import 'package:mobileappweek1/screen/dashboard.dart';
import 'package:mobileappweek1/screen/index.dart';
import 'package:mobileappweek1/screen/login.dart';
import 'package:mobileappweek1/screen/register.dart';

void main() => runApp(/*obj*/ KMUTNB());

class KMUTNB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: index(),
      routes: {
        'index': (context) => index(),
        'login': (context) => Login(),
        'register': (context) => register(),
        'Dashboard': (context) => Dashboard(),
      },
      theme: ThemeData(primaryColor: pColor, secondaryHeaderColor: sColor),
      /*Scaffold(
        //Appbar
        appBar: AppBar(r
          //title
          title: Text("LOGIN"),
        ),
        body:Container(
          child: Text ("LOGIN"))),
*/
    );
  }
}
