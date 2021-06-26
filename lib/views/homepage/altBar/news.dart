import 'package:flutter/material.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text("News"),
        backgroundColor: Colors.yellow,
      ),
    body:  Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.pink[50],
        child: ListView(
          children: [
            Column(
              children: [
                Image.asset("assets/images/haber1.jpg"),
                Image.asset("assets/images/haber2.jpg"),
                Image.asset("assets/images/haber3.jpg"),
              ],
            ),
          ],
        ),
      ),

    );
  }
}
