import 'package:flutter/material.dart';

class department extends StatefulWidget {
  @override
  _departmentState createState() => _departmentState();
}
class _departmentState extends State<department> {
  String? dropdownValue ;
  var undropValue='null';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text('User Type',style: TextStyle(
            fontSize: 20,
          ),),
        ),
        DropdownButton<String>(
          hint: Text('manger'),
          value: dropdownValue,
          underline: Container(
            width: 30,
            height: 1,
            color: Colors.grey,
          ),
          onChanged: (newValue) {
            setState(() {
              dropdownValue=newValue!;
            });
          },
          items: <String>['manger', 'employee']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: SizedBox(
                width: 100.0, // for example
                child: Text(value, textAlign: TextAlign.left),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}