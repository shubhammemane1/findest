import 'package:findest/widgets/my_Elevated_Button.dart';
import 'package:flutter/material.dart';

class RecruitmentComm extends StatelessWidget {
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
          title: Text("Recruitment Communication"),
        ),
        body: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),
              Image.asset("assets/images/whhminisad@2x.png"),
              SizedBox(
                height: 20,
              ),
              Text("You Haven't Received any Messages ", style: title1),
              SizedBox(
                height: 20,
              ),
              Text("Something Went Wrong Please try again after sometimes",
                  style: Theme.of(context).textTheme.headline3),
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
