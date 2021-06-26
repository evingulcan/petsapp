import 'dart:async';
import 'package:battery/battery.dart';
import 'package:battery_platform_interface/battery_platform_interface.dart';
import 'package:flutter/material.dart';
import 'package:petsapp/views/helper/hayvanlar.dart';
import 'package:petsapp/views/helper/iyilikpuani/custom_dialog_box.dart';
import 'package:petsapp/views/homepage/altBar.dart';
import 'package:petsapp/views/homepage/altBar/healthKalp/kalppage.dart';
import 'package:petsapp/views/homepage/altBar/healthVucud/vucudpage.dart';
import 'package:petsapp/views/homepage/imagecarousel.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';



class HomePage extends StatefulWidget {

  Hayvanlar hayvan;
  HomePage({this.hayvan});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final battery = Battery();
  int batteryLevel = 100;
  BatteryState batteryState = BatteryState.full;
  Timer timer;
  StreamSubscription subscription;

  @override
  void initState() {
    super.initState();
    listenBatteryLevel();
    listenBatteryState();
  }
  void listenBatteryState() =>
      subscription = battery.onBatteryStateChanged.listen(
            (batteryState) => setState(() => this.batteryState
            = batteryState),
      );
  void listenBatteryLevel() {
    updateBatteryLevel();

    timer = Timer.periodic(
      Duration(seconds: 10),
          (_) async => updateBatteryLevel(),
    );
  }
  Future updateBatteryLevel() async {
    final batteryLevel = await battery.batteryLevel;
    setState(() => this.batteryLevel = batteryLevel);
  }
  @override
  void dispose() {
    timer.cancel();
    subscription.cancel();
    super.dispose();
  }
  final PageController controller = PageController(initialPage: 0);


  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        automaticallyImplyLeading: false,//appBar daki geri tuşu kaldırıyor
        actions: [
     Column(
       children: [
         Padding(
           padding: const EdgeInsets.only(top:5),
           child: Row(
             children: [
               GestureDetector(
                 onTap: (){
               showDialog(context: context,
               builder: (BuildContext context){
                return CustomDialogBox(
                title: "İyilik Puanları",
                 descriptions: "Puanlar sokak hayvanlarına bakan iyi kalpli insanlar için oluştulmuştur."
                   "Her hafta verilen görevleri tamamlayan iyi kalpli insanlar biriktirdikleri puanlarla mama "
                        "kazanabilir ve ücretsiz sağlık hizmeti alabilir.",
                  text: "OK",
                       );
                   }
                   );
                 },
                   child: Icon(Icons.pets,color: Colors.black54,)
                   ),

                Text("+1",style: TextStyle(color: Colors.black54)),

                  SizedBox(width: 300,),
               buildBatteryLevel(batteryLevel),
               buildBatteryState(batteryState),
             ],
           ),
         ),

         Container(
           alignment: Alignment.center,
           width: MediaQuery.of(context).size.width,
           child: Text("Cihaz Bağlı",style: TextStyle(color: Colors.black,fontSize: 16),),

         ),
       ],
     ),
        ],
      ),

      body:  Column(
        children: [
          Container(
            height: 250,
            child: new ClipRRect(
              child: new Stack(
                children: [
                  ImageCarousel(),
                ],
              ),
            ),
          ),
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                  ),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => KalpPage()));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Icon(Icons.favorite),
                        ),
                        Text("Kalp atış hızı"),
                        Text("-kez / dakika",style: TextStyle(color: Colors.black54),),
                      ],
                    ),
                  ),
              ),
                ),
                SizedBox(width: 10,),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                    ),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => VucudPage()));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Icon(Icons.local_fire_department),
                          ),
                          Text("Vücud ısısı"),
                          Text("-\u2103",style: TextStyle(color: Colors.black54),),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Icon(Icons.location_on),
                        ),
                        Text("Anlık Konum"),
                      ],
                    ),
                  ),
                ),
              ]
            ),
          ),
          Spacer(flex: 50,),
          altBar(),
    ]
    ),
    );

    Widget buildBatteryState(BatteryState batteryState) {
      final double size = 30;

      switch (batteryState) {
        case BatteryState.full:
          final color = Colors.green;
          return
            Column(
              children: [
                Icon(Icons.battery_full, size: size, color: color),
              ],
            );
        case BatteryState.charging:
          final color = Colors.green;
          return Column(
            children: [
              Icon(Icons.battery_charging_full, size: size, color: color),
            ],
          );
        case BatteryState.discharging:
        default:
          final color = Colors.red;
          return Column(
            children: [
              Icon(Icons.battery_alert, size: size, color: color),
            ],
          );


      }
    }

    Widget buildBatteryLevel(int batteryLevel) =>
        Text(
          '%$batteryLevel',
          style: TextStyle(
            fontSize: 15,
            color: Colors.black54,
            fontWeight: FontWeight.bold,
          ),
        );
  }