import 'package:flutter/material.dart';

class MyOutlineButton extends StatelessWidget {
  final String name;

  MyOutlineButton(this.name);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      child: Text(
        name,
        style: TextStyle(color: Color(0xff395185)),
      ),
      style: ButtonStyle(
        // shape: MaterialStateProperty.all(OutlinedBorder(side: )),
        overlayColor: MaterialStateProperty.all(
          Theme.of(context).primaryColor,
        ),
      ),
      onPressed: () {},
    );
  }
}
