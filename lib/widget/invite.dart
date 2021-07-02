import 'package:flutter/material.dart';

Widget invite (String text){
  return Row(
    children: [
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.add,
            color: Colors.blueAccent,
          )),
      Text(
        text,
        style: TextStyle(
          fontSize: 22,
        ),
      )
    ],
  );
}