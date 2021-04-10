import 'package:findest/widgets/my_Elevated_Button.dart';
import 'package:findest/widgets/my_textField.dart';
import 'package:flutter/material.dart';

import 'city_fabriocation.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool checked = true;

  @override
  Widget build(BuildContext context) {
    var spacing = SizedBox(
      height: 16,
    );
    var text = TextStyle(
      color: Colors.grey.shade500,
      fontWeight: FontWeight.bold,
      fontSize: 15,
    );

    var hyperText = TextStyle(
      color: Color(0xff395185),
      fontWeight: FontWeight.bold,
      fontSize: 15,
    );
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      "assets/images/back_arrow@2x.png",
                      color: Color(0xff395185),
                      scale: 2,
                    ),
                  ),
                ),
                spacing,
                Text(
                  "CREATE YOUR FINDEST PROFILE",
                  style: Theme.of(context).textTheme.headline1,
                ),
                spacing,
                Text(
                  "SEARCH FOR THE NO 1  HUNTER!!",
                  style: Theme.of(context).textTheme.headline3,
                ),
                spacing,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            // shape: BoxShape.circle,
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(5)),
                        child: Image.asset(
                            "assets/images/flat-color-iconsgoogle.png")),
                    Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            // shape: BoxShape.circle,
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(5)),
                        child: Image.asset(
                          "assets/images/logosfacebook.png",
                          scale: 1.2,
                        )),
                  ],
                ),
                spacing,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    new Container(
                      height: 2,
                      width: 150,
                      color: Colors.grey,
                    ),
                    Text("OR"),
                    new Container(
                      height: 2,
                      width: 150,
                      color: Colors.grey,
                    ),
                  ],
                ),
                spacing,
                MyTextField('FULL NAME'),
                spacing,
                MyTextField("EMAIL ADDRESS"),
                spacing,
                MyTextField("CREATE PASSWORD"),
                spacing,
                MyTextField("MOBILE NUMBER"),
                spacing,
                Row(
                  children: [
                    Checkbox(
                      activeColor: Theme.of(context).primaryColor,
                      value: checked,
                      onChanged: (newvalue) {
                        setState(() {
                          checked = newvalue;
                        });
                      },
                    ),
                    Text(
                      "SEND ME NOTIFICATIONS VIA HOWSAPP",
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  ],
                ),
                spacing,
                spacing,
                Text(
                  "By Clicking register you agree to  Findest.com",
                  style: text,
                ),
                spacing,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Terms and Conditions ",
                      style: hyperText,
                    ),
                    Text(
                      "and",
                      style: text,
                    ),
                    Text(" privacy policy", style: hyperText),
                  ],
                ),
                spacing,
                spacing,
                spacing,
                Container(
                  width: 250,
                  child: MyElevatedButton("Register", Fabrication()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
