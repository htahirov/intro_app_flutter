import 'package:flutter/material.dart';

class ExtractedSectionContainer extends StatelessWidget {
  final Color colorSection;
  ExtractedSectionContainer({@required this.colorSection});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: 80,
      decoration: BoxDecoration(
        color: colorSection,
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }
}
