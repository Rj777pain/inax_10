import 'package:flutter/material.dart';
import 'package:inax/constants/constant.dart';

class CalcScreen extends StatefulWidget {
  @override
  _CalcScreenState createState() => _CalcScreenState();
}

class _CalcScreenState extends State<CalcScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            customTextField("Income", "Enter annual income"),
            customTextField("Home loan", "If any"),
            customTextField("Insurance", "If any"),
            customTextField("Charity", "If any"),
            customTextField("Other deductions", ""),
            SizedBox(height: 20.0,),
            Center(
              child: Container(
//                color: Colors.grey,
                width: 200.0,
                child: RaisedButton(
//                  color: Colors.transparent,
//                elevation: 6.0,
                  child: Text(
                    "+ Add another field",
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0,),
            Center(
              child: Container(
                color: Colors.blue[800],
                width: 200.0,
                child: RaisedButton(
//                  color: Colors.transparent,
//                elevation: 6.0,
                  child: Text(
                    "Calculate",
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}

