
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:petsapp/views/homepage/homepage.dart';
import 'package:petsapp/views/start.dart';



class ApplicationMatching extends StatefulWidget {
  @override
  _ApplicationMatchingState createState() => _ApplicationMatchingState();
}

class _ApplicationMatchingState extends State<ApplicationMatching> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String _kimlikNo;
  User user;
  bool isloggedin = false;


  checkAuthentification() async
  {
    _auth.authStateChanges().listen((user) {
      if (user == null) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Start()));
      }
    }
    );
  }

  signOut() async {
    _auth.signOut();
  }


  @override
  void initState() {
    super.initState();
    this.checkAuthentification();
  }

  send() async{
    if(_formKey.currentState.validate()) {
      _formKey.currentState.save();
      try {
         Navigator.push(
             context, MaterialPageRoute(builder: (context) => HomePage()));
      }
      catch(e)
      {
        showDialog(
            context: context,
            builder: (BuildContext context)
            {
              return AlertDialog(
                title: Text('ERROR'),
                content: Text("Incorrect entry!!"),
                actions: [
                  FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('OK')
                  ),
                ],
              );
            }
        );
      }
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        actions: [
          IconButton(icon: Icon(Icons.exit_to_app,color: Colors.black,),
            onPressed: signOut,
          ),
        ],
        elevation: 0.0,
      ),
      body: Container(
          margin: EdgeInsets.all(30.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Tasma-Aplikasyon Eşleştirmesi",style: TextStyle(fontSize: 16),),
                SizedBox(height: 20,),
                Container(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Container(
                      child: TextFormField(
                        validator: (value) {
                          if(value.length < 6)
                            return 'Enter Minimum 6 Characters';
                        },
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(16.0),
                          labelText: 'KimlikNo',
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
                          hintText: "KimlikNo",
                          hintStyle: TextStyle(color: Colors.white54),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide.none
                          ),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.4),
                        ),
                        obscureText: true,
                        onSaved: (value) => _kimlikNo = value,
                      ),
                    ),
                SizedBox(height: 20,),
                GestureDetector(
                  onTap: send,
                  child: Container(
                    padding: const EdgeInsets.only(top: 18.0, bottom: 18.0,left: 18.0,right: 18.0),
                    margin: const EdgeInsets.only(left: 250),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          bottomLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0),
                          bottomRight: Radius.circular(10.0)
                      ),
                    ),
                    child: Text("SEND"),
                  ),
                ),
              ]
          ),
        ),
        ),
          ]
        ),
      ),
    );
  }
}
