import 'package:flutter/material.dart';
Widget textArea(){
  return Container(
    width: 50,
    height: 150,
    margin: EdgeInsets.only(left: 10, right: 50, top: 15),
    child: TextFormField(
      maxLines: 5,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        hintText: 'Write Anything',
        hintStyle: TextStyle(
          color: Colors.grey,
        ),
        border:
        OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
      ),
    ),);
}