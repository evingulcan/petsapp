import 'package:flutter/material.dart';
import 'package:petsapp/views/homepage/altBar/geneldurumlar/asitakvimi.dart';
import 'package:petsapp/views/homepage/altBar/geneldurumlar/rutinhastalik.dart';
import 'package:petsapp/views/homepage/altBar/geneldurumlar/rutinilaclar.dart';
import 'package:petsapp/views/homepage/altBar/geneldurumlar/tedavigecmisi.dart';
import 'package:petsapp/views/homepage/altBar/geneldurumlar/yapilanasilar.dart';

class GenelDurumu extends StatefulWidget {
  @override
  _GenelDurumuState createState() => _GenelDurumuState();
}

class _GenelDurumuState extends State<GenelDurumu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text("Genel Durum"),
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
                  child:Text("Aşı Takvimi",style: TextStyle(fontSize: 16),),
                  ),
                  Spacer(),
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => AsiTakvimi()));
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
                    child:Text("Yapılan Aşılar",style: TextStyle(fontSize: 16),),
                  ),
                  Spacer(),
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => YapilanAsilar()));
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
                    child: Text("Rutin Hastalığı",style: TextStyle(fontSize: 16),),
                  ),
                  Spacer(),
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => RutinHastalik()));
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
                    child:  Text("Tedavi Geçmişi",style: TextStyle(fontSize: 16),),
                  ),
                  Spacer(),
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => TedaviGecmisi()));
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
                    child:  Text("Rutin İlaçları",style: TextStyle(fontSize: 16),),
                  ),
                  Spacer(),
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => RutinIlaclar()));
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