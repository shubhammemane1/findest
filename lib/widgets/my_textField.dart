import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hintText;

  MyTextField(this.hintText);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.headline3,
        border: UnderlineInputBorder(),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).primaryColor)),
      ),
    );
  }
}
