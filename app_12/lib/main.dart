   
import 'package:flutter/material.dart';
import '/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App 12 - Meu Perfil com Drawer Navigation',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}