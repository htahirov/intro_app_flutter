import 'package:flutter/material.dart';

class ExtractedChooseProgrammingLanguageContainer extends StatefulWidget {
  final String languageName;
  ExtractedChooseProgrammingLanguageContainer({@required this.languageName});

  @override
  _ExtractedChooseProgrammingLanguageContainerState createState() =>
      _ExtractedChooseProgrammingLanguageContainerState();
}

class _ExtractedChooseProgrammingLanguageContainerState
    extends State<ExtractedChooseProgrammingLanguageContainer> {
  bool isChecked = false;

  void check() {
    isChecked = !isChecked;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          color: isChecked ? Colors.black87 : Colors.grey.shade100,
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            widget.languageName,
            style: TextStyle(
              fontSize: 18,
              color: isChecked ? Colors.white : null,
            ),
          ),
        ),
      ),
      onTap: () {
        setState(() {
          check();
        });
      },
    );
  }
}
