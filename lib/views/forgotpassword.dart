import 'package:flutter/material.dart';



class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {

  String _email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        elevation: 0.0,
      ),
      body:  Container(
          margin: EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Text("Forgot your password?",style: TextStyle(fontSize: 16),),
               SizedBox(height: 20,),
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
              SizedBox(height: 20,),
          Container(
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
      ]
          ),
        ),
    );
  }
}

