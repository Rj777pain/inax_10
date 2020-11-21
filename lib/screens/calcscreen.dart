import 'package:flutter/material.dart';
import 'package:inax/constants/constant.dart';

class CalcScreen extends StatefulWidget {
  @override
  _CalcScreenState createState() => _CalcScreenState();
}

class _CalcScreenState extends State<CalcScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: GestureDetector(

        child: Container(
          height: 70.0,
          width: 70.0,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.0),
            color: Colors.red[600],
          ),
          child: Column(
//                  mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(height: 8,),
              Icon(Icons.table_chart,color: Colors.white,),
              Text("AutoFill",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              SizedBox(height: 8,),
            ],
          ),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: [
              customTextField("Income", "Enter annual income"),
              customTextField("Home loan", "If any"),
              customTextField("Insurance", "If any"),
              customTextField("Charity", "If any"),
              customTextField("Other deductions", ""),
              SizedBox(height: 5.0,),
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
      ),
    );
  }

}

