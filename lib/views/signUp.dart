
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:petsapp/views/signIn.dart';
import 'package:petsapp/views/splashscreen.dart';



class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _name, _email, _password, _kimlikNo;
  checkAuthentification() async
  {
    _auth.authStateChanges().listen((user) {
      if (user != null) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SplashScreen()));
      }
    }
    );
  }
  @override
  void initState() {
    super.initState();
    this.checkAuthentification();
  }

  signUp() async {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      try {
        UserCredential user = await _auth.createUserWithEmailAndPassword(
            email: _email, password: _password);

        if (user != null) {
          await _auth.currentUser.updateProfile(displayName: _name);
        }
        else {}
      }
      catch (e) {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('ERROR'),
                content: Text("Incorrect entry!!"),
                actions: [
                  FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('OK'),
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
        elevation: 0.0,
      ),
      body:  SingleChildScrollView(
        child: Container(
          height: 600,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(30.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Container(
                          child: TextFormField(
                            validator: (value) {
                              if (value.isEmpty)
                                return 'Enter Name';
                            },
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
                            onSaved: (value) => _name = value,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          child: TextFormField(
                            validator: (value) {
                              if (value.isEmpty)
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
                              if (value.length < 6)
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
                        SizedBox(height: 10,),
                        Container(
                          child: TextFormField(
                            validator: (value) {
                              if (value.length < 6)
                                return 'Enter Minimum 6 Characters';
                            },
                            decoration: InputDecoration(
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
                        SizedBox(height: 30.0),
                        SizedBox(
                          width: double.infinity,
                          child: RaisedButton(
                            color: Colors.white,
                            textColor: Colors.black,
                            padding: const EdgeInsets.all(20.0),
                            child: Text("Register".toUpperCase()),
                            onPressed: signUp,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0)
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                               Text("Already have accout?",style: TextStyle(color: Colors.black),),
                            FlatButton(
                              textColor: Colors.black,
                              child: Text("LOGIN".toUpperCase()),
                              onPressed: (){
                               Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()));
                              },
                            ),
                          ],
                        ),
                      ],
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