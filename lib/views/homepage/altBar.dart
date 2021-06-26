import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:petsapp/views/homepage/altBar/health.dart';
import 'package:petsapp/views/homepage/altBar/location.dart';
import 'package:petsapp/views/homepage/altBar/news.dart';
import 'package:petsapp/views/homepage/altBar/geneldurum.dart';
import 'package:petsapp/views/homepage/altBar/search.dart';
import 'package:petsapp/views/homepage/altBar/shopping.dart';


class altBar extends StatefulWidget {
  @override
  _altBarState createState() => _altBarState();
}
class _altBarState extends State<altBar> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.yellow,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Column(
              children:[
               Container(
                 child: IconButton(
                    icon: Icon(Icons.favorite,color: Colors.black,),
                    iconSize: 30,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Health()));
                    },
                  ),
               ),
                Text("Sağlık"),
             ]
            ),
          ),
          Container(
            child: Column(
                children:[
                  IconButton(
                    icon: Icon(Icons.location_on,color: Colors.black,),
                    iconSize: 30,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Location()));
                    },
                  ),
                  Text("Konum"),
                ]
            ),
          ),
          Container(
            height: 80,
            width: 60,
            child: Column(
                children:[
            IconButton(
                icon: Icon(Icons.pets),
              iconSize: 40,
             onPressed: () {
             Navigator.push(context, MaterialPageRoute(builder: (context) =>GenelDurumu()));
           },
           ),
                ]
            ),
          ),
          Container(
            child: Column(
                children:[
                  IconButton(
                    icon: Icon(Icons.shopping_cart,color: Colors.black,),
                    iconSize: 30,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Shopping()));
                    },
                  ),
                  Text("Alışveriş"),
                ]
            ),
          ),
          Container(
            child: Column(
                children:[
                  IconButton(
                    icon: Icon(Icons.search,color: Colors.black,),
                    iconSize: 30,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Search()));
                    },
                  ),
                  Text("Ara"),
                ]
            ),
          ),
          Container(
            child: Column(
                children:[
                  IconButton(
                    icon: Icon(Icons.my_library_books_sharp,color: Colors.black,),
                    iconSize: 30,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => News()));
                    },
                  ),
                  Text("Haber"),
                ]
            ),
          ),
        ],
      ),
    );
  }
}
