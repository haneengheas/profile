import 'package:flutter/material.dart';
import 'package:profile/views/profile/view.dart';
import 'package:profile/widget/customAppBar.dart';
import 'package:profile/widget/invite.dart';
import 'package:profile/widget/textArea.dart';
import 'package:profile/widget/textDate.dart';
import 'package:profile/widget/textString.dart';
class Task extends StatefulWidget {
  const Task({Key? key}) : super(key: key);

  @override
  _TaskState createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          customAppBar('New Task'),
          SizedBox(
            height: 25,
          ),
          textString('Task Name', 'Enter Task Name',2.5),
          SizedBox(height: 20),
          TextDate(label: 'Due Date Task',height: 2.5,),
          SizedBox(
            height: 25,
          ),
          Text(
            '   Task Description',
            style: TextStyle(fontSize: 22),
          ),
          textArea(),
          invite('Assign Employee'),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
            },
            child: Chip(label: Text('Create'),labelStyle: TextStyle(
                color: Colors.white,
                fontSize: 30
            ),
              backgroundColor: Color.fromRGBO(106,149,165,1),
              padding: EdgeInsets.only(left: 50,right: 50,top: 10,bottom: 10),
            ),
          )


        ],
      ),
    );
  }
}
