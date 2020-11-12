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
          ),


    );
  }
}
