import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:petsapp/views/helper/hayvanlar.dart';
import 'package:petsapp/views/helper/kayit.dart';
import 'package:petsapp/views/homepage/homepage.dart';


class HayvanAdlari extends StatefulWidget {

  @override
  _HayvanAdlariState createState() => _HayvanAdlariState();
}
class _HayvanAdlariState extends State<HayvanAdlari> {

  var refHayvanlar = FirebaseDatabase.instance.reference().child("hayvanlar");
  List<Hayvanlar> list = List();

  @override
  void initState(){
    super.initState();
    refHayvanlar.once().then((DataSnapshot snap) {
      var data = snap.value;
      list.clear();
      data.forEach((key,value){
        Hayvanlar hayvanlar = new Hayvanlar(
          name: value['name'],
          id: value['id'],
          yas: value['yas'],
          cinsiyet: value['cinsiyet'],
          cinsi: value['cinsi'],
          kilo: value['kilo'],
          hastaligi: value['hastaligi'],
          key: key,
        );
        list.add(hayvanlar);
      });
      setState(() {

      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget UI(String name,String key){
      return new GestureDetector(
        onLongPress: (){},
        onTap: (){
          Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage()));
        },
        child: SizedBox(
          height: 60,
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title:   Text("Kaydedilen Hayvanlar",style: TextStyle(color: Colors.black,fontSize: 16),),
      ),
      body:Container(
        child: list.length==0 ? Text("Data is null") : new ListView.builder(
          itemCount: list.length,
          itemBuilder: (_,index){
            return UI(list[index].name,list[index].key);
          },
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context)  =>  Kayit()));
        },
        tooltip: "Hayvan Ekle",
        child: Icon(Icons.add,color: Colors.yellow,),
    ),
    );
  }
}
