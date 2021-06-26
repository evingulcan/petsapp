import 'package:flutter/material.dart';

class GelistiricilerHakkinda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: Color(0xFF121212),
        title: Text("SMARTNECK",style: TextStyle(color: Colors.white),),
        actions: [
          PopupMenuButton(
            icon: Icon(Icons.menu,color: Colors.white,),
            itemBuilder: (BuildContext bc) => [
              PopupMenuItem(
                  child: Text("New Chat")),
              PopupMenuItem(
                  child: Text("New Group Chat")),
              PopupMenuItem(
                  child: Text("Settings")),
            ],
            onSelected: (route) {
              print(route);
              // Note You must create respective pages for navigation
              Navigator.pushNamed(context, route);
            },
          ),
        ],
      ),
      body:  Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            Column(
              children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                   child: Column(
                children:[
                  Container(
                  child: Image.asset("assets/images/logo.jpg"),
                ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("TEKNOLOJİ-YAZILIM-MÜHENDİSLİK",style: TextStyle(color: Colors.yellow,fontSize: 20,
                          fontWeight: FontWeight.bold),),
                    ],
                  ),
                ]
                ),
                  ),

                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Text("MİSYONUMUZ",style: TextStyle(color: Colors.white,fontSize: 20,
                      fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 60,right: 60),
                        child: Text("Sevimli dostlarımız için geliştirdiğimiz teknolojiler aracılığıyla "
                            "onların daha hızlı ve "
                            "güvenilir ortamlarda sağlık hizmetlerine ulaşmalarını sağlamak.",
                          style: TextStyle(color: Colors.white,fontSize: 16,
                            fontWeight: FontWeight.bold),),
                      ),
                    ]
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        Text("VİZYON",style: TextStyle(color: Colors.white,fontSize: 20,
                            fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 60,right: 60),
                          child: Text("İnsan sağlığı takibi için sunulmuş olan akıllı tejnolojiler ve yapay zeka hizmetlerinin"
                              " sevimli dostlarımızın da yaşam kalitesini artıracak şekilde yeni teknolojiler üretmek. ",
                            style: TextStyle(color: Colors.white,fontSize: 16,
                                fontWeight: FontWeight.bold),),
                        ),
                      ]
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        Text("MÜHENDİSLİK",style: TextStyle(color: Colors.white,fontSize: 20,
                            fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 60,right: 60),
                          child: Text("Mühendislik,doğal kaynakların insan yararına en iyi şekilde dönüştürülmesi için bilimi "
                              "uygulamanın profesyonel sanatıdır. ",
                            style: TextStyle(color: Colors.white,fontSize: 16,
                                fontWeight: FontWeight.bold),),
                        ),
                      ]
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                      children:[
                        Text("EKİP",style: TextStyle(color: Colors.white,fontSize: 20,
                            fontWeight: FontWeight.bold),),
                        SizedBox(height: 20,),
                        Container(
                          child: Image.asset("assets/images/foto.jpg"),
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("NURHAK SAĞIR ",style: TextStyle(color: Colors.white,fontSize: 20,
                                fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ]
                  ),
                ),

              ],
            ),
          ],
        ),
      ),

    );
  }
}
