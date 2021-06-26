import 'package:flutter/material.dart';

class RutinHastalik extends StatefulWidget {
  @override
  _RutinHastalikState createState() => _RutinHastalikState();
}

class _RutinHastalikState extends State<RutinHastalik> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rutin Hastalığı"),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
             height: MediaQuery.of(context).size.height,
               width: MediaQuery.of(context).size.width,
         decoration: BoxDecoration(
        color: Colors.yellow,
        ),
         child: Padding(
      padding: const EdgeInsets.all(10.0),
       child: Column(
        children: [
           Row(
          children: [
            Text("Infectious Tracheobronchitis-Kennel Cough"),
            ],
          ),
        Divider(
    thickness: 1,
    color: Colors.black,
    ),
        ]
    ),
      ),
        ),
    ),
    );
  }
}
