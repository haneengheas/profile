import 'package:flutter/material.dart';
import 'package:profile/views/task/view.dart';
class Submit extends StatelessWidget {
  String text;
  Submit(
      this.text,
      );
  @override
  Widget build(BuildContext context) {
    return
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Task()));
          },
          child: Chip(label: Text(text),labelStyle: TextStyle(
              color: Colors.white,
              fontSize: 30
          ),
            backgroundColor: Color.fromRGBO(106,149,165,1),
            padding: EdgeInsets.only(left: 50,right: 50,top: 10,bottom: 10),
          ),
        );
  }
}

Widget submit (String text ,Color x){
  return  GestureDetector(
    onTap: (){
    },
    child: Chip(label: Text(text),labelStyle: TextStyle(
        color: Colors.white,
        fontSize: 30
    ),
      backgroundColor: x,
      padding: EdgeInsets.only(left: 55,right: 50,top: 5,bottom: 5),
    ),
  );
}