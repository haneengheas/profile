import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class TextDate extends StatefulWidget {
  final String label;
  const TextDate({Key? key, required this.label}) : super(key: key);

  @override
  _TextDateState createState() => _TextDateState();
}

class _TextDateState extends State<TextDate> {
  TextEditingController dateinput = TextEditingController();
  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 50, left: 15),
      child: TextField(
        controller: dateinput,
        decoration: InputDecoration(
          //contentPadding: EdgeInsets.all(15),
          labelText: widget.label,
          labelStyle: TextStyle(color: Colors.black, fontSize: 22),
          hintText: 'pick up date',
          hintStyle: TextStyle(
            height: 2.5,
            color: Colors.grey,
          ),
          suffixIcon: IconButton(
              onPressed: () async {
                DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2101));
                if (pickedDate != null) {
                  print(pickedDate);
                  String formattedDate =
                  DateFormat('dd-MM-yyyy').format(pickedDate);
                  print(formattedDate);
                  setState(() {
                    dateinput.text = formattedDate;
                  });
                } else {
                  print("Date is not selected");
                }
              },
              icon: Icon(
                Icons.date_range_rounded,
                color: Colors.grey,
              )),
        ),
      ),
    );
  }
}
