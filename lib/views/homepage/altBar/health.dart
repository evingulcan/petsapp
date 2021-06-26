import 'package:flutter/material.dart';
import 'package:petsapp/views/homepage/altBar/healthAdim/adimpage.dart';
import 'package:petsapp/views/homepage/altBar/healthKalp/kalppage.dart';
import 'package:petsapp/views/homepage/altBar/healthKan/kanpage.dart';
import 'package:petsapp/views/homepage/altBar/healthUyku/uygupage.dart';
import 'package:petsapp/views/homepage/altBar/healthVucud/vucudpage.dart';


class Health extends StatefulWidget {
  @override
  _HealthState createState() => _HealthState();
}

class _HealthState extends State<Health> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
       appBar: AppBar(
         title: Text("Sağlık Durumu"),
         backgroundColor: Colors.yellow,
         elevation: 0.0,
       ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.add_circle_rounded,size: 20,),
                  ),
                  SizedBox(width: 10,),
                  Text("Nabız",style: TextStyle(fontSize: 16),),
                  Spacer(),
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => KalpPage()));
                      },
                      child: Icon(Icons.arrow_forward_ios_sharp,size: 20,)
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.wb_sunny_outlined,size: 20,),
                  ),
                  SizedBox(width: 10,),
                  Text("O2 Miktarı",style: TextStyle(fontSize: 16),),
                  Spacer(),
                  GestureDetector(
                      onTap: (){},
                      child: Icon(Icons.arrow_forward_ios_sharp,size: 20,)
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.bedtime,size: 20,),
                  ),
                  SizedBox(width: 10,),
                  Text("Uyku",style: TextStyle(fontSize: 16),),
                  Spacer(),
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => UykuPage()));
                      },
                      child: Icon(Icons.arrow_forward_ios_sharp,size: 20,)
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.favorite,size: 20,),
                  ),
                  SizedBox(width: 10,),
                  Text("Kalp atış hızı",style: TextStyle(fontSize: 16),),
                  Spacer(),
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => KalpPage()));
                      },
                      child: Icon(Icons.arrow_forward_ios_sharp,size: 20,)
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.local_fire_department,size: 20,),
                  ),
                  SizedBox(width: 10,),
                  Text("Vücud Isısı",style: TextStyle(fontSize: 16),),
                  Spacer(),
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => VucudPage()));
                      },
                      child: Icon(Icons.arrow_forward_ios_sharp,size: 20,)
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.whatshot_sharp,size: 20,),
                  ),
                  SizedBox(width: 10,),
                  Text("Kan Basıncı",style: TextStyle(fontSize: 16),),
                  Spacer(),
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => KanPage()));
                      },
                      child: Icon(Icons.arrow_forward_ios_sharp,size: 20,)
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.palette,size: 20,),
                  ),
                  SizedBox(width: 10,),
                  Text("Adım Sayısı",style: TextStyle(fontSize: 16),),
                  Spacer(),
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => AdimPage()));
                      },
                      child: Icon(Icons.arrow_forward_ios_sharp,size: 20,)
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
