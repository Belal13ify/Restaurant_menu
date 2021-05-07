import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  final String title;
  final String path;
  MyCard({this.title, this.path});
  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  List<String> items = ['1', '2', '3', '4', '5'];
  String selectedValue = '1';

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(45.0),
      ),
      margin: EdgeInsets.all(10),
      color: Color(0xffff9900),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                widget.path,
                width: 250,
                height: 200,
              ),
              Text(
                widget.title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          DropdownButton(
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
              }).toList())
        ],
      ),
    );
  }
}
