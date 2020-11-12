import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0) 
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Icon(Icons.search),
           Text("Search",style: TextStyle(fontSize: 20.0),)
          ],
        ),
      ),
    );
  }
}

