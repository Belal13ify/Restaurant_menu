import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  List<String> items = ['1', '2', '3', '4', '5'];
  String selectedValue = '1';

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
        value: selectedValue,
        onChanged: (val) {
          setState(() {
            selectedValue = val;
          });
        },
        items: items.map((item) {
          return DropdownMenuItem(
            child: Text(
              item,
              style: TextStyle(fontSize: 30),
            ),
            value: item,
          );
        }).toList());
  }
}
