import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = Color.fromARGB(255, 24, 255, 121);
const lightColor = const Color(0xFFFFFFFF);
const backgroundColor = Color.fromARGB(237, 245, 245, 245);

ThemeData AppTheme() {
  return ThemeData(
    brightness: brightness,
    primaryColor: primaryColor,
    accentColor: primaryColor,
    fontFamily: 'Montserrat',
    buttonColor: Color.fromARGB(255, 4, 231, 106),
    cardColor: Colors.white,
  );
}
