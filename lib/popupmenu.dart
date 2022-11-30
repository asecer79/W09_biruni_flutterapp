import 'package:flutter/material.dart';

class PopupMenuPage extends StatefulWidget {
  const PopupMenuPage({super.key});

  @override
  State<PopupMenuPage> createState() => _PopupMenuPageState();
}

class _PopupMenuPageState extends State<PopupMenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("PopupMenu")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
            child: Column(
          children: [
            Row(
              children: [
                Text("Ali", style: TextStyle(fontSize: 24)),
                Spacer(),
                PopupMenuButton(
                  icon: Icon(Icons.settings),
                  itemBuilder: (context) {
                    return [
                      PopupMenuItem(
                        child: Text("Delete"),
                        onTap: () {
                          //logic
                        },
                      ),
                      PopupMenuItem(
                        child: Text("Send"),
                        onTap: () {
                          //logic
                        },
                      )
                    ];
                  },
                )
              ],
            ),
            Row(
              children: [Text("Address", style: TextStyle(fontSize: 24))],
            )
          ],
        )),
      ),
    );
  }
}
