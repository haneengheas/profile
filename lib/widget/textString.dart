import 'package:flutter/material.dart';
Widget textString( String label ,String hint,double height){
  return
    Padding(
      padding: const EdgeInsets.only(right: 50, left: 15),
      child: TextField(
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(color: Colors.black, fontSize: 22),
          hintText: hint,
          hintStyle: TextStyle(
            height: height,
            color: Colors.grey,
          ),
        ),
      ),
    );
}