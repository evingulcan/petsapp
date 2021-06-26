import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DeneyimliVeteriner extends StatelessWidget {
  DeneyimliVeteriner({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => new Scaffold(
    appBar: new AppBar(
      title: new Text("Deneyimli Veteriner"),
      elevation: 0.0,
    ),
    body: Column(
        children:[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset("assets/images/person2.png"),
                ),
                SizedBox(width: 30,),
                GestureDetector(
                  onTap: (){},
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text("Halime Baktaş",style: TextStyle(fontSize: 16),),
                      ),
                      SizedBox(width: 10,),
                      FlatButton(
                          onPressed: () => launch(('tel://05436267287')),
                          child: Icon(Icons.phone,)),
                      FlatButton(
                        onPressed: (){},
                        child: Text("Randevu Al"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),


          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset("assets/images/person3.png"),
                ),
                SizedBox(width: 30,),
                GestureDetector(
                  onTap: (){},
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text("Ahmet Koyun",style: TextStyle(fontSize: 16),),
                      ),
                      SizedBox(width: 17,),
                       FlatButton(
                              onPressed: () => launch(('tel://05436267287')),
                              child: Icon(Icons.phone,)),
                      FlatButton(
                        onPressed: (){},
                        child: Text("Randevu Al"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset("assets/images/person5.png"),
                ),
                SizedBox(width: 30,),
                GestureDetector(
                  onTap: (){},
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text("Serhat Çelik",style: TextStyle(fontSize: 16),),
                      ),
                      SizedBox(width: 26,),
                      FlatButton(
                          onPressed: () => launch(('tel://05436267287')),
                          child: Icon(Icons.phone,)),
                      FlatButton(
                        onPressed: (){},
                        child: Text("Randevu Al"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]
    ),

  );
}