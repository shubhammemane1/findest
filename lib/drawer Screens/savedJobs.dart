import 'package:findest/widgets/my_Elevated_Button.dart';
import 'package:flutter/material.dart';

class SavedJobs extends StatelessWidget {
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
          title: Text("SEARCH FOR RECRUITMENT"),
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
              Text("NO SAVED JOBS!", style: title1),
              SizedBox(
                height: 20,
              ),
              Text("Tap on a star icon  against a job to  save it ",
                  style: title1),
              SizedBox(
                height: 30,
              ),
              MyElevatedButton("Start Searching", null),
            ],
          ),
        ),
      ),
    );
  }
}
