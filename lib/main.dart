import 'package:flutter/material.dart';
import 'package:intro_app_flutter/screens/account_category.dart';
import 'package:intro_app_flutter/screens/account_page.dart';
import 'package:intro_app_flutter/screens/software_name.dart';
import 'package:intro_app_flutter/screens/versioning.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AccountPage.id,
      routes: {
        AccountPage.id: (context) => AccountPage(),
        AccountCategory.id: (context) => AccountCategory(),
        Versioning.id: (context) => Versioning(),
        SoftwareName.id: (context) => SoftwareName(),
      },
    );
  }
}
