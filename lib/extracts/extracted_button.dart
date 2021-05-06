import 'package:flutter/material.dart';

class ExtractedButton extends StatelessWidget {
  final String buttonText;
  final Function onTap;
  ExtractedButton({@required this.buttonText, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        textColor: Colors.white,
        color: Colors.black87,
        child: Text(buttonText),
        onPressed: onTap,
      ),
    );
  }
}
