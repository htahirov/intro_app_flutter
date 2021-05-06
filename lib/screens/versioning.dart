import 'package:flutter/material.dart';
import 'package:intro_app_flutter/constants.dart';
import 'package:intro_app_flutter/extracts/extracted_appbar_back_iconbutton.dart';
import 'package:intro_app_flutter/extracts/extracted_button.dart';
import 'package:intro_app_flutter/extracts/extracted_radiolisttile.dart';
import 'package:intro_app_flutter/extracts/extracted_section_container.dart';
import 'package:intro_app_flutter/screens/software_name.dart';

class Versioning extends StatefulWidget {
  static const String id = "versioning";

  @override
  _VersioningState createState() => _VersioningState();
}

class _VersioningState extends State<Versioning> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
          backgroundColor: Colors.grey.shade200,
          elevation: 0,
          title: kTitleOfAppBarNewBusinessDetails,
          centerTitle: true,
          leading: ExtractedAppBarBackIconButton()),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ExtractedSectionContainer(colorSection: Colors.grey.shade300),
                ExtractedSectionContainer(colorSection: Colors.grey.shade300),
                ExtractedSectionContainer(colorSection: Colors.black),
                ExtractedSectionContainer(colorSection: Colors.grey.shade300),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: kContainerDecoration,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Which deployment type \ndoes it require?",
                      style: kTitleQuestionTextStyle,
                    ),
                    SizedBox(height: 15),
                    MergeSemantics(
                      child: ListTileTheme.merge(
                        contentPadding: EdgeInsets.only(left: 0),
                        child: Column(
                          children: [
                            ExtractedRadioListTile(
                              textTitle: "Manual",
                              textSubTitle:
                                  "Developers will manually compile and release version",
                              number: 1,
                            ),
                            Divider(height: 10),
                            ExtractedRadioListTile(
                              textTitle: "Automated Compiles",
                              textSubTitle:
                                  "Compilation script is included to prepare the binary. But deployment is manual",
                              number: 2,
                            ),
                            Divider(height: 10),
                            ExtractedRadioListTile(
                              textTitle: "Continues Delivery",
                              textSubTitle:
                                  "CI/CD pipelines compile from source code",
                              number: 3,
                            ),
                            Divider(height: 10),
                            ExtractedRadioListTile(
                              textTitle: "Planning",
                              textSubTitle: "Lorem ipsum some example text",
                              number: 4,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    ExtractedButton(
                      buttonText: "Next",
                      onTap: () {
                        Navigator.pushNamed(context, SoftwareName.id);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
