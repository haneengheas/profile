import 'package:flutter/material.dart';
import 'package:profile/widget/customAppBar.dart';
import 'package:profile/widget/invite.dart';
import 'package:profile/widget/submit.dart';
import 'package:profile/widget/textArea.dart';
import 'package:profile/widget/textDate.dart';
import 'package:profile/widget/textString.dart';

class WorkSpace extends StatefulWidget {
  @override
  _WorkSpaceState createState() => _WorkSpaceState();
}

class _WorkSpaceState extends State<WorkSpace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          customAppBar('Create workshop'),
          SizedBox(
            height: 25,
          ),
          textString('Workspace Name', 'Enter Name WorkSpace',2.5),
          SizedBox(height: 20),
          TextDate(
            label: 'Due Date Workspace',
            height: 2.5,
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            '   WorkSpace Description',
            style: TextStyle(fontSize: 22),
          ),
          textArea(),
          invite('Invite Employee'),
          SizedBox(
            height: 20,
          ),
         Submit('Create')
        ],
      ),
    );
  }
}
