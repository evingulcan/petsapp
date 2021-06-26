import 'package:flutter/material.dart';

class RutinIlaclar extends StatefulWidget {
  @override
  _RutinIlaclarState createState() => _RutinIlaclarState();
}

class _RutinIlaclarState extends State<RutinIlaclar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rutin İlaçlar"),
        elevation: 0.0,
      ),
      body: Container(
        child: Column(
          children: [
            Text("Rutin İlaçlar"),
          ],
        ),
      ),
    );
  }
}
