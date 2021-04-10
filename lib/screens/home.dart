import 'package:findest/screens/signup.dart';
import 'package:findest/widgets/my_Elevated_Button.dart';
import 'package:findest/widgets/my_Outline_Button.dart';
import 'package:findest/widgets/my_textField.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                "assets/images/Logo.png",
                scale: 3,
              ),
              Image.asset(
                "assets/images/name.png",
                scale: 3,
              ),
              Text(
                "No 1 Job Hunter!!",
                style: Theme.of(context).textTheme.headline2,
              ),
              MyTextField('search'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyElevatedButton("Register", SignUp()),
                  MyOutlineButton("Login"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
