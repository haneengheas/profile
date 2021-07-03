import 'package:flutter/material.dart';

Widget invite (String text){
  return Row(
    children: [
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.add,
            color: Color.fromRGBO(106,149,165,1),
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