import 'package:flutter/material.dart';

class gender extends StatefulWidget {
  @override
  _genderState createState() => _genderState();
}
class _genderState extends State<gender> {
      String? dropdownValue ;
      var undropValue='null';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text('Gender',style: TextStyle(
            fontSize: 20,
          ),),
        ),
        DropdownButton<String>(
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
          items: <String>['male', 'female']
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