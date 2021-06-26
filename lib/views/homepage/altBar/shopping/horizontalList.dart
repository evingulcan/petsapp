import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: "assets/images/dress.jpg",
            image_caption: 'dress',
          ),

          Category(
            image_location: "assets/images/shoes.jpg",
            image_caption: 'shoes',
          ),

          Category(
            image_location: "assets/images/scarf.jpg",
            image_caption: 'scarf',
          ),
          Category(
            image_location: "assets/images/formula.jpg",
            image_caption: 'formula',
          ),
          Category(
            image_location: "assets/images/medicine.jpg",
            image_caption: 'medicine',
          ),
          Category(
            image_location: "assets/images/comb.jpg",
            image_caption: 'comb',
          ),
          Category(
            image_location: "assets/images/bed.jpg",
            image_caption: 'bed',
          ),
          Category(
            image_location: "assets/images/overflow.jpg",
            image_caption: 'overflow',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 90.0,
          child: ListTile(
              title: Image.asset(
                image_location,
                width: 50.0,
                height: 50.0,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(image_caption, style: new TextStyle(fontSize: 12.0),),
              )
          ),
        ),
      ),
    );
  }
}