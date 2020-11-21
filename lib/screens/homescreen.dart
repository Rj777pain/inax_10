import 'package:flutter/material.dart';
import 'package:inax/constants/constant.dart';

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
            customTextFormField("Name", "Enter name"),
            customTextFormField("Income", "Enter annual income"),
            customTextFormField("Age", "In years"),
            customTextFormField("State", ""),
            customTextFormField("Adhar number", ""),
            customTextFormField("PAN Card number", ""),
//            customTextFormField("State", ""),
            SizedBox(height: 10,),
            Center(
              child: Container(
                color: Colors.blue[800],
                width: 200.0,
                child: RaisedButton(
//                  color: Colors.transparent,
                elevation: 0.0,
                  child: Text(
                    "Submit",
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                ),
              ),
            ),
          ],
      ),
    );
  }
}
