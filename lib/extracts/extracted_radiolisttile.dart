import 'package:flutter/material.dart';

class ExtractedRadioListTile extends StatefulWidget {
  final String textTitle;
  final String textSubTitle;
  final int number;
  ExtractedRadioListTile(
      {@required this.textTitle,
      @required this.textSubTitle,
      @required this.number});

  @override
  _ExtractedRadioListTileState createState() => _ExtractedRadioListTileState();
}

class _ExtractedRadioListTileState extends State<ExtractedRadioListTile> {
  int _radioValue;

  void _handleRadioValueChange(int value) {
    setState(() {
      _radioValue = value;

      switch (_radioValue) {
        case 1:
          print(_radioValue);
          break;
        case 2:
          break;
        case 3:
          break;
        case 4:
          break;
        case 5:
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      activeColor: Colors.black,
      title: Text(
        widget.textTitle,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(widget.textSubTitle),
      onChanged: _handleRadioValueChange,
      value: widget.number,
      groupValue: _radioValue,
    );
  }
}
