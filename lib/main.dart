
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:petsapp/views/helper/kayit.dart';
import 'package:petsapp/views/homepage/altBar/geneldurum.dart';
import 'package:petsapp/views/homepage/altBar/geneldurumlar/asitakvimi.dart';
import 'package:petsapp/views/homepage/altBar/health.dart';
import 'package:petsapp/views/homepage/altBar/healthAdim/adimpage.dart';
import 'package:petsapp/views/homepage/altBar/healthKalp/kalppage.dart';
import 'package:petsapp/views/homepage/altBar/healthKan/kanpage.dart';
import 'package:petsapp/views/homepage/altBar/healthUyku/uygupage.dart';
import 'package:petsapp/views/homepage/altBar/healthVucud/vucudpage.dart';
import 'package:petsapp/views/homepage/altBar/news.dart';
import 'package:petsapp/views/homepage/altBar/search.dart';
import 'package:petsapp/views/homepage/altBar/search/deneyimlibakicilar.dart';
import 'package:petsapp/views/homepage/altBar/search/deneyimliveteriner.dart';
import 'package:petsapp/views/homepage/altBar/search/gelistiricilerhakkinda.dart';
import 'package:petsapp/views/homepage/altBar/search/veteriner/reserve_screen.dart';
import 'package:petsapp/views/homepage/altBar/search/veteriner/veteriner_screen.dart';
import 'package:petsapp/views/homepage/homepage.dart';
import 'package:petsapp/views/signIn.dart';
import 'package:petsapp/views/signUp.dart';
import 'package:petsapp/views/splashscreen.dart';
import 'package:petsapp/views/start.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.yellow,
        scaffoldBackgroundColor: Colors.yellow,
      ),
      home:
     Start(),
      routes: <String,WidgetBuilder>{
        "Login" : (BuildContext context)=>SignIn(),
        "SignUp":(BuildContext context)=>SignUp(),
        "Start":(BuildContext context)=>Start(),
      },
    );
  }
}