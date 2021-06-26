import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:petsapp/views/homepage/altBar/search/deneyimlikisiListesi.dart';
import 'package:petsapp/views/homepage/altBar/search/deneyimlikisidetay.dart';
import 'package:url_launcher/url_launcher.dart';

class DeneyimliBakicilar extends StatelessWidget {
  DeneyimliBakicilar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Deneyimli Bakıcılar"),
      ),
     body: SizedBox(
        width:  400,
        child: Container(
          color: Colors.yellow,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding:  EdgeInsets.only(top: 0.0),
            child: Column(
              children: [

                Expanded(
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 20.0),
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: kisiler.length,
                      itemBuilder: (context, index) =>
                          KisiCard(deneyimlikisiListesi: kisiler[index],
                              press: () => Navigator.push(context, MaterialPageRoute(builder: (context) =>
                                  DetayKisi(deneyimliKisiListesi: kisiler[index],
                                  )),
                              )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      );
  }
}

class KisiCard extends StatelessWidget {
  const KisiCard({
    Key key,
    this.deneyimlikisiListesi,
    this.press,
  }) : super(key: key);
  final DeneyimliKisiListesi deneyimlikisiListesi;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            height: 70,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(16),
            ),

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(deneyimlikisiListesi.image),
                  ),
                  GestureDetector(
                    onTap: press,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 30,left: 20),
                          child: Text(deneyimlikisiListesi.adsoyad),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

    );
  }
}