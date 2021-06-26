import 'package:flutter/material.dart';
import 'package:petsapp/views/homepage/altBar/search/veteriner/veteriner_container .dart';
import 'package:petsapp/views/homepage/altBar/search/veteriner/veterinerler.dart';


class VeterinerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          backgroundColor: Colors.yellow,
          appBar: AppBar(
            backgroundColor: Colors.yellow,
            elevation: 0,
            title: Text("Veterineler"),
          ),
          body: Container(
            padding: const EdgeInsets.all(9.0),
            decoration: BoxDecoration(
              color: MyColors.grey,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
              ),
            ),
            child: Column(
              children: <Widget>[
                ListView.builder(
                  itemCount: veterinerInfo.length,
                  shrinkWrap: true,
                  itemBuilder: (context, i) => VeterinerContainer(id: i),
                ),
              ],
            ),
          )

    );
  }
}