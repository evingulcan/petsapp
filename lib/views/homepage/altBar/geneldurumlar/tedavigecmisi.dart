import 'package:flutter/material.dart';

class TedaviGecmisi extends StatefulWidget {
  @override
  _TedaviGecmisiState createState() => _TedaviGecmisiState();
}

class _TedaviGecmisiState extends State<TedaviGecmisi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tedavi Geçmişi"),
        elevation: 0.0,
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Tedavi Geçmişi"),
            ),
          ],
        ),
      ),
    );
  }
}
