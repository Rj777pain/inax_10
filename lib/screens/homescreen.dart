import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 25.0),
      child: ListView(
          children: [
            Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: TextField(

                  //controller: _sController,
                  decoration: InputDecoration(
                      labelText: 'Name',

                      hintText: 'Enter Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      )),
                )),
            Padding(
                padding: EdgeInsets.only(top: 5.0, bottom: 30.0),
                child: TextField(

                  //controller: _sController,
                  decoration: InputDecoration(
                      labelText: 'Income',

                      hintText: 'Enter Annual Income',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      )),
                )),
          ],
      ),
    );
  }
}
