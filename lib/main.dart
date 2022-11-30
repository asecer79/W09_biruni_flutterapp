import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/alertdialogpage.dart';
import 'package:flutter_application_1/listpage.dart';
import 'package:flutter_application_1/popupmenu.dart';
import 'package:flutter_application_1/sharedpreferencespage.dart';
import 'package:flutter_application_1/snackbarpage.dart';

import 'dropdownbutton.dart';
import 'formPage.dart';
import 'gesturepage.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SharedPreferencesPage(),
    );
  }
}
