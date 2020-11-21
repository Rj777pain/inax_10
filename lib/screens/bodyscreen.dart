import 'package:flutter/material.dart';
import 'package:inax/screens/calcscreen.dart';
import 'package:inax/screens/homescreen.dart';
import 'package:inax/screens/searchscreen.dart';

class BodyScreen extends StatefulWidget {
  @override
  _BodyScreenState createState() => _BodyScreenState();
}

class _BodyScreenState extends State<BodyScreen> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.red[700],
              bottom: TabBar(
                tabs: [
                  Tab(text: 'HOME'),
                  Tab(
                    text: 'SEARCH',
                  ),
                  Tab(text: 'CALC'),
                ],
              ),
              title: Text('INAX'),
              elevation: 6.0,
              leading: Icon(Icons.toc),

           ),
            body: TabBarView(
              children: [
                HomeScreen(),SearchScreen(),CalcScreen()
              ],
            ),
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
          ),


    );
  }
}
