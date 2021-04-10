import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  final String name;
  final Widget page;

  MyElevatedButton(this.name, this.page);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        name,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          Theme.of(context).primaryColor,
        ),
      ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (ctx) => page));
      },
    );
  }
}
