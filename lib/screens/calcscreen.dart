import 'package:flutter/material.dart';

class CalcScreen extends StatefulWidget {
  @override
  _CalcScreenState createState() => _CalcScreenState();
}

class _CalcScreenState extends State<CalcScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
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

