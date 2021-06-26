import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';



class ImageCarousel extends StatefulWidget {
  _ImageCarouselState createState() => new _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> with SingleTickerProviderStateMixin {

  Animation<double> animation;
  AnimationController controller;
  initState() {
    super.initState();
    controller = new AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this
    );
    animation = new Tween(begin: 0.0, end: 18.0).animate(controller)
      ..addListener(() {
        setState(() {
        });
      });
    controller.forward();
  }
  @override
  Widget build(BuildContext context) {
    Widget carousel = new Carousel(
      boxFit: BoxFit.cover,
      images: [
        new AssetImage('assets/images/kopek8.jpg'),
        new AssetImage('assets/images/kopek6.jpg'),
        new AssetImage('assets/images/kopek4.jpg'),
        new AssetImage('assets/images/kopek14.jpg'),
        new AssetImage('assets/images/kopek11.jpg'),
        new AssetImage('assets/images/kopek7.jpg'),
        new AssetImage('assets/images/kopek1.jpg'),
        new AssetImage('assets/images/kopek5.jpg'),
      ],
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(seconds: 1),
    );


    return new Scaffold(
      backgroundColor: Colors.black,
      body:  new Container(
        child: new ClipRRect(
          child: new Stack(
            children: [
              carousel,

            ],
          ),
        ),
      ),
    );
  }
  dispose() {
    controller.dispose();
    super.dispose();
  }
}