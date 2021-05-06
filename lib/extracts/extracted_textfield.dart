import 'package:flutter/material.dart';

class ExtractedTextField extends StatelessWidget {
  const ExtractedTextField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Colors.black, fontSize: 17),
      cursorColor: Colors.black,
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
