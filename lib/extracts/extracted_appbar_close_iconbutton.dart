import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ExtractedAppBarCloseIconButton extends StatelessWidget {
  const ExtractedAppBarCloseIconButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.close),
      onPressed: () {
        SystemNavigator.pop(animated: true);
      },
      color: Colors.black,
    );
  }
}
