import 'package:flutter/material.dart';

class Experiencia extends StatelessWidget {
  const Experiencia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _titulo(),
      backgroundColor: Colors.white,
      body: _texto(),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("Experiencia"),
      centerTitle: true,
      backgroundColor: Colors.pink,
    );
  }

  _texto() {
    return Center(
        child: Text(
      "(18/2018-Present) Intership Marketing",
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.black, fontSize: 30.0),
    ));
  }
}// TODO Implement this library.