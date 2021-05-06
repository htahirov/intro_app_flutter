import 'package:flutter/material.dart';
import 'package:intro_app_flutter/screens/account_page.dart';
import 'package:intro_app_flutter/constants.dart';
import 'package:intro_app_flutter/extracts/extracted_choose_programming_language_container.dart';
import 'package:intro_app_flutter/extracts/extracted_appbar_back_iconbutton.dart';
import 'package:intro_app_flutter/extracts/extracted_button.dart';
import 'package:intro_app_flutter/extracts/extracted_textfield.dart';
import 'package:intro_app_flutter/extracts/extracted_section_container.dart';

class SoftwareName extends StatefulWidget {
  static const String id = "software_name";

  @override
  _SoftwareNameState createState() => _SoftwareNameState();
}

class _SoftwareNameState extends State<SoftwareName> {
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
                ExtractedSectionContainer(colorSection: Colors.grey.shade300),
                ExtractedSectionContainer(colorSection: Colors.grey.shade300),
                ExtractedSectionContainer(colorSection: Colors.black),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: kContainerDecoration,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Type software name below",
                      style: kTitleQuestionTextStyle,
                    ),
                    SizedBox(height: 20),
                    Text(
                      "You may type in a new name or choose below \nany of the suggested names from chips",
                      style: kSubTitleTextStyle,
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Software name",
                      style: TextStyle(color: Colors.grey),
                    ),
                    ExtractedTextField(),
                    SizedBox(height: 40),
                    Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: [
                        ExtractedChooseProgrammingLanguageContainer(
                            languageName: "Learnera"),
                        ExtractedChooseProgrammingLanguageContainer(
                            languageName: "My Teacher"),
                        ExtractedChooseProgrammingLanguageContainer(
                            languageName: "Coder Max"),
                        SizedBox(width: 20),
                        ExtractedChooseProgrammingLanguageContainer(
                            languageName: "Learning Doctor"),
                        ExtractedChooseProgrammingLanguageContainer(
                            languageName: "Master Softwu"),
                        ExtractedChooseProgrammingLanguageContainer(
                            languageName: "Soft Driver"),
                        ExtractedChooseProgrammingLanguageContainer(
                            languageName: "Other"),
                      ],
                    ),
                    Spacer(),
                    ExtractedButton(
                      buttonText: "Create Account",
                      onTap: () => print("Welcome!"),
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
