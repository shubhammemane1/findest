import 'package:findest/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Color(0xff395185),
          accentColor: Color(0xfff7f7f7),
          textTheme: TextTheme(
            headline1: TextStyle(
              color: Color(0xff395185),
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
            headline2: TextStyle(
              color: Color(0xff395185),
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
            headline3: TextStyle(
              color: Colors.grey.shade500,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
            headline4: TextStyle(
              color: Colors.grey.shade500,
              fontWeight: FontWeight.bold,
              fontSize: 13,
            ),
          )),
      home: Home(),
    );
  }
}
