import 'package:flutter/material.dart';
import 'card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffff9900),
          title: Text(
            'Restaurant Menu',
            style: TextStyle(fontSize: 22),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            MyCard(
              title: 'Meal',
              path: 'images/cake.jpg',
            ),
            MyCard(title: 'Pizza', path: 'images/pizza.png'),
            MyCard(title: 'Fries', path: 'images/fries.jpg')
          ],
        ),
      ),
    );
  }
}
