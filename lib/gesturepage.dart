//GESTURE

import 'package:flutter/material.dart';

class GesturePage extends StatefulWidget {
  const GesturePage({super.key});

  @override
  State<GesturePage> createState() => _GesturePageState();
}

class _GesturePageState extends State<GesturePage> {
  var gestureType = "Initial";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GestureDetector")),
      body: Center(
        child: GestureDetector(
          onLongPress: () {
            setState(() {
              gestureType = "onLongPress";
            });
          },
          onDoubleTap: () {
            //logic
            setState(() {
              gestureType = "onDoubleTap";
            });
          },
          child: Text(
            gestureType,
            style: TextStyle(fontSize: 32),
          ),
        ),
      ),
    );
  }
}
