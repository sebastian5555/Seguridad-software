// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'FirstScreen.dart';
import 'package:myapp/Database/Database.dart';
import 'package:myapp/Database/Costumer.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);
  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late Note user1;

  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController username = new TextEditingController();
  TextEditingController age = new TextEditingController();
  TextEditingController phone = new TextEditingController();

  @override
  void initState() {
    super.initState();
    user1 = Note(
      email: email.text,
      password: password.text,
      username: username.text,
      age: age.text,
      phone: phone.text,
    );
  }

  Future refreshNote() async {
    user1 = await NotesDatabase.instance.create(user1);
    user1 = (await NotesDatabase.instance.readAllNotes()) as Note;
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    email.dispose();
    password.dispose();
    username.dispose();
    age.dispose();
    phone.dispose();
    super.dispose();
  }

  _onPressed() {
    Get.to(FirstScreen());
    refreshNote();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.purple[900],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 50.0),
                Text(
                  'Create an account',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.purple[900],
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 70.0),
                // TextFormField(
                //   controller: id,
                //   decoration: const InputDecoration(
                //     labelText: 'ID',
                //   ),
                // ),
                // const SizedBox(height: 35.0),
                TextFormField(
                  controller: email,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                  ),
                ),
                const SizedBox(height: 35.0),
                TextFormField(
                  controller: password,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                  ),
                ),
                const SizedBox(height: 35.0),
                TextFormField(
                  controller: username,
                  decoration: const InputDecoration(
                    labelText: 'Username',
                  ),
                ),
                const SizedBox(height: 35.0),
                TextFormField(
                  controller: age,
                  decoration: const InputDecoration(
                    labelText: 'Age',
                  ),
                ),
                const SizedBox(height: 35.0),
                TextFormField(
                  controller: phone,
                  decoration: const InputDecoration(
                    labelText: 'Phone number',
                  ),
                  // validator: (String? value) {
                  //   return (value != null && value.contains('@'))
                  //       ? 'Do not use the @ char.'
                  //       : null;
                  // },
                ),
                const SizedBox(height: 55.0),
                Center(
                  child: SizedBox(
                    height: 60, //height of button
                    width: 160,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.purple[900]),
                        onPressed: () => _onPressed(),
                        child: const Text("Save",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ))),
                  ),
                ),
                const SizedBox(
                  height: 35.0,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
