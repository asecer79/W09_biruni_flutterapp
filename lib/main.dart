import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dropdownbutton.dart';
import 'gesturepage.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: DropDownButtonPage(),);
  }
}
