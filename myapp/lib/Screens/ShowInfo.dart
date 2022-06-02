// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'SingUp.dart';
import 'Info.dart';

class FourthScreen extends StatefulWidget {
  const FourthScreen({Key? key}) : super(key: key);
  @override
  _FourthScreenState createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  _onPressed1() {
    Get.to(InfoScreen());
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
                const SizedBox(height: 70.0),
                Text(
                  '¡Click the button to see your information!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.purple[900],
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 130.0,
                ),
                Center(
                  child: SizedBox(
                    height: 100, //height of button
                    width: 160,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.purple[900]),
                        onPressed: () => _onPressed1(),
                        child: const Text("Show info",
                            textAlign: TextAlign.center,
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
