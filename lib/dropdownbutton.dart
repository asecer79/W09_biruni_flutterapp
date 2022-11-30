import 'package:flutter/material.dart';

class DropDownButtonPage extends StatefulWidget {
  const DropDownButtonPage({super.key});

  @override
  State<DropDownButtonPage> createState() => _DropDownButtonPageState();
}

class _DropDownButtonPageState extends State<DropDownButtonPage> {
  var colorsText = ["red", "green", "blue"];
  var selectedColorText = "red";

  var color = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DropdownButton"),
      ),
      body: Center(
        child: Column(
          children: [
            DropdownButton<String>(
              value: selectedColorText,
              items: colorsText.map<DropdownMenuItem<String>>((colorText) {
                return DropdownMenuItem(
                    value: colorText, child: Text(colorText));
              }).toList(),
              onChanged: (newColor) {
                setState(() {
                  selectedColorText = newColor!;
                  if (selectedColorText == "red") {
                    color = Colors.red;
                  } else if (selectedColorText == "green") {
                    color = Colors.green;
                  } else {
                    color = Colors.blue;
                  }
                });
              },
            ),
            SizedBox(
                height: 150,
                width: 150,
                child: Container(
                  color: color,
                )),
          ],
        ),
      ),
    );
  }
}
