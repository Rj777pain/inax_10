import 'package:inax/constants/constant.dart';
import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  final Function toggle;
  Signin({this.toggle});
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {

  final _formKey = GlobalKey<FormState>();

  String email = "";
  String pswd = "";
  String error="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 100.0,
                ),
                Center(child: Text("I N A X",style: TextStyle(fontSize: 50.0,fontWeight: FontWeight.bold,color: Colors.red[900]),)),
                SizedBox(
                  height: 50.0,
                ),
                TextFormField(
                  decoration: textInputDecoration,
                  validator: (val)=>val.isEmpty?'Enter an Email': null,
                  onChanged: (val) {
                    setState(() {
                      return email = val;
                    });
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  decoration: textInputDecoration.copyWith(hintText: 'Password'),
                  obscureText: true,
                  validator: (val)=>val.length<6?'Enter a password of 6+ length': null,
                  onChanged: (val) {
                    setState(() {
                      return pswd = val;
                    });
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)
                  ),
                  color: Colors.red[400],
                  elevation: 6.0,
                  child: RaisedButton(
                      color: Colors.red[400],
                      elevation: 6.0,
                      child: Text(
                        "Sign In",
                        style: TextStyle(color: Colors.white,fontSize: 15.0),
                      ),
                      onPressed:(){
                        if(_formKey.currentState.validate()){
                          setState(() {

                          });
                          widget.toggle();
                          //loading=false;

                        }
                      }


                  ),
                ),
                SizedBox(height: 20.0,),
                Text(error,style: TextStyle(color: Colors.red, fontSize: 14.0),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
