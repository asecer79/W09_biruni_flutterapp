import 'package:flutter/material.dart';

class SnackBarPage extends StatefulWidget {
  const SnackBarPage({super.key});

  @override
  State<SnackBarPage> createState() => _SnackBarPageState();
}

class _SnackBarPageState extends State<SnackBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Snack Bar")),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  //logic
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Success"),
                      duration: Duration(seconds: 2),
                    ),
                  );
                },
                child: Text("Save")),
            ElevatedButton(
                onPressed: () {
                  //logic
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Colors.amber,
                      elevation: 15,
                      content: Text("Are you sure"),
                      duration: Duration(seconds: 10),
                      action: SnackBarAction(
                        label: "Yes",
                        onPressed: () {
                          //.....logic...
                        },
                      ),
                    ),
                  );
                },
                child: Text("Delete"))
          ],
        ),
      ),
    );
  }
}
