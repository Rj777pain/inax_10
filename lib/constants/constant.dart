import 'package:flutter/material.dart';

InputDecoration textInputDecoration = InputDecoration(

  hintText: 'Email',

  fillColor: Colors.yellowAccent[250],
  border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15.0)
  ),
  filled: true,
  enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey, width: 2.0),
      borderRadius: BorderRadius.circular(15.0)
    //borderRadius: BorderRadius.all(Radius.circular(2.0),
  ),
  focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.green, width: 2.0),
      borderRadius: BorderRadius.circular(15.0)
  ),
);

Widget customTextField(String label,String hint){
  return Padding(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
//            height: 80.0,
            width: 100.0,
            child: TextField(
              //controller: _sController,
              decoration: InputDecoration(
                  labelText: label,
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  )),
            ),
          ),
//          SizedBox(width: 10.0,),
          SizedBox(
//            height: 80.0,
            width: 250.0,
            child: TextField(
              //controller: _sController,
              decoration: InputDecoration(

                  hintText: hint,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  )),
            ),
          ),
        ],
      ));
}

Widget customTextFormField(String label,String hint){
  return Padding(
      padding: EdgeInsets.only(bottom: 10.0),
      child: TextField(

        //controller: _sController,
        decoration: InputDecoration(
            labelText: label,
            hintText: hint,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
            )),
      ));
}