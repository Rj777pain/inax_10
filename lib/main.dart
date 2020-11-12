import 'package:flutter/material.dart';
import 'package:inax/screens/bodyscreen.dart';
import 'package:inax/screens/wrapper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Wrapper(),debugShowCheckedModeBanner: false,);
  }
}
