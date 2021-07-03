import 'package:flutter/material.dart';

Widget textArea() {
  return Container(
    width: 50,
    height: 150,
    margin: EdgeInsets.only(left: 10, right: 50, top: 15),
    child: TextFormField(
      maxLines: 5,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        focusedBorder: const OutlineInputBorder(
          borderSide: const BorderSide(
              color: Color.fromRGBO(106, 149, 165, 1), width: 2.0,
              style: BorderStyle.solid
          ),
        ),
        hintText: 'Write Anything',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintStyle: TextStyle(
          color: Colors.grey,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
        ),
      ),
    ),
  );
}
