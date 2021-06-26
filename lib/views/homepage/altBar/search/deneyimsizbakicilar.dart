import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DeneyimsizBakicilar extends StatelessWidget {
  DeneyimsizBakicilar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => new Scaffold(
    appBar: new AppBar(
      title: new Text("Deneyimsiz Bakıcılar"),
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
                        child: Text("Ayşenur Kılıç",style: TextStyle(fontSize: 16),),
                      ),
                  SizedBox(width: 50,),
                      new FlatButton(
                          onPressed: () => launch("tel://21213123123"),
                          child: Icon(Icons.phone)),
                    ],
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.mail,color: Colors.black,),
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
                        child: Text("Abdullah Taş",style: TextStyle(fontSize: 16),),
                      ),
                      SizedBox(width: 50,),
                      new FlatButton(
                          onPressed: () => launch("tel://21213123123"),
                          child: Icon(Icons.phone)),
                    ],
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.mail,color: Colors.black,),
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
                        child: Text("İbrahim Taşın",style: TextStyle(fontSize: 16),),
                      ),
                      SizedBox(width: 50,),
                      new FlatButton(
                          onPressed: () => launch("tel://21213123123"),
                          child: Icon(Icons.phone)),
                    ],
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.mail,color: Colors.black,),
                ),
              ],
            ),
          ),
        ]
    ),

  );
}




