import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesPage extends StatefulWidget {
  const SharedPreferencesPage({super.key});

  @override
  State<SharedPreferencesPage> createState() => _SharedPreferencesPageState();
}

class _SharedPreferencesPageState extends State<SharedPreferencesPage> {
  var txtUserName = TextEditingController();
  var txtPassword = TextEditingController();
  var isRememberMe = false;

  Future<void> saveInfo(
      String userName, String password, bool rememberMe) async {
    var sp = await SharedPreferences.getInstance();
    sp.setString("userName", userName);
    sp.setString("password", password);
    sp.setBool("rememberMe", rememberMe);
  }

  Future<void> getInfo() async {
    var sp = await SharedPreferences.getInstance();

    setState(() {
      txtUserName.text = sp.getString("userName") ?? "";
      txtPassword.text = sp.getString("password") ?? "";
      isRememberMe = sp.getBool("rememberMe") ?? false;
    });
  }

  Future<void> deleteInfo() async {
    var sp = await SharedPreferences.getInstance();
    sp.remove("userName");
    sp.remove("password");
    sp.remove("rememberMe");
  }

  @override
  void initState() {
    super.initState();

    getInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SharedPreferencesPage")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              TextFormField(
                  controller: txtUserName,
                  decoration: InputDecoration(hintText: "User Name")),
              TextFormField(
                  controller: txtPassword,
                  decoration: InputDecoration(hintText: "Password")),
              Checkbox(
                value: isRememberMe,
                onChanged: (value) {
                  setState(() {
                    isRememberMe = value!;
                  });
                },
              ),
              ElevatedButton(
                  onPressed: () async {
                    if (isRememberMe) {
                      await saveInfo(
                          txtUserName.text, txtPassword.text, isRememberMe);
                    } else {
                      await deleteInfo();
                    }
                  },
                  child: Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}
