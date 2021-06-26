import 'package:flutter/material.dart';
import 'package:petsapp/views/homepage/altBar/search/deneyimliveteriner.dart';
import 'package:petsapp/views/homepage/altBar/search/deneyimsizbakicilar.dart';
import 'package:petsapp/views/homepage/altBar/search/deneyimlibakicilar.dart';
import 'package:petsapp/views/homepage/altBar/search/gelistiricilerhakkinda.dart';
import 'package:petsapp/views/homepage/altBar/search/veteriner/veteriner_screen.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.yellow,
      title:  Theme(
        data: Theme.of(context).copyWith(splashColor: Colors.transparent),
         child: TextField(
        autofocus: false,
        style: TextStyle(fontSize: 18.0, color: Colors.black26),
      decoration: InputDecoration(
      filled: true,
       fillColor: Colors.white,
        prefixIcon: Icon(Icons.search),
        hintText: 'search',
           focusedBorder: OutlineInputBorder(
       borderSide: BorderSide(color: Colors.white),
       borderRadius: BorderRadius.circular(25.7),
       ),
        enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(25.7),
      ),
       ),
     ),
      ),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text("Deneyimli Bakıcılar",style: TextStyle(fontSize: 16),),
                  Spacer(),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DeneyimliBakicilar()));
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
                  Text("Deneyimsiz Bakıcılar",style: TextStyle(fontSize: 16),),
                  Spacer(),
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DeneyimsizBakicilar()));
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
                  Text("Veteriner",style: TextStyle(fontSize: 16),),
                  Spacer(),
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => VeterinerScreen()));
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
                  Text("Geliştiriciler Hakkında",style: TextStyle(fontSize: 16),),
                  Spacer(),
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => GelistiricilerHakkinda()));
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
                  Text("Bize Sorun",style: TextStyle(fontSize: 16),),
                  Spacer(),
                  GestureDetector(
                      onTap: (){
                       // Navigator.push(context, MaterialPageRoute(builder: (context) => GelistiricilerHakkinda()));
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

