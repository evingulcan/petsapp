import 'package:chat_bubble/chat_bubble.dart';
import 'package:flutter/material.dart';

class AsiTakvimi extends StatefulWidget {
  @override
  _AsiTakvimiState createState() => _AsiTakvimiState();
}

class _AsiTakvimiState extends State<AsiTakvimi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aşı Takvimi"),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children:[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                   Center(
                     child: Text("1 YAŞINA GELMEDEN ÖNCE",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                   ),
                      SizedBox(height: 30,),
                      Row(
                children:[
                      ChatBubble(
                        direction: ChatBubbleNipDirection.RIGHT,
                       nipLength: 20,
                        nipTop: 6,
                        child: Container(
                          width: 100,
                          height: 40,
                          color: Colors.white,
                          child: Center(
                            child: Text('6-8 Haftalık'),
                          ),
                        ),
                      ),
                  SizedBox(width: 30,),
                  Text("Genel Tarama + İç ve Dış Parazit Aşısı"),
                    ]
                  ),
                  SizedBox(height: 20,),
                      Row(
                          children:[
                            ChatBubble(
                              direction: ChatBubbleNipDirection.RIGHT,
                              nipLength: 20,
                              nipTop: 6,
                              child: Container(
                                width: 100,
                                height: 40,
                                color: Colors.white,
                                child: Center(
                                  child: Text('8-10 Haftalık'),
                                ),
                              ),
                            ),
                            SizedBox(width: 30,),
                            Text("Genel Tarama + Karma Aşısı"),
                          ]
                      ),
                      SizedBox(height: 20,),
                      Row(
                          children:[
                            ChatBubble(
                              direction: ChatBubbleNipDirection.RIGHT,
                              nipLength: 20,
                              nipTop: 6,
                              child: Container(
                                width: 100,
                                height: 40,
                                color: Colors.white,
                                child: Center(
                                  child: Text('9-11 Haftalık'),
                                ),
                              ),
                            ),
                            SizedBox(width: 28,),
                            Text("Genel Tarama + Lösemi Aşısı(Lösemi Test)"),
                          ]
                      ),
                      SizedBox(height: 20,),
                      Row(
                          children:[
                            ChatBubble(
                              direction: ChatBubbleNipDirection.RIGHT,
                              nipLength: 20,
                              nipTop: 6,
                              child: Container(
                                width: 100,
                                height: 40,
                                color: Colors.white,
                                child: Center(
                                  child: Text('10-12 Haftalık'),
                                ),
                              ),
                            ),
                            SizedBox(width: 30,),
                            Text("Genel Tarama + Karma Aşısı(Tekrar)"),
                          ]
                      ),
                      SizedBox(height: 20,),
                      Row(
                          children:[
                            ChatBubble(
                              direction: ChatBubbleNipDirection.RIGHT,
                              nipLength: 20,
                              nipTop: 6,
                              child: Container(
                                width: 100,
                                height: 40,
                                color: Colors.white,
                                child: Center(
                                  child: Text('11-13 Haftalık'),
                                ),
                              ),
                            ),
                            SizedBox(width: 30,),
                            Text("Genel Tarama +Lösemi Aşısı(Tekrar)"),
                          ]
                      ),
                      SizedBox(height: 20,),
                      Row(
                          children:[
                            ChatBubble(
                              direction: ChatBubbleNipDirection.RIGHT,
                              nipLength: 20,
                              nipTop: 6,
                              child: Container(
                                width: 100,
                                height: 40,
                                color: Colors.white,
                                child: Center(
                                  child: Text('12-14 Haftalık'),
                                ),
                              ),
                            ),
                            SizedBox(width: 30,),
                            Text("Genel Tarama + Kuduz Aşısı"),
                          ]
                      ),
                      SizedBox(height: 30,),
                      Center(
                        child: Text("1 YAŞINDAN SONRA",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                      ),
                      SizedBox(height: 30,),
                      Row(
                          children:[
                            ChatBubble(
                              direction: ChatBubbleNipDirection.RIGHT,
                              nipLength: 20,
                              nipTop: 6,
                              child: Container(
                                width: 100,
                                height: 40,
                                color: Colors.white,
                                child: Center(
                                  child: Text('Yılda 1 kez'),
                                ),
                              ),
                            ),
                            SizedBox(width: 30,),
                            Text("Genel Tarama + Karma Aşısı"),
                          ]
                      ),
                      SizedBox(height: 20,),
                      Row(
                          children:[
                            ChatBubble(
                              direction: ChatBubbleNipDirection.RIGHT,
                              nipLength: 20,
                              nipTop: 6,
                              child: Container(
                                width: 100,
                                height: 40,
                                color: Colors.white,
                                child: Center(
                                  child: Text('Yılda 1 kez'),
                                ),
                              ),
                            ),
                            SizedBox(width: 28,),
                            Text("Genel Tarama + Lösemi Aşısı"),
                          ]
                      ),
                      SizedBox(height: 20,),
                      Row(
                          children:[
                            ChatBubble(
                              direction: ChatBubbleNipDirection.RIGHT,
                              nipLength: 20,
                              nipTop: 6,
                              child: Container(
                                width: 100,
                                height: 40,
                                color: Colors.white,
                                child: Center(
                                  child: Text('Yılda 1 kez'),
                                ),
                              ),
                            ),
                            SizedBox(width: 30,),
                            Text("Genel Tarama + Kuduz Aşısı"),
                          ]
                      ),
                      SizedBox(height: 20,),
                      Row(
                          children:[
                            ChatBubble(
                              direction: ChatBubbleNipDirection.RIGHT,
                              nipLength: 20,
                              nipTop: 6,
                              child: Container(
                                width: 100,
                                height: 40,
                                color: Colors.white,
                                child: Center(
                                  child: Text('3 Ayda 1'),
                                ),
                              ),
                            ),
                            SizedBox(width: 30,),
                            Text("Genel Tarama + İç Parazit Aşısı"),
                          ]
                      ),
                      SizedBox(height: 20,),
                      Row(
                          children:[
                            ChatBubble(
                              direction: ChatBubbleNipDirection.RIGHT,
                              nipLength: 20,
                              nipTop: 6,
                              child: Container(
                                width: 100,
                                height: 40,
                                color: Colors.white,
                                child: Center(
                                  child: Text('3 Ayda 1'),
                                ),
                              ),
                            ),
                            SizedBox(width: 30,),
                            Text("Dış Parazit Aşısı"),
                          ]
                      ),

                    ]
              ),
            ),
           ]
          ),
        ),
      ),
    );
  }
}



