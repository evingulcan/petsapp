import 'package:flutter/material.dart';
import 'package:petsapp/views/homepage/altBar/search/deneyimlikisiListesi.dart';
import 'package:url_launcher/url_launcher.dart';


class DetayKisi extends StatelessWidget {
  final DeneyimliKisiListesi deneyimliKisiListesi;
  final Function press;
  const DetayKisi({
    Key key,
    @required this.deneyimliKisiListesi,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: buildAppBar(),
      body: KisiDetay(deneyimliKisiListesi: deneyimliKisiListesi),
    );
  }
  AppBar buildAppBar(){
    return AppBar(
      elevation: 0.0,
    );
  }
}

class KisiDetay extends StatelessWidget {
  const KisiDetay({
    Key key,
    this.deneyimliKisiListesi,
    this.press,
  }) : super(key: key);
  final DeneyimliKisiListesi deneyimliKisiListesi;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20, top: 10,),
          child: Container(
            height: 150,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.yellow,
            ),
            child:   Image.asset(deneyimliKisiListesi.image),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 200,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.yellow,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Adı Soyadı"),
                      Spacer(),
                      Text(deneyimliKisiListesi.adsoyad),
                    ],
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.black,
                  ),

                  Row(
                    children: [
                      Text("Evcil Hayvan"),
                      Spacer(),
                      Text(deneyimliKisiListesi.evcil_hayvan),
                    ],
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.black,
                  ),
                  Row(
                    children: [
                      Text("Cinsi"),
                      Spacer(),
                      Text(deneyimliKisiListesi.cinsi),
                    ],
                  ),

                  Divider(
                    thickness: 1,
                    color: Colors.black,
                  ),
                  Row(
                    children: [
                      Text("Deneyimi"),
                      Spacer(),
                      Text(deneyimliKisiListesi.deneyimleri),
                    ],
                  ),

                ],
              ),
            ),
          ),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Center(
            child: ClipOval(
              child: Container(
                color: Colors.black,
                width: 80.0,
                height: 80.0,
                child: FlatButton(
                    onPressed: () => launch(('tel://0${deneyimliKisiListesi.telefon}')),
                    child: Icon(Icons.phone,color: Colors.yellow,size: 40,)),
              ),
            ),
          ),
            SizedBox(width: 30,),
            ClipOval(
              child: Container(
                color: Colors.black,
                width: 80.0,
                height: 80.0,
                child: FlatButton(
                    onPressed: () {},
                    child: Icon(Icons.mail,color: Colors.yellow,size: 40,)),
              ),
            ),
        ]
        ),
    ]
    );
  }
}