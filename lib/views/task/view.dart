import 'package:flutter/material.dart';
import 'package:profile/widget/customAppBar.dart';
import 'package:profile/widget/invite.dart';
import 'package:profile/widget/submit.dart';
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
          textString('Task Name', 'Enter Task Name'),
          SizedBox(height: 20),
          TextDate(label: 'Due Date Task'),
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
          submit('Create'),


        ],
      ),
    );
  }
}
