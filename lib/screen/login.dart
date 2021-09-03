import 'package:flutter/material.dart';

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          /* backgroundColor: Colors.orange,*/
          title: Text(
            "LOGIN",
            //style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
          child: Text("LOGIN SUCCESS"),
        ));
  }
}
