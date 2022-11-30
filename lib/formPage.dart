import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  var formKey = GlobalKey<FormState>();

  var txtName = TextEditingController();
  var txtAge = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FormPage")),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
            child: Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: txtName,
                      decoration: InputDecoration(hintText: "Name"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Name cannot be empt";
                        }
                      },
                    ),
                    TextFormField(
                      controller: txtAge,
                      decoration: InputDecoration(hintText: "Age"),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            var name = txtName.text;
                            var age = txtAge.text;
                            bool isvalid = formKey.currentState!.validate();
                            if (isvalid) {
                              print(name);
                              print(age);
                            }
                          });
                        },
                        child: Text("Save"))
                  ],
                ))),
      ),
    );
  }
}
