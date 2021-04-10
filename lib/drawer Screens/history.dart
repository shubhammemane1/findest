import 'package:findest/widgets/my_Elevated_Button.dart';
import 'package:flutter/material.dart';

class History extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var title = TextStyle(
      color: Colors.grey.shade500,
      fontWeight: FontWeight.bold,
      fontSize: 45,
    );
    var title1 = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 20,
    );
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              }),
          title: Text("Application history"),
        ),
        body: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),
              Text("OOPS!", style: title),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 20,
              ),
              Text("You have not applied any Jobs for last 60 days",
                  style: title1),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
