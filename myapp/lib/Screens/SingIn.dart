// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'ShowInfo.dart';
import 'package:myapp/Widgets/TextField.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final email = TextEditingController();
  final password = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    email.dispose();
    password.dispose();
    super.dispose();
  }

  _onPressed() {
    Get.to(const FourthScreen());
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
                const SizedBox(height: 100.0),
                Text(
                  'Insert your account',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.purple[900],
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 80.0),
                TextFormField(
                  controller: email,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                  ),
                ),
                const SizedBox(height: 50.0),
                TextFormField(
                  controller: password,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                  ),
                ),
                //const SizedBox(height: 30.0),
                //TextForm(context),
                const SizedBox(height: 70.0),
                Center(
                  child: SizedBox(
                    height: 60, //height of button
                    width: 160,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.purple[900]),
                        onPressed: () => _onPressed(),
                        child: const Text("Log in",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ))),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
