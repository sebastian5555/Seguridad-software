// ignore: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// class accesorios extends StatelessWidget {
//   //String email, password, username, age, phone, id;
//   //accesorios({required this.email, required this.password, required this.username, required this.age, required this.id, required this.phone});
//   String text, hinttext;
//   accesorios({required this.text, required this.hinttext});

//   @override
Widget TextForm(BuildContext context) {
  //TextEditingController _email = TextEditingController(text: email);
  //TextEditingController _password = TextEditingController(text: password);
  //TextEditingController _username = TextEditingController(text: username);
  //TextEditingController _age = TextEditingController(text: age);
  //TextEditingController _phone = TextEditingController(text: phone);
  //TextEditingController _id = TextEditingController(text: id);
  // final _text = TextEditingController(text: text);
  // final _hinttext = TextEditingController(text: hinttext);

  return Column(
    children: <Widget>[
      TextFormField(
        decoration: const InputDecoration(
          hintText: 'hola',
          labelText: 'hola',
        ),
        validator: (String? value) {
          return (value != null && value.contains('@'))
              ? 'Do not use the @ char.'
              : null;
        },
      ),
    ],
  );
}
//}
