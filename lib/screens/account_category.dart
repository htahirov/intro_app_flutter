import 'package:flutter/material.dart';
import 'package:intro_app_flutter/constants.dart';
import 'package:intro_app_flutter/extracts/extracted_appbar_back_iconbutton.dart';
import 'package:intro_app_flutter/extracts/extracted_button.dart';
import 'package:intro_app_flutter/extracts/extracted_radiolisttile.dart';
import 'package:intro_app_flutter/extracts/extracted_section_container.dart';
import 'package:intro_app_flutter/screens/versioning.dart';

class AccountCategory extends StatefulWidget {
  static const id = "account_category";

  @override
  _AccountCategoryState createState() => _AccountCategoryState();
}

class _AccountCategoryState extends State<AccountCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        elevation: 0,
        title: kTitleOfAppBarNewAccountDetails,
        centerTitle: true,
        leading: ExtractedAppBarBackIconButton(),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ExtractedSectionContainer(colorSection: Colors.grey.shade300),
                ExtractedSectionContainer(colorSection: Colors.black),
                ExtractedSectionContainer(colorSection: Colors.grey.shade300),
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
                      "What kind of software type \nis it?",
                      style: kTitleQuestionTextStyle,
                    ),
                    MergeSemantics(
                      child: ListTileTheme.merge(
                        contentPadding: EdgeInsets.only(left: 0),
                        child: Column(
                          children: [
                            ExtractedRadioListTile(
                              textTitle: "Desktop Application",
                              textSubTitle: "Desktop app for Windows and MAC",
                              number: 1,
                            ),
                            Divider(height: 10),
                            ExtractedRadioListTile(
                              textTitle: "Mobile Application",
                              textSubTitle:
                                  "Native application for Android and IOS",
                              number: 2,
                            ),
                            Divider(height: 10),
                            ExtractedRadioListTile(
                              textTitle: "Web Frontend Application",
                              textSubTitle:
                                  "Written with React, Vue and Angular",
                              number: 3,
                            ),
                            Divider(height: 10),
                            ExtractedRadioListTile(
                              textTitle: "Backend API",
                              textSubTitle: "RESTful JSON application",
                              number: 4,
                            ),
                            Divider(height: 10),
                            ExtractedRadioListTile(
                              textTitle: "Server Side Rendering",
                              textSubTitle:
                                  "A monolith application rendering content from server directly to client browsers",
                              number: 5,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    ExtractedButton(
                      buttonText: "Next",
                      onTap: () => Navigator.pushNamed(context, Versioning.id),
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
