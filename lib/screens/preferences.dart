import 'package:findest/screens/profile.dart';
import 'package:findest/widgets/my_Elevated_Button.dart';
import 'package:findest/widgets/my_textField.dart';
import 'package:flutter/material.dart';

class Preferences extends StatefulWidget {
  @override
  _PreferencesState createState() => _PreferencesState();
}

class _PreferencesState extends State<Preferences> {
  bool active = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "YOR WORK PREFERENCES",
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                "PREFERRRED WORK LOCATION",
                style: Theme.of(context).textTheme.headline3,
              ),
              Row(
                children: [
                  Chip(
                    backgroundColor:
                        Theme.of(context).primaryColor.withOpacity(0.5),
                    label: Text("Chennai"),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Chip(
                    backgroundColor:
                        Theme.of(context).primaryColor.withOpacity(0.5),
                    label: Text("kolkata"),
                  )
                ],
              ),
              Text(
                "PREFERRRED SALARY",
                style: Theme.of(context).textTheme.headline3,
              ),
              SizedBox(height: 50),
              ListTile(
                title: Text(
                  'Dollor',
                ),
                leading: Radio(
                  value: active,
                  groupValue: true,
                  activeColor: active ? Color(0xFF6200EE) : Colors.grey,
                  onChanged: (value) {
                    setState(() {
                      active = true;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text(
                  'Rupees',
                ),
                leading: Radio(
                  value: active,
                  groupValue: true,
                  activeColor: Color(0xFF6200EE),
                  onChanged: (value) {
                    setState(() {
                      active = false;
                    });
                  },
                ),
              ),
              MyTextField("20,000"),
              Text(
                'Per Year',
                style: Theme.of(context).textTheme.headline3,
              ),
              Container(
                width: 300,
                child: MyElevatedButton('NEXT', Profile()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
