import 'dart:collection';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:petsapp/views/helper/hayvanad.dart';
import 'package:petsapp/views/helper/profil.dart';


class Kayit extends StatefulWidget {
  @override
  _KayitState createState() => _KayitState();
}

class _KayitState extends State<Kayit> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String name;
  String yas;
  String kilo;
  String cinsi;
  String cinsiyet;
  String hastaligi;

  var tfAdi = TextEditingController();
  var tfYas = TextEditingController();
  var tfCinsi = TextEditingController();
  var tfCinsiyet = TextEditingController();
  var tfKilo = TextEditingController();
  var tfHastaligi = TextEditingController();

  var  refHayvanlar = FirebaseDatabase.instance.reference()
      .child("hayvanlar");

  Future<void> kayit( String name , String yas,String kilo,
      String cinsi,String cinsiyet,String hastaligi) async {
    var bilgi = HashMap<String, dynamic>();
    bilgi["id"] = "";
    bilgi["name"] = name;
    bilgi["yas"] = yas;
    bilgi["cinsiyet"] = cinsiyet;
    bilgi["cinsi"] = cinsi;
    bilgi["kilo"] = kilo;
    bilgi["hastaligi"] = hastaligi;
    refHayvanlar.push().set(bilgi);

    Navigator.push(
        context, MaterialPageRoute(builder: (context) =>
        HayvanAdlari()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("2.Evcil Hayvanının Kayıtdını Oluşturun",style: TextStyle(fontSize: 16),),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Profil(),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(30.0),
                child: Form(
                  child: Column(
                    children: [
                      Container(
                        child: TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(16.0),
                            labelText: 'Name',
                            prefixIcon: Container(
                                padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                                margin: const EdgeInsets.only(right: 8.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30.0),
                                      bottomLeft: Radius.circular(30.0),
                                      topRight: Radius.circular(30.0),
                                      bottomRight: Radius.circular(10.0)
                                  ),
                                ),
                                child: Icon(Icons.person, color: Colors.black26,)),
                            hintText: "Name",
                            hintStyle: TextStyle(color: Colors.white54),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                borderSide: BorderSide.none
                            ),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.4),
                          ),
                          controller: tfAdi,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        child: TextFormField(
                          controller: tfYas,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(16.0),
                            labelText: 'Yaş',
                            prefixIcon: Container(
                                padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                                margin: const EdgeInsets.only(right: 8.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30.0),
                                      bottomLeft: Radius.circular(30.0),
                                      topRight: Radius.circular(30.0),
                                      bottomRight: Radius.circular(10.0)
                                  ),
                                ),
                                child: Icon(Icons.email, color: Colors.black26,)),
                            hintText: "Yaş",
                            hintStyle: TextStyle(color: Colors.white54),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                borderSide: BorderSide.none
                            ),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.4),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        child: TextFormField(
                          controller: tfCinsiyet,
                          decoration: InputDecoration(
                            labelText: 'Cinsiyeti',
                            prefixIcon: Container(
                                padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                                margin: const EdgeInsets.only(right: 8.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30.0),
                                      bottomLeft: Radius.circular(30.0),
                                      topRight: Radius.circular(30.0),
                                      bottomRight: Radius.circular(10.0)
                                  ),
                                ),
                                child: Icon(Icons.vpn_key, color: Colors.black26,)),
                            hintText: "Cinsiyeti",
                            hintStyle: TextStyle(color: Colors.white54),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                borderSide: BorderSide.none
                            ),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.4),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        child: TextFormField(
                          controller: tfCinsi,
                          decoration: InputDecoration(
                            labelText: 'Cinsi',
                            prefixIcon: Container(
                                padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                                margin: const EdgeInsets.only(right: 8.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30.0),
                                      bottomLeft: Radius.circular(30.0),
                                      topRight: Radius.circular(30.0),
                                      bottomRight: Radius.circular(10.0)
                                  ),
                                ),
                                child: Icon(Icons.vpn_key, color: Colors.black26,)),
                            hintText: "Cinsi",
                            hintStyle: TextStyle(color: Colors.white54),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                borderSide: BorderSide.none
                            ),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.4),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        child: TextFormField(
                          controller: tfKilo,
                          decoration: InputDecoration(
                            labelText: 'Kilo',
                            prefixIcon: Container(
                                padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                                margin: const EdgeInsets.only(right: 8.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30.0),
                                      bottomLeft: Radius.circular(30.0),
                                      topRight: Radius.circular(30.0),
                                      bottomRight: Radius.circular(10.0)
                                  ),
                                ),
                                child: Icon(Icons.vpn_key, color: Colors.black26,)),
                            hintText: "Kilo",
                            hintStyle: TextStyle(color: Colors.white54),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                borderSide: BorderSide.none
                            ),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.4),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        child: TextFormField(
                          controller: tfHastaligi,
                          decoration: InputDecoration(
                            labelText: 'Hastalığı',
                            prefixIcon: Container(
                                padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                                margin: const EdgeInsets.only(right: 8.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30.0),
                                      bottomLeft: Radius.circular(30.0),
                                      topRight: Radius.circular(30.0),
                                      bottomRight: Radius.circular(10.0)
                                  ),
                                ),
                                child: Icon(Icons.vpn_key, color: Colors.black26,)),
                            hintText: "Hastalığı",
                            hintStyle: TextStyle(color: Colors.white54),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                borderSide: BorderSide.none
                            ),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.4),
                          ),
                        ),
                      ),
                      SizedBox(height: 30.0),
                      SizedBox(
                        width:150,
                        child: RaisedButton(
                          color: Colors.white,
                          textColor: Colors.black,
                          padding: const EdgeInsets.all(20.0),
                          child: Text("Register".toUpperCase()),
                          onPressed: (){
                         kayit(tfAdi.text,tfYas.text, tfCinsiyet.text, tfCinsi.text, tfKilo.text, tfHastaligi.text,);
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                    ]
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}