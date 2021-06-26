
import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:petsapp/views/applicationmatching.dart';



class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {

  final FirebaseAuth _auth = FirebaseAuth.instance;
  bool isloggedin = false;
  User user;


  getUser() async {
    User firebaseUser = _auth.currentUser;
    await firebaseUser?.reload();
    firebaseUser= _auth.currentUser;

    if (firebaseUser!= null) {
      setState(() {
        this.user = firebaseUser;
        this.isloggedin = true;
      });
    }
  }


  @override
  void initState() {
    super.initState();
    this.getUser();
    this.startTime();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: initScreen(context),
    );
  }

  startTime() async{
    var duration = new Duration(seconds: 6);
    return new Timer(duration, route);
  }
  route(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => ApplicationMatching()));
  }

  @override
  initScreen (BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Container(
                child: ListView(
                  children:[
                    if (!isloggedin) CircularProgressIndicator() else
                      Column(
                          children:[
                            Align(
                              alignment: Alignment.topRight,
                              child: Column(
                                children:[
                                  Stack(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Container(
                                          height:150,
                                          width: 200,
                                          decoration: BoxDecoration(
                                            color: Colors.yellow,
                                            borderRadius: BorderRadius.all(Radius.circular(40)),
                                          ),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.min,
                                              children: <Widget>[
                                                Padding(
                                                  padding: const EdgeInsets.all(10.0),
                                                  child: Text(" Hello ${user.displayName} Sana tanıdık geldim mi :)"
                                                    ,style: TextStyle(color: Colors.black),),
                                                ),
                                              ]
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                          bottom: 15,
                                          left: 50,
                                          child: CustomPaint(
                                            painter: ChatBubbleTriangle(),
                                          ),
                                      ),
                                    ]
                                 ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        alignment: Alignment.bottomLeft,
                                        margin: EdgeInsets.only(right: 250),
                                        child: Image(image: AssetImage("assets/images/kopek12.jpg"),
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ],
                                  ),
                                  ]
                                ),
                              ),
                          
                            MyApp(),
                         ]
                        ),
                    ]
                    ),
                ),
    );
  }
}


class ChatBubbleTriangle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = Colors.yellow;

    var path = Path();
    path.lineTo(-50, 0);
    path.lineTo(0, -50);
    path.lineTo(0, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
    this.startTime();

  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SnackScreen(context),
    );
  }

  startTime() async{
    var duration = new Duration(seconds: 3);
    return new Timer(duration, route);
  }

  route(){
    Scaffold.of(context).showSnackBar(snackBar);
  }
  final snackBar = SnackBar(
    content: Text("Open your location!"),
    backgroundColor: Colors.black38,
    action: SnackBarAction(
      textColor: Colors.white,
      label:"Go to location",
      disabledTextColor: Colors.black,
      onPressed: (){},
    ),
  );

  @override
  SnackScreen(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: CircularProgressIndicator(
          backgroundColor: Colors.white,
          strokeWidth: 1,
        ),
      );
  }
}
