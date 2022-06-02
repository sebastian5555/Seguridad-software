// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'SingIn.dart';
import 'SingUp.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  void initState() {
    super.initState();
  }

  _onPressed() {
    Get.to(const SecondScreen());
  }

  _onPressed2() {
    Get.to(const ThirdScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 120),
          Text("Register app!",
              style: TextStyle(
                color: Colors.purple[900],
                fontSize: 40,
                fontWeight: FontWeight.bold,
              )),
          const SizedBox(height: 130),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 60, //height of button
                width: 160, //width of button
                child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(primary: Colors.purple[500]),
                    onPressed: () => _onPressed(),
                    child: const Text("Sign in",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ))),
              )
            ],
          ),
          const SizedBox(height: 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 60, //height of button
                width: 160, //width of button
                child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(primary: Colors.purple[500]),
                    onPressed: () => _onPressed2(),
                    child: const Text("Sign up",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ))),
              )
            ],
          )
        ],
      ),
    );
  }
}
