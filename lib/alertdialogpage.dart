import 'package:flutter/material.dart';

class AlertDialogPage extends StatefulWidget {
  const AlertDialogPage({super.key});

  @override
  State<AlertDialogPage> createState() => _AlertDialogPageState();
}

class _AlertDialogPageState extends State<AlertDialogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Alert Dialog")),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: ((context) {
                      return AlertDialog(
                        title: Text("Are you sure?"),
                        content: Text("Record Will be deleted..."),
                        actions: [
                          ElevatedButton(
                              onPressed: () {
//logic
                                print("Deleted");
                                Navigator.pop(context);
                              },
                              child: Text("Delete")),
                          ElevatedButton(
                              onPressed: () {
                                print("Cancelled");
                                Navigator.pop(context);
                              },
                              child: Text("Cancel"))
                        ],
                      );
                    }));
              },
              child: Text("Delete"))
        ],
      )),
    );
  }
}
