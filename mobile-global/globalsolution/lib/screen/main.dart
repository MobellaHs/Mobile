import 'package:flutter/material.dart';
import 'package:globalsolution/screen/themes/app_theme.dart';

import 'pages/login.page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme(),
      home: LoginPage(),
    );
  }
}
