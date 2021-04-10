import 'package:findest/widgets/my_Elevated_Button.dart';
import 'package:findest/widgets/my_textField.dart';
import 'package:flutter/material.dart';

class JobSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var space = SizedBox(
      height: 20,
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
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "KEY SKILLS , DESIGNATIONS , COMPANIES",
                  style: Theme.of(context).textTheme.headline1,
                ),
                space,
                Text(
                  "TYPE YOUR SKILLS",
                  style: Theme.of(context).textTheme.headline3,
                ),
                space,
                MyTextField(
                  "Eg . Sales , Marketing , BPO , Inbound, OutBound",
                ),
                space,
                MyTextField(
                  "Locations",
                ),
                space,
                Center(
                  child: Container(
                    width: 300,
                    child: MyElevatedButton("Search", null),
                  ),
                ),
                space,
                Text(
                  "RECRUIT IN COMPANIES",
                  style: Theme.of(context).textTheme.headline1,
                ),
                space,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
