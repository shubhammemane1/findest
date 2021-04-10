import 'package:findest/screens/education_Details.dart';
import 'package:findest/widgets/my_Elevated_Button.dart';
import 'package:findest/widgets/my_textField.dart';
import 'package:flutter/material.dart';

class Fabrication extends StatefulWidget {
  @override
  _FabricationState createState() => _FabricationState();
}

class _FabricationState extends State<Fabrication> {
  bool active = false;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    var activeText = TextStyle(
      color: Theme.of(context).accentColor,
      fontWeight: FontWeight.bold,
      fontSize: 20,
    );
    var activesubText = TextStyle(
      color: Theme.of(context).accentColor,
      fontWeight: FontWeight.w800,
      fontSize: 10,
    );
    var inactiveText = TextStyle(
      color: Theme.of(context).primaryColor,
      fontWeight: FontWeight.bold,
      fontSize: 20,
    );
    var inactivesubText = TextStyle(
      color: Theme.of(context).primaryColor,
      fontWeight: FontWeight.w800,
      fontSize: 10,
    );
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Let's Fabrocate your profile".toUpperCase(),
                style: Theme.of(context).textTheme.headline1,
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    active = true;
                  });
                },
                child: Container(
                  width: screenWidth - 50,
                  height: screenHeight / 7.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Theme.of(context).primaryColor),
                  child: Card(
                    color: active
                        ? Theme.of(context).primaryColor
                        : Theme.of(context).accentColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "STUDENT/NEVER WORKED BEFORE",
                          style: active ? activeText : inactiveText,
                        ),
                        Text(
                          "i.e Fresh Graduates , Graduarte having no work",
                          style: active ? activesubText : inactivesubText,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    active = false;
                  });
                },
                child: Container(
                  width: screenWidth - 50,
                  height: screenHeight / 7.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Theme.of(context).primaryColor),
                  child: Card(
                    borderOnForeground: true,
                    color: active
                        ? Theme.of(context).accentColor
                        : Theme.of(context).primaryColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WORKING/HAVE WORKED BEFORE",
                          style: active ? inactiveText : activeText,
                        ),
                        Text(
                          "i.e working / worked in an organisation , agency , company or bussiness",
                          style: active ? inactivesubText : activesubText,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "CURRENT CITY",
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              MyTextField("ADD CITY"),
              SizedBox(
                height: 80,
              ),
              Container(
                width: screenWidth - 50,
                child: MyElevatedButton('Next', EducationDetails()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
