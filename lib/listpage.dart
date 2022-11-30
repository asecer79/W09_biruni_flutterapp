import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    var names = ["Aydın", "Ayşe", "Fatma", "Mehmet"];

    return Scaffold(
      appBar: AppBar(title: Text("ListPage")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index) {
            return Row(
              children: [
                Text("${index + 1}", style: TextStyle(fontSize: 24)),
                SizedBox(width: 15),
                Text("${names[index]}", style: TextStyle(fontSize: 24)),
                Spacer(),
                ElevatedButton(onPressed: () {}, child: Text("Buy"))
              ],
            );
          },
        ),
      ),
    );
  }

  ListView getFixedList() {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Text("data"),
        ListTile(
            onTap: () {
              //logic
            },
            leading: Icon(Icons.usb),
            title: Text("IPhone"),
            subtitle: Text("Phone")),
        ListTile(
            leading: Icon(Icons.usb),
            title: Text("Samsung"),
            subtitle: Text("Phone"))
      ],
    );
  }
}
