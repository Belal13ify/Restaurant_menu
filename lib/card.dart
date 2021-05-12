import 'package:flutter/material.dart';
import 'dropDown.dart';

class MyCard extends StatelessWidget {
  final String title;
  final String path;
  MyCard({this.title, this.path});

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
                path,
                width: 250,
                height: 200,
              ),
              Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          DropDown(),
        ],
      ),
    );
  }
}
