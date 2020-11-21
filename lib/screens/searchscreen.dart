import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
//      height: 80.0,
      padding: EdgeInsets.only(left: 20.0, right: 20.0),
      child: Center(
        child: Column(
          children: [
            SizedBox(height: 20.0,),
            Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
//          padding: EdgeInsets.only(left: 20.0,right: 20.0,top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 10,),
                  Icon(Icons.search),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 200.00,
                    //height: 60.0,
                    child: TextField(
                      //controller: _sController,
                      decoration: InputDecoration(
//            labelText: 'Name',

                        hintText: 'Search',
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 40.0,),
            Icon(
              Icons.search,size: 200,color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
