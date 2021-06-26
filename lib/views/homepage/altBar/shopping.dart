
import 'package:battery/battery.dart';
import 'package:flutter/material.dart';
import 'file:///C:/src/petsapp/lib/views/homepage/altBar/shopping/horizontalList.dart';
import 'file:///C:/src/petsapp/lib/views/homepage/altBar/shopping/products.dart';
import 'package:petsapp/views/homepage/homepage.dart';


class Shopping extends StatefulWidget {
  @override
  _ShoppingState createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Shopping"),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
              onPressed: () {})
        ],
      ),
      body: new Column(
        children: <Widget>[
          new Padding(padding: const EdgeInsets.all(10.0),
            child: Container(
                alignment: Alignment.centerLeft,
                child: new Text('Categories',style: TextStyle(fontWeight: FontWeight.bold),)),),

          //Horizontal list view begins here
          HorizontalList(),

          //padding widget
          SizedBox(height: 30,),
          new Padding(padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: (){
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Container(
                  alignment: Alignment.centerLeft,
                  child: new Text('Recent products',style: TextStyle(fontWeight: FontWeight.bold))),
            ),),

          //grid view
          Flexible(child: Products()),

        ],
      ),
    );
  }
}