import 'package:findest/screens/preferences.dart';
import 'package:findest/widgets/my_Elevated_Button.dart';
import 'package:findest/widgets/my_textField.dart';
import 'package:flutter/material.dart';

class Key_Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "KEY SKILLS",
                style: Theme.of(context).textTheme.headline1,
              ),
              SizedBox(height: 30),
              Text(
                "TYPE YOUR SKILLS",
                style: Theme.of(context).textTheme.headline3,
              ),
              SizedBox(height: 40),
              MyTextField("E.g Sales , Marketing , BPO , INBOUND , OUTBOUND"),
              SizedBox(height: 40),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).primaryColor.withOpacity(0.5),
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.error,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: Text(
                    "Avoid typing keyword such as hardworking ,honesty,good writing skills",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ),
              ),
              SizedBox(height: 80),
              Center(
                child: Container(
                  width: 300,
                  child: MyElevatedButton('Next', Preferences()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
