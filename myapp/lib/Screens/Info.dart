// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'FirstScreen.dart';
import 'SingUp.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({Key? key}) : super(key: key);
  @override
  _InfoScreenState createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
  }

  _onPressed1() {}
  _onPressed() {
    Get.to(FirstScreen());
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
                  '¡Your info!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.purple[900],
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                Center(
                  child: SizedBox(
                    height: 50, //height of button
                    width: 200,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.purple[900]),
                        onPressed: () => _onPressed1(),
                        child: const Text("1",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ))),
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                Center(
                  child: SizedBox(
                    height: 50, //height of button
                    width: 200,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.purple[900]),
                        onPressed: () => _onPressed1(),
                        child: const Text("2",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ))),
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                Center(
                  child: SizedBox(
                    height: 50, //height of button
                    width: 200,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.purple[900]),
                        onPressed: () => _onPressed1(),
                        child: const Text("3",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ))),
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                Center(
                  child: SizedBox(
                    height: 50, //height of button
                    width: 200,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.purple[900]),
                        onPressed: () => _onPressed1(),
                        child: const Text("4",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ))),
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                Center(
                  child: SizedBox(
                    height: 50, //height of button
                    width: 200,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.purple[900]),
                        onPressed: () => _onPressed1(),
                        child: const Text("5",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ))),
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                Center(
                  child: SizedBox(
                    height: 50, //height of button
                    width: 200,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.purple[900]),
                        onPressed: () => _onPressed1(),
                        child: const Text("6",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ))),
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                Center(
                  child: SizedBox(
                    height: 100, //height of button
                    width: 500,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.purple[500]),
                        onPressed: () => _onPressed(),
                        child: const Text("Go back and try again!",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ))),
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
