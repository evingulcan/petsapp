import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:petsapp/views/languages.dart';
import 'package:petsapp/views/forgotpassword.dart';
import 'package:petsapp/views/helper/kayit.dart';

import 'package:petsapp/views/splashscreen.dart';
import 'package:petsapp/views/signUp.dart';



class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email, _password;
  checkAuthentification() async
  {
    _auth.authStateChanges().listen((user) {
      if (user != null) {
        print(user);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SplashScreen()));
      }
    }
    );
  }
  @override
  void initState(){
    super.initState();
    this.checkAuthentification();
  }
  signin() async{
    if(_formKey.currentState.validate()) {
      _formKey.currentState.save();
      try {
        await _auth.signInWithEmailAndPassword(
            email: _email, password: _password);
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
      backgroundColor:Colors.yellow,
      appBar: AppBar(
        backgroundColor:Colors.yellow,
        elevation: 0.0,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton<Language>(
              underline: SizedBox(),
              icon: Icon(
                Icons.language,
                color: Colors.black,
              ),
              onChanged: (Language language) {
              },
              items: Language.languageList()
                  .map<DropdownMenuItem<Language>>(
                    (e) =>
                    DropdownMenuItem<Language>(
                      value: e,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            e.flag,
                            style: TextStyle(fontSize: 30),
                          ),
                          Text(e.name)
                        ],
                      ),
                    ),
              )
                  .toList(),
            ),
          ),
        ],
      ),
        body: SingleChildScrollView(
    child: Container(
      height: 600,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Container(
                margin: EdgeInsets.all(30.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Container(
                        child: TextFormField(
                          validator: (value) {
                            if(value.isEmpty)
                              return 'Enter Email';
                          },
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(16.0),
                            labelText: 'Email',
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
                            hintText: "Email",
                            hintStyle: TextStyle(color: Colors.white54),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                borderSide: BorderSide.none
                            ),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.4),
                          ),
                          onSaved: (value) => _email = value,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        child: TextFormField(
                          validator: (value) {
                            if(value.length < 6)
                              return 'Enter Minimum 6 Characters';
                          },
                          decoration: InputDecoration(
                            labelText: 'Password',
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
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.white54),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                borderSide: BorderSide.none
                            ),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.4),
                          ),
                          obscureText: true,
                          onSaved: (value) => _password = value,
                        ),
                      ),
                      SizedBox(height: 30.0),
                      SizedBox(
                        width: double.infinity,
                        child: RaisedButton(
                          color: Colors.white,
                          textColor: Colors.black,
                          padding: const EdgeInsets.all(20.0),
                          child: Text("Login".toUpperCase()),
                          onPressed: signin,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0)
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    textColor: Colors.black,
                    child: Text("Create Account".toUpperCase()),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                    },
                  ),
                  Container(
                    color: Colors.black,
                    width: 2.0,
                    height: 20.0,
                  ),
                  FlatButton(
                    textColor: Colors.black,
                    child: Text("Forgot Password".toUpperCase()),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPassword()));
                    },
                  ),
                ],
              ),

              SizedBox(height: 30,),
              Container(
                alignment: Alignment.center,
                child: IconButton(
                  icon: Icon(Icons.add_circle,size: 50,color: Colors.black54,),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Kayit()));
                  },
                ),
              ),
            ],
          ),
        ),
        ),
    );
  }
}