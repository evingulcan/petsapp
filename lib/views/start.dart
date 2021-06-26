
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:petsapp/views/signIn.dart';



class Start extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }
  @override
  void initState() {
    super.initState();
    startTimer();
  }
  startTimer() async {
    var duration = Duration(seconds: 3);
    return new Timer(duration, route);
  }
  route() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => SignIn()));
  }
  initScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: Image.asset("assets/images/logo.jpg"),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            CircularProgressIndicator(
              backgroundColor: Colors.white,
              strokeWidth: 1,
            )
          ],
        ),
    );
  }
}