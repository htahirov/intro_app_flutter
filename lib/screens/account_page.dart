import 'package:flutter/material.dart';
import 'package:intro_app_flutter/screens/account_category.dart';
import 'package:intro_app_flutter/constants.dart';
import 'package:intro_app_flutter/extracts/extracted_choose_programming_language_container.dart';
import 'package:intro_app_flutter/extracts/extracted_appbar_close_iconbutton.dart';
import 'package:intro_app_flutter/extracts/extracted_button.dart';
import 'package:intro_app_flutter/extracts/extracted_textfield.dart';
import 'package:intro_app_flutter/extracts/extracted_section_container.dart';

class AccountPage extends StatefulWidget {
  static const id = "account_page";

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
          backgroundColor: Colors.grey.shade200,
          elevation: 0,
          title: kTitleOfAppBarNewAccountDetails,
          centerTitle: true,
          leading: ExtractedAppBarCloseIconButton()),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ExtractedSectionContainer(colorSection: Colors.black),
                ExtractedSectionContainer(colorSection: Colors.grey.shade300),
                ExtractedSectionContainer(colorSection: Colors.grey.shade300),
                ExtractedSectionContainer(colorSection: Colors.grey.shade300),
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
                      "What language does it use?",
                      style: kTitleQuestionTextStyle,
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Please choose any programming language or technology below. You may type in the names manually as well.",
                      style: kSubTitleTextStyle,
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Activity category",
                      style: TextStyle(color: Colors.grey),
                    ),
                    ExtractedTextField(),
                    SizedBox(height: 40),
                    Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: [
                        ExtractedChooseProgrammingLanguageContainer(
                            languageName: "Java"),
                        ExtractedChooseProgrammingLanguageContainer(
                            languageName: "Python"),
                        ExtractedChooseProgrammingLanguageContainer(
                            languageName: "ASP.NET Core"),
                        SizedBox(width: 20),
                        ExtractedChooseProgrammingLanguageContainer(
                            languageName: "Dart"),
                        ExtractedChooseProgrammingLanguageContainer(
                            languageName: "Spring Boot"),
                        ExtractedChooseProgrammingLanguageContainer(
                            languageName: "React.js"),
                      ],
                    ),
                    Spacer(),
                    ExtractedButton(
                      buttonText: "Next",
                      onTap: () =>
                          Navigator.pushNamed(context, AccountCategory.id),
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
