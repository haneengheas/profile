import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
Widget customAppBar(String title) {
  return Container(
    height: 50,
    width: 200,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 25,
            )),
        Align(
          alignment: Alignment.center,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.view_headline_outlined,
              size: 25,
            ))
      ],
    ),
  );
}
