import 'package:inax/auth/signin.dart';
import 'package:inax/screens/bodyscreen.dart';
import 'package:flutter/material.dart';
class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  bool status=false;
  void toggle(){
    setState(() => status = !status);
  }
  @override
  Widget build(BuildContext context) {

    if(status==true){
      return BodyScreen();
    }
    else{
      return Signin(toggle: toggle);
    }
  }}